[General]
RunMode         =  mu
EnergyFile      =  FeAs2.optic.hdf5
OutputFile      =  output.mu.hdf5
BFieldMode      =  F
Interband       =  T
Intraband       =  T
Boltzmann       =  T
QuadResponse    =  T

[MuMode]
[[Scattering]]
Temperature = 300.0
MuMinimum = -6.0
MuMaximum = 6.0
MuPoints  = 2000
ScatteringRate       = 1e-5
QuasiParticleWeight  = 1.0
