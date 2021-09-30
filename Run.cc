#include "Run.hh"
#include "DetectorConstruction.hh"
#include "PrimaryGeneratorAction.hh"
#include "HistoManager.hh"

#include "G4SystemOfUnits.hh"
#include "G4Threading.hh" 
#include "G4UnitsTable.hh"
#include "G4PhysicalConstants.hh"


// mutex in a file scope

namespace {
  //Mutex to lock updating the global ion map
  G4Mutex ionIdMapMutex = G4MUTEX_INITIALIZER;
}

std::map<G4String,G4int> Run::fgIonMap;
G4int Run::fgIonId = kHisto;

Run::Run(DetectorConstruction* det)
: G4Run(),
  fDetector(det), fParticle(nullptr), fEkin(0.)
{
  fEnergyDeposit = 0.;
}

Run::~Run()
{ }

void Run::Merge(std::map<G4String, ParticleData>& destinationMap,           //Merge maps : check if particle already have in 2 maps then merge
                const std::map<G4String, ParticleData>& sourceMap) const
{
  for ( const auto& particleData : sourceMap ) {
    G4String name = particleData.first;
    const ParticleData& localData = particleData.second;   
    if ( destinationMap.find(name) == destinationMap.end()) {
      destinationMap[name]
       = ParticleData(localData.fCount, 
                      localData.fEmean, 
                      localData.fEmin, 
                      localData.fEmax,
                      localData.fTmean);
    }
    else {
      ParticleData& data = destinationMap[name];   
      data.fCount += localData.fCount;
      data.fEmean += localData.fEmean;
      G4double emin = localData.fEmin;
      if (emin < data.fEmin) data.fEmin = emin;
      G4double emax = localData.fEmax;
      if (emax > data.fEmax) data.fEmax = emax;
      data.fTmean = localData.fTmean;
    }   
  }
}

void Run::SetPrimary(G4ParticleDefinition* particle, G4double energy)
{ 
  fParticle = particle;
  fEkin = energy;
}

void Run::CountProcesses(const G4VProcess* process) 
{
  G4String procName = process->GetProcessName();
  std::map<G4String,G4int>::iterator it = fProcCounter.find(procName);
  if ( it == fProcCounter.end()) {
    fProcCounter[procName] = 1;
  }
  else {
    fProcCounter[procName]++; 
  }
}
                  
void Run::ParticleCount(G4String name, G4double Ekin, G4double meanLife)
{
  std::map<G4String, ParticleData>::iterator it = fParticleDataMap.find(name);
  if ( it == fParticleDataMap.end()) {
    fParticleDataMap[name] = ParticleData(1, Ekin, Ekin, Ekin, meanLife);  //not found
  }
  else {                                                                    //found
    ParticleData& data = it->second;
    data.fCount++;
    data.fEmean += Ekin;
    //update min max
    G4double emin = data.fEmin;
    if (Ekin < emin) data.fEmin = Ekin;
    G4double emax = data.fEmax;
    if (Ekin > emax) data.fEmax = Ekin;
    data.fTmean = meanLife;
  }   
}
                 
void Run::AddEdep(G4double edep)
{ 
  fEnergyDeposit += edep;
}

G4int Run::GetIonId(G4String ionName)
{
   G4AutoLock lock(&ionIdMapMutex);
      // updating the global ion map needs to be locked

   std::map<G4String,G4int>::const_iterator it = fgIonMap.find(ionName);
   if ( it == fgIonMap.end()) {
     fgIonMap[ionName] = fgIonId;
     if (fgIonId < (kHisto - 1)) fgIonId++;
   }
   return fgIonMap[ionName];
}

void Run::Merge(const G4Run* run)
{
  const Run* localRun = static_cast<const Run*>(run);
  
  //primary particle info
  //
  fParticle = localRun->fParticle;
  fEkin     = localRun->fEkin;
  
  // accumulate sums
  //
  fEnergyDeposit   += localRun->fEnergyDeposit;

  //map: processes count
  for ( const auto& procCounter : localRun->fProcCounter ) {  //check count
    G4String procName = procCounter.first;
    G4int localCount = procCounter.second;
    if ( fProcCounter.find(procName) == fProcCounter.end()) {
      fProcCounter[procName] = localCount;
    }
    else {
      fProcCounter[procName] += localCount;
    }  
  }
  
  //map: created particles count local
  Merge(fParticleDataMap, localRun->fParticleDataMap);    
  
  G4Run::Merge(run); 
} 

void Run::EndOfRun() 
{
  G4int prec = 5, wid = prec + 2;  
  G4int dfprec = G4cout.precision(prec);
/*  
  //run condition
  //
  G4Material* material = fDetector->GetAbsorMaterial();
  G4double density = material->GetDensity();
   
  G4String Particle = fParticle->GetParticleName();    
  G4cout << "\n The run is " << numberOfEvent << " "<< Particle << " of "
         << G4BestUnit(fEkin,"Energy") << " through " 
         << G4BestUnit(fDetector->GetAbsorThickness(),"Length") << " of "
         << material->GetName() << " (density: " 
         << G4BestUnit(density,"Volumic Mass") << ")" << G4endl;

  if (numberOfEvent == 0) { G4cout.precision(dfprec);   return;}
             
*/ //frequency of processes
  //
  G4cout << "\n Process calls frequency :" << G4endl;
  G4int index = 0;
  for ( const auto& procCounter : fProcCounter ) {
     G4String procName = procCounter.first;
     G4int    count    = procCounter.second;
  }
  
  //particles count
  //
  G4cout << "\n List of generated particles:" << G4endl;
     
 for ( const auto& particleData : fParticleDataMap ) {
    G4String name = particleData.first;
    ParticleData data = particleData.second;
    G4int count = data.fCount;
    G4double eMean = data.fEmean/count;
    G4double eMin = data.fEmin;
    G4double eMax = data.fEmax;
    G4double meanLife = data.fTmean;
    

    G4cout << "  " << std::setw(13) << name << ": " << std::setw(7) << count
           << "  Emean = " << std::setw(wid) << G4BestUnit(eMean, "Energy")
           << "\t( "  << G4BestUnit(eMin, "Energy")
           << " --> " << G4BestUnit(eMax, "Energy") << ")";
    if (meanLife >= 0.)
      G4cout << "\tmean life = " << G4BestUnit(meanLife, "Time")   << G4endl;
    else G4cout << "\tstable" << G4endl;
 }   
 
 //histogram Id for populations
 //
 G4cout << "\n histo Id for populations :" << G4endl;

 // Update the histogram titles according to the ion map
 // and print new titles
 G4AnalysisManager* analysisManager = G4AnalysisManager::Instance();
 for ( const auto& ionMapElement : fgIonMap ) {
    G4String ionName = ionMapElement.first;
    G4int    h1Id   = ionMapElement.second;
    // print new titles
    G4cout << " " << std::setw(20) << ionName << "  id = "<< std::setw(3) << h1Id
           << G4endl;

    // update histogram ids
    if ( ! analysisManager->GetH1(h1Id) ) continue;
       // Skip inactive histograms, this is not necessary 
       // but it  makes the code safe wrt modifications in future 
    G4String title = analysisManager->GetH1Title(h1Id);
    title = ionName + title;
    analysisManager->SetH1Title(h1Id, title);
 } 
 G4cout << G4endl;
  
  //remove all contents in fProcCounter, fCount 
  fProcCounter.clear();
  fParticleDataMap.clear();;
  fgIonMap.clear();
                          
  //restore default format         
  G4cout.precision(dfprec);   
}
