# CVmix single column tests

## Summary of configurations

### mech_only

ICs: Linear thermal stratification, constant salinity, u*

Forcing: constant u*, zero wind stress, zero buoyancy forcing

### wind_only

ICs: Linear thermal stratification, constant salinity, u*

Forcing: zero background u*, constant wind stress, zero buoyancy forcing

### skin_warming_wind

ICs: Isothermal stratification, constant salinity, u*

Forcing: zero background u*, constant wind stress, constant warming surface heat flux

### cvmix_double_diffusion

* diffusive_convection (cold and fresh water over warm and salty water)

ICs: the top layer is 100 m deep and homogeneous (constant salinity and potential temperature); the bottom layer is linearly stratified (dT/dz = -0.01 and dS/dz = 0.01)

Forcing: none

* salt_fingering (warm and salty water over cold and fresh water)

ICs: the top layer is 100 m deep and homogeneous (constant salinity and potential temperature); the bottom layer is linearly stratified (dT/dz = 5e-4 and dS/dz = 1e-4)

Forcing: none

### cvmix_convection

* convection_due_to_cooling

ICs: stable water column, with dT/dz = 0.01 and S = 35

Forcing: sensible heat loss of 100 W/m^2

* unstable_initial_conditions

ICs: the top layer is 100 m deep and unstable, with dT/dz = -0.01; bottom layer is stable, with dT/dz = 0.01; S = 35 everywhere

Forcing: none

### constant_KD

ICs: T(z) = 1 for z > -200 m and T(z) = 0 for z <= -200 m

Forcing: none

## Directory structure

```
.
|-- common_BML          - Reused files for all bulk mixed-layer tests
|-- common_EPBL         - Reused files for all energetic planetary boundary layer tests
|-- common_KPP          - Reused files for all CVmix KPP tests
|-- cooling_only
|   |-- BML
|   |-- EPBL
|   `-- KPP
|-- mech_only
|   |-- BML
|   |-- EPBL
|   `-- KPP
|-- skin_warming_wind
|   |-- BML
|   |-- EPBL
|   `-- KPP
`-- wind_only
    |-- BML
    |-- EPBL
    `-- KPP
```
