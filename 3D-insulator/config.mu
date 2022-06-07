[General]
RunMode         =  mu
EnergyFile      =  3D-2band-sym.hdf5
OutputFile      =  muscan.hdf5
QuadResponse    =  T
BFieldMode      =  T
Interband       =  F
Intraband       =  T
Boltzmann       =  T

[MuMode]
[[Scattering]]
Temperature = 50
MuMinimum = -2.0
MuMaximum = 2.0
MuPoints  = 2001
ScatteringRate       = 0.01
QuasiParticleWeight  = 1.0
