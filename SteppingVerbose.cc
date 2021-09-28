#include "SteppingVerbose.hh"

#include "G4SteppingManager.hh"
#include "G4ParticleTypes.hh"
#include "G4UnitsTable.hh"


SteppingVerbose::SteppingVerbose()
 : G4SteppingVerbose()
{ }

SteppingVerbose::~SteppingVerbose()
{}

void SteppingVerbose::StepInfo()
{ 
  const G4VProcess* process 
                      = fStep->GetPostStepPoint()->GetProcessDefinedStep();
  G4String procName = " UserLimit";
  if (process) procName = process->GetProcessName();
  if (fStepStatus == fWorldBoundary) procName = "OutOfWorld";
  G4cout << "   " << std::setw(10) << procName;
  G4cout << G4endl;

  if (verboseLevel == 2) 
  {
      const std::vector<const G4Track*>* secondary 
                                    = fStep->GetSecondaryInCurrentStep();
      size_t nbtrk = (*secondary).size();
      if (nbtrk)
      {
        G4cout << "\n    :----- List of secondaries ----------------" << G4endl;
        G4cout.precision(4);
        for (size_t lp=0; lp<(*secondary).size(); lp++) {
          G4cout << "   "
                 << std::setw(13)                 
                 << (*secondary)[lp]->GetDefinition()->GetParticleName()
                 << ":  energy ="
                 << std::setw(6)
                 << G4BestUnit((*secondary)[lp]->GetKineticEnergy(),"Energy")
                 << "  time ="
                 << std::setw(6)
                 << G4BestUnit((*secondary)[lp]->GetGlobalTime(),"Time");
          G4cout << G4endl;
        }
              
        G4cout << "    :------------------------------------------\n" << G4endl;
      }
  }

  G4cout.precision(4);
}