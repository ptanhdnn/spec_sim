#include "EventAction.hh"
#include "HistoManager.hh"
#include "Run.hh"

#include "G4Event.hh"
#include "G4RunManager.hh"

#include <iomanip>

EventAction::EventAction()
:G4UserEventAction(), fTotalEnergyDeposit(0.)
{
  // Set default print level 
  G4RunManager::GetRunManager()->SetPrintProgress(10000);
}

EventAction::~EventAction()
{}

void EventAction::BeginOfEventAction(const G4Event*)
{
  fTotalEnergyDeposit = 0.;
  G4int fcount = 0;
}

void EventAction::AddEdep(G4double Edep)
{
  fTotalEnergyDeposit += Edep;
}

void EventAction::AddCount()
{
  fcount += 1;
}

void EventAction::EndOfEventAction(const G4Event*)
{
  Run* run = static_cast<Run*>(
             G4RunManager::GetRunManager()->GetNonConstCurrentRun());
                          

  auto *man = G4AnalysisManager::Instance();
  man->FillNtupleDColumn(0,fTotalEnergyDeposit);
  man->FillNtupleDColumn(1,fcount);
  man->AddNtupleRow();

  fTotalEnergyDeposit = 0.;
}