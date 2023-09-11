# LinReTraCe examples

Please refer to [LinReTraCe](https://github.com/LinReTraCe/LinReTraCe) for a detailed program description. This repository contains the necessary input and config files to reproduce the test cases' data in [arxiv:2206.06097](https://arxiv.org/abs/2206.06097). Please note that due to storage limitations the prepared files here contain a coarser momentum mesh. For the model systems considered, prepare the energy files with the number of k-points specified in the publication.
The DFT calculations provided here contain only $10 \times 10 \times 20$ (FeAs2 - PBE) and $8 \times 8 \times 8$ (Tl-doped PbTe - PBE) k-points. With the available WIEN2k structure files, band-structure calculations using the momentum mesh specified in the publication can be performed and used as input.
Please note that I also included a similar FeAs2 calculation (mBJ) in Wannier90 format (the DFT and Wannier90 calculations are not comparable due to the vastly different band gaps).
The following pre-processing interfaces have been to produce the provided LinReTraCe energy files.

### 2D-metal
```
ltb 2D-1band.tbdata 120 120 1 1.2 --output 2D-1band.hdf5
```

### 3D-insulator
```
ltb 3D-2band-sym.tbdata 60 60 60 2 --output 3D-2band-sym.hdf5
```

```
ltb 3D-2band-asym.tbdata 60 60 60 2 --output 3D-2band-asym.hdf5
```

### Honeycomb
```
ltb honeycomb.tbdata 120 120 1 2 --output honeycomb.hdf5
```

### FeAs2
```
ldft FeAs2 --optic --output FeAs2.optic.hdf5
```

```
ldft FeAs2 --interp 5 --output FeAs2.peierls.hdf5
```

```
lwann FeAs2_wann --output FeAs2.wann90.hdf5
```

### Tl-doped PbTe
```
ldft PbTe --interp 5 --output PbTe.hdf5
```

## Handling
The provided energy files can be inspected via
```
lprint <energy file> info
lprint <energy file> dos -p
lprint <energy file> path
```

LinReTraCe calculations can then be run with
```
linretrace <config.lrtc>
```
where config.lrtc is the provided configuration file of the respective test case.

