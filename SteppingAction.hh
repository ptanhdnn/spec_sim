#ifndef STEPPINGACTION_HH
#define STEPPINGACTION_HH

#include "G4UserSteppingAction.hh"
#include "globals.hh"

class DetectorConstruction;
class EventAction;

class SteppingAction : public G4UserSteppingAction
{
  public:
    SteppingAction(DetectorConstruction*,EventAction*);
   ~SteppingAction();

    virtual void UserSteppingAction(const G4Step*);
    
  private:
    DetectorConstruction* fDetector;
    EventAction*         fEventAction;    
};

#endif
