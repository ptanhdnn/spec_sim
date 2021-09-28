#ifndef ACTIONINITIALIZATION_HH
#define ACTIONINITIALIZATION_HH

#include "G4VUserActionInitialization.hh"

class DetectorConstruction;
class G4VSteppingVerbose;

/// Action initialization class.
///

class ActionInitialization : public G4VUserActionInitialization
{
  public:
    ActionInitialization(DetectorConstruction* detector);
    virtual ~ActionInitialization();

    virtual void Build() const;
    
    virtual G4VSteppingVerbose* InitializeSteppingVerbose() const;
   
  private:
    DetectorConstruction* fDetector;
};

#endif
