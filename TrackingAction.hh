#ifndef TRACKINGACTION_HH
#define TRACKINGACTION_HH

#include "G4UserTrackingAction.hh"
#include "globals.hh"

class EventAction;

class TrackingAction : public G4UserTrackingAction {

  public:  
    TrackingAction(EventAction*);
   ~TrackingAction();

    virtual void  PreUserTrackingAction(const G4Track*);   
    virtual void  PostUserTrackingAction(const G4Track*);

  private:
    EventAction*        fEventAction;

    G4double fTimeBirth,  fTimeEnd;
};

#endif
