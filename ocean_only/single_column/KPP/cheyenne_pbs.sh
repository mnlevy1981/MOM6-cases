#!/bin/bash
### Job Name
#PBS -N KPP
#PBS -A P93300606
#PBS -l walltime=00:30:00
#PBS -q regular
#PBS -j oe
### Select 1 node with 1 CPUs
#PBS -l select=1:ncpus=1:mpiprocs=1
### Send email on abort and end
#PBS -m ae
#PBS -M mlevy@ucar.edu

### Run the executable
mpiexec_mpt dplace -s 1 ../../../build/intel/ocean_only/repro/MOM6
