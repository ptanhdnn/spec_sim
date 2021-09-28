#ifndef RUNACTION_HH
#define RUNACTION_HH

#include "G4UserRunAction.hh"
#include "globals.hh"

class DetectorConstruction;
class Run;
class PrimaryGeneratorAction;
class HistoManager;

class RunAction : public G4UserRunAction
{
  public:
    RunAction(PrimaryGeneratorAction*);
   ~RunAction();

  public:
    virtual G4Run* GenerateRun();  
    virtual void   BeginOfRunAction(const G4Run*);
    virtual void   EndOfRunAction(const G4Run*);
                            
  private:
    DetectorConstruction*      fDetector;
    PrimaryGeneratorAction*    fPrimary;
    Run*                       fRun;    
    HistoManager*              fHistoManager;
        
};

#endif
