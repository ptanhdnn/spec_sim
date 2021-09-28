#ifndef HISTOMANAGER_HH
#define HISTOMANAGER_HH

#include "globals.hh"
#include <map>


#include "g4csv.hh"
//#include "g4root.hh"

const G4int kMaxHisto = 10;

class HistoManager
{
  public:
   HistoManager();
  ~HistoManager();

  private:
    void Book();

private:
    G4String fFileName;
};

#endif
