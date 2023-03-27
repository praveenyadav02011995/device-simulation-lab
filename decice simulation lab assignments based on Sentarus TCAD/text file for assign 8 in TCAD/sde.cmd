File{
   Grid      = "NNEW_msh.tdr"
    Plot     = "@tdrdat@"
   Current   = "@plot@"
   Output    = "@log@"
}

Electrode{
   { Name="A"    Voltage=0.0 }
   { Name="B"    Voltage=0.0 }
}

Physics{

   Fermi
   EffectiveIntrinsicDensity( OldSlotboom )     
   
   
         
}

Plot{

   eDensity hDensity
   TotalCurrent/Vector eCurrent/Vector hCurrent/Vector
   eQuasiFermi hQuasiFermi
   eMobility hMobility

   ElectricField/Vector Potential SpaceCharge

   Doping DonorConcentration AcceptorConcentration

   BandGap
   ConductionBand ValenceBand
}

Math {
   Extrapolate
   RelErrControl
   Digits = 5
   Iterations= 20
   Notdamped= 100
   Method= Pardiso

}

Solve {

   
   Coupled(Iterations=100){ Poisson }
   Coupled{ Poisson Electron Hole }
   
   NewCurrentPrefix="IV_@node@"
   Quasistationary(
      InitialStep=1e-3 MinStep=1e-4 MaxStep=0.05
      Goal{ Name="A" Voltage= 1 }
   ) { Coupled { Poisson Electron Hole } }
   NewCurrentPrefix="IV_@node@"
   Quasistationary(
      InitialStep=1e-3 MinStep=1e-4 MaxStep=0.05
      Goal{ Name="A" Voltage= -1 }
   ) { Coupled { Poisson Electron Hole } }
}


