#include "TrackingAction.hh"

#include "HistoManager.hh"
#include "Run.hh"
#include "EventAction.hh"

#include "G4Track.hh"
#include "G4ParticleTypes.hh"
#include "G4IonTable.hh"
#include "G4RunManager.hh"

#include "G4SystemOfUnits.hh"
#include "G4UnitsTable.hh"

TrackingAction::TrackingAction(EventAction* event)
:G4UserTrackingAction(),fEventAction(event) 
{
  fTimeBirth = fTimeEnd = 0.;
}

TrackingAction::~TrackingAction()
{}

void TrackingAction::PreUserTrackingAction(const G4Track* track)
{
  Run* run 
   = static_cast<Run*>(G4RunManager::GetRunManager()->GetNonConstCurrentRun());
         
  G4ParticleDefinition* particle = track->GetDefinition();
  G4String name   = particle->GetParticleName();
  G4double meanLife = particle->GetPDGLifeTime();
  G4double Ekin = track->GetKineticEnergy();
  G4int ID      = track->GetTrackID();
  fTimeBirth    = track->GetGlobalTime();
  if (ID > 1) run->ParticleCount(name, Ekin, meanLife);
}

void TrackingAction::PostUserTrackingAction(const G4Track* track)
{
  Run* run = static_cast<Run*>(
       G4RunManager::GetRunManager()->GetNonConstCurrentRun());
  
  G4AnalysisManager* analysis = G4AnalysisManager::Instance();
  
  const G4ParticleDefinition* particle = track->GetParticleDefinition();
  G4String name     = particle->GetParticleName();
  G4double meanLife = particle->GetPDGLifeTime();
  G4double ekin     = track->GetKineticEnergy();
  fTimeEnd         = track->GetGlobalTime();

  if ((particle->GetPDGStable())&&(Ekin == 0.)) fTimeEnd = DBL_MAX;

  //count population of ions with meanLife > 0.
  if ((G4IonTable::IsIon(particle))&&(meanLife != 0.))
  {
    G4int id = run->GetIonId(name);
    analysis->FillH1(id, Ekin);
  }
 G4StepStatus status = track->GetStep()->GetPostStepPoint()->GetStepStatus();
 if (status != fWorldBoundary) return; 

// histograms

  G4int ih;

  G4String type = particle->GetParticleType();
  G4double charge = particle->GetPDGLCharge();

  if (charge > 3.) {ih = 9}
  else if (particle == G4Gamma::Gamma())        ih = 4;
  else if (particle == G4Electron::Electron()||
           particle == G4Positron::Positron())  ih = 5;
  else if (particle == G4Neutron::Neutron())    ih = 6;
  else if (particle == G4Proton::Proton())      ih = 7;
  else if (particle == G4Alpha::Alpha())        ih = 8;

  if (ih) analysis->FillH1(ih, Ekin);
}
