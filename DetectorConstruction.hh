#ifndef DETECTORCONSTRUCTION_HH
#define DETECTORCONSTRUCTION_HH

#include "G4VUserDetectorConstruction.hh"
#include "globals.hh"

class DetectorConstruction : public G4VUserDetectorConstruction
{
  public:
  
    DetectorConstruction();
   ~DetectorConstruction();

    virtual     
    G4VPhysicalVolume* Construct();
    void ConstructScintillator();
                        
    G4double GetWorldSize() {return fWorldSize;};
    G4LogicalVolume *logicWorld;

  private:
  
    G4double fWorldSize;
};

#endif
