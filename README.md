# LinReTraCe examples

Please refer to [LinReTraCe](https://github.com/LinReTraCe/LinReTraCe) for a detailed program description. This repository contains the necessary input and config files to reproduce the data in [arxiv:2112.07604](https://arxiv.org/abs/2112.07604). We used the following pre-processing interfaces to produce the stored energy files.

### 2D-metal
```
ltb 2D-1band.tbdata 100 100 1 1.2 --output 2D-1band.hdf5
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
ltb honeycomb.tbdata 60 60 1 2 --output honeycomb.hdf5
```

### FeAs2
```
ldft FeAs2 --optic --output FeAs2.optic.hdf5
```

```
ldft FeAs2 --interp 5 --output FeAs2.peierls.hdf5
```

### PbTe
```
ldft PbTe --interp 5 --output PbTe.hdf5
```

The provided energy files can be inspected via
```
lprint <energy file> info
lprint <energy file> dos -p
lprint <energy file> path
```
