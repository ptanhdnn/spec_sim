#ifndef STEPPINGVERBOSE_HH
#define STEPPINGVERBOSE_HH

#include "G4SteppingVerbose.hh"

class SteppingVerbose : public G4SteppingVerbose {

public:   

  SteppingVerbose();
 ~SteppingVerbose();
 
  virtual void TrackingStarted();
  virtual void StepInfo();
};

#endif
