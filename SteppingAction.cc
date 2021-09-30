#include "SteppingAction.hh"
#include "DetectorConstruction.hh"
#include "Run.hh"
#include "EventAction.hh"
#include "HistoManager.hh"

#include "G4RunManager.hh"

SteppingAction::SteppingAction(DetectorConstruction* det, EventAction* event)
: G4UserSteppingAction(), fDetector(det), fEventAction(event)
{ }

SteppingAction::~SteppingAction()
{ }

void SteppingAction::UserSteppingAction(const G4Step* aStep)
{
  // count processes
  // 
  const G4StepPoint* endPoint = aStep->GetPostStepPoint();
  const G4VProcess* process   = endPoint->GetProcessDefinedStep();
  Run* run = static_cast<Run*>(
        G4RunManager::GetRunManager()->GetNonConstCurrentRun());
  run->CountProcesses(process);
  
  // energy deposit
  //
  G4double edepStep = aStep->GetTotalEnergyDeposit();
  if (edepStep <= 0.) return; 
  fEventAction->AddEdep(edepStep);
  G4AnalysisManager* analysisManager = G4AnalysisManager::Instance();
//  for (const auto& datacount : run->CountProcesses2(process).begin())
  {
//    analysisManager->FillH1(2, datacount.second, edepStep);
  } 
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
