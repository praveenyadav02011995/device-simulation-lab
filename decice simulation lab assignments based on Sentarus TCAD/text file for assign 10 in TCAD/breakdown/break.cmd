*#define _vbr_ 100
*#define _Ibr_ 1e-14

File{
   Grid      = "pnjun_msh.tdr"
    Plot     = "@tdrdat@"
   Current   = "@plot@"
   Output    = "@log@"
   *Param= "models.par"
}

Electrode{
   { Name="A"    Voltage=0.0 }
   { Name="B"    Voltage=0.0 }
}

Physics{

    Fermi
    EffectiveIntrinsicDensity( OldSlotboom) 
    Mobility(
    DopingDep
    Highfieldsaturation( GradQuasiFermi ) ) 

   Recombination(
     SRH  
     Avalanche
  
  )
	
   
   
         
}

Plot{

   eDensity hDensity
   TotalCurrent/Vector eCurrent/Vector hCurrent/Vector
   eQuasiFermi hQuasiFermi

   ElectricField/Vector Potential SpaceCharge

   Doping DonorConcentration AcceptorConcentration

   AvalancheGeneration eAvalancheGeneration hAvalancheGeneration
   eAlphaAvalanche hAlphaAvalanche

   BandGap
   ConductionBand ValenceBand
}


Math {
   Extrapolate
   RelErrControl
   Digits = 5
   Iterations= 12
   Notdamped= 100
   Method= Pardiso
   *ErrRef(Electron)=1.e10
   *ErrRef(Hole)=1.e10
   *RefDens_eGradQuasiFermi_ElectricField= 1e16
   *RefDens_hGradQuasiFermi_ElectricField= 1e16
   BreakCriteria{ Current(Contact="B" AbsVal=1e-14) } 

}

Solve {

   
   Coupled(Iterations=100) { Poisson }
*LineSearchDamping = 1e-4)
   Coupled{ Poisson Electron Hole }
   
   NewCurrentPrefix="BV_ABA"
   Quasistationary(
      InitialStep=1e-3 Increment = 1.41 MinStep=1e-5 MaxStep=0.5
      Goal{ Name="B" Voltage= 25 }
   ) { Coupled { Poisson Electron Hole } }

}

