#ifndef EVENTACTION_HH
#define EVENTACTION_HH

#include "G4UserEventAction.hh"
#include "globals.hh"

class EventAction : public G4UserEventAction
{
  public:
    EventAction();
   ~EventAction();

  public:
    virtual void   BeginOfEventAction(const G4Event*);
    virtual void   EndOfEventAction(const G4Event*);
    
    void AddEdep (G4double Edep);
    void AddCount();
                
  private:
    G4double fTotalEnergyDeposit;
    G4double fTotalEnergyFlow;   
    G4int fcount;
};

#endif
