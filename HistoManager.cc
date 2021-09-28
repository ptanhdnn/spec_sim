#include "HistoManager.hh"
#include "G4UnitsTable.hh"

HistoManager::HistoManager()
  : fFileName("rdecay01")
{
  Book();
}

HistoManager::~HistoManager()
{
  delete G4AnalysisManager::Instance();
}

void HistoManager::Book()
{
  // Create or get analysis manager
  // The choice of analysis technology is done via selection of a namespace
  // in HistoManager.hh
  G4AnalysisManager* analysisManager = G4AnalysisManager::Instance();
  analysisManager->SetFileName(fFileName);
  analysisManager->SetVerboseLevel(1);
  analysisManager->SetActivation(true);     //enable inactivation of histograms
  
  // Define histograms start values
  const G4int kMaxHisto = 10;
  const G4String id[] = {"0","1","2","3","4","5","6","7","8","9"};
  const G4String title[] = 
        {"dummy",                                                        //0
         "total energy deposit",                                         //1
         "count per energy spectrum",                                    //2
         "total kinetic energy emerging",                                //3
         "energy spectrum of emerging gamma",                            //4
         "energy spectrum of emerging e+-",                              //5
         "energy spectrum of emerging neutrons",                         //6
         "energy spectrum of emerging protons",                          //7
         "energy spectrum of emerging alphas",                           //8
         "energy spectrum of all other emerging ions"                    //9
       };
    /*
          { "dummy",                                    //0
            "energy spectrum (%): e+ e-",               //1
            "energy spectrum (%): nu_e anti_nu_e",      //2
            "energy spectrum (%): gamma",               //3
            "energy spectrum (%): alpha",               //4
            "energy spectrum (%): ions",                //5
            "total kinetic energy per single decay (Q)",//6
            "momentum balance",                         //7
            "total time of life of decay chain",        //8
            "total visible energy in decay chain"       //9
          };
    */

  // Default values (to be reset via /analysis/h1/set command)               
  G4int nbins = 100;
  G4double vmin = 0.;
  G4double vmax = 100.;

  // Create all histograms as inactivated 
  // as we have not yet set nbins, vmin, vmax
  for (G4int k=0; k<kMaxHisto; k++) {
    G4int ih = analysisManager->CreateH1(id[k], title[k], nbins, vmin, vmax);
    analysisManager->SetH1Activation(ih, false);
  }
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
