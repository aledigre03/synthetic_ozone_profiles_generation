# synthetic_ozone_profiles_generation
This repository contains my work on the creation of syntethic ozone profiles to be used in the software PlaSim. 


Files description:
-integral.m calculates the values of the concentration of ozone in a standard ozone profile in Dbson units
-sigmaP.m calculates the values of the sigma pressure using the barometric equation
-snapshots.m are profiles created for each month of the yeaar based on reconstrutictions performed by a chemistry model
-ozone_profile_generator.py creates a file formatted for PlaSim
-N032_level_0237_Control-NOspe-DecAle.sra is an example of output from ozone_profile_generator.py
