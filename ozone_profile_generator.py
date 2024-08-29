import numpy as np

#Ozone profile generator for PlaSim

output_file= 'N032_level_0237_Control-NOspe-Dec.sra'

#Populate the longitude array
longitude= np.linspace(180, -180, 64)

latitude = [85.8, 80.3, 74.7, 69.2, 63.7, 58.1, 52.6, 47.1, 41.5, 36.0, 30.5, 24.9,
            19.4, 13.8, 8.3, 2.8, -2.8, -8.3, -13.8, -19.4, -24.9, -30.5, -36.0,
            -41.5, -47.1, -52.6, -58.1, -63.7, -69.2, -74.7, -80.3, -85.8]

altitude = [30.519, 20.291, 16.291, 13.574, 11.455, 9.687, 8.161, 6.817, 5.622,
            4.556, 3.607, 2.768, 2.035, 1.407, 0.886, 0.478, 0.191, 0.040]

#O2 quantity for altitude values selected from https://www.ngdc.noaa.gov/stp/space-weather/online-publications/miscellaneous/us-standard-atmosphere-1976/us-standard-atmosphere_st76-1562_noaa.pdf

O2 = [1.6929e-2, 8.3383e-2, 1.5882e-1, 2.4263e-1, 3.3743e-1, 4.2905e-1, 5.1904e-1,
      6.0356e-1, 6.8987e-1, 7.7290e-1, 8.5445e-1, 9.3287e-1, 1.0015, 1.0687, 1.1226,
      1.1673, 1.2017, 1.2191]

Ozone = np.zeros(64)

#create profile

with open(output_file, 'w') as f:
    for z in range(12):
        if z == 0:
            # January
            Z1a= 3.5;
            Z1b=-8;
            Z1c=40;
            Z1d=-24;
            Z1e=5;

            Z3a=6;
            Z3b=55;
            Z3c=60;
            Z3d=-22;
            Z3e=9;

            Z2a=7.5;
            Z2b=-90;
            Z2c=60;
            Z2d=-18;
            Z2e=9;
        elif z == 1:
            # February
            Z1a= 3;
            Z1b=-2;
            Z1c=40;
            Z1d=-25;
            Z1e=5;

            Z2a=8;
            Z2b=-90;
            Z2c=60;
            Z2d=-20;
            Z2e=9;

            Z3a=5.8;
            Z3b=60;
            Z3c=60;
            Z3d=-22;
            Z3e=9;

        elif z == 2:
            # March
            Z1a= 2.5;
            Z1b=-2;
            Z1c=40;
            Z1d=-25;
            Z1e=5;

            Z2a=8;
            Z2b=-90;
            Z2c=60;
            Z2d=-20;
            Z2e=9;

            Z3a=5;
            Z3b=55;
            Z3c=55;
            Z3d=-20;
            Z3e=9;
        elif z == 3:
            # April
            Z1a= 3;
            Z1b=40;
            Z1c=60;
            Z1d=-29;
            Z1e=3;

            Z2a=7.5;
            Z2b=-90;
            Z2c=60;
            Z2d=-20;
            Z2e=9;

            Z3a=4.3;
            Z3b=80;
            Z3c=85;
            Z3d=-22;
            Z3e=9;
        elif z == 4:
            # May
            Z1a= 3;
            Z1b=0;
            Z1c=40;
            Z1d=-30;
            Z1e=5;

            Z2a=7;
            Z2b=-80;
            Z2c=75;
            Z2d=-22;
            Z2e=9;

            Z3a=7.1;
            Z3b=95;
            Z3c=75;
            Z3d=-22;
            Z3e=9;
        elif z == 5:
            # June
            Z1a= 3.5;
            Z1b=-11;
            Z1c=40;
            Z1d=-30;
            Z1e=5;

            Z2a=7;
            Z2b=-70;
            Z2c=60;
            Z2d=-22;
            Z2e=9;

            Z3a=7.6;
            Z3b=90;
            Z3c=85;
            Z3d=-21;
            Z3e=9;
        elif z == 6:
            # July
            Z1a= 2.5;
            Z1b=10;
            Z1c=40;
            Z1d=-30;
            Z1e=5;

            Z2a=5.2;
            Z2b=-50;
            Z2c=60;
            Z2d=-22;
            Z2e=9;

            Z3a=7.3;
            Z3b=90;
            Z3c=85;
            Z3d=-21;
            Z3e=9;
        elif z == 7:
            # August
            Z1a= 3.5;
            Z1b=8;
            Z1c=80;
            Z1d=-30;
            Z1e=5;

            Z2a=5.1;
            Z2b=-50;
            Z2c=60;
            Z2d=-20;
            Z2e=9;

            Z3a=7.5;
            Z3b=100;
            Z3c=85;
            Z3d=-20;
            Z3e=9;
        elif z == 8:
            # September
            Z1a= 3.5;
            Z1b=0;
            Z1c=80;
            Z1d=-30;
            Z1e=5;

            Z2a=5.1;
            Z2b=-55;
            Z2c=60;
            Z2d=-20;
            Z2e=9;

            Z3a=9;
            Z3b=100;
            Z3c=85;
            Z3d=-20;
            Z3e=9;
        elif z == 9:
            # October
            Z1a= 3;
            Z1b=3.5;
            Z1c=80;
            Z1d=-30;
            Z1e=5;

            Z2a=5.5;
            Z2b=-90;
            Z2c=90;
            Z2d=-23;
            Z2e=9;

            Z3a=9;
            Z3b=110;
            Z3c=85;
            Z3d=-23;
            Z3e=9;
        elif z == 10:
            # November
            Z1a= 2.5;
            Z1b=5;
            Z1c=80;
            Z1d=-28;
            Z1e=5;

            Z2a=5.5;
            Z2b=-90;
            Z2c=90;
            Z2d=-21;
            Z2e=9;

            Z3a=7.2;
            Z3b=110;
            Z3c=85;
            Z3d=-21;
            Z3e=9;
        elif z == 11:
            # December
            Z1a= 2;
            Z1b=-3;
            Z1c=40;
            Z1d=-29;
            Z1e=5;

            Z2a=7.5;
            Z2b=-90;
            Z2c=60;
            Z2d=-20;
            Z2e=9;

            Z3a=4.5;
            Z3b=70;
            Z3c=85;
            Z3d=-22;
            Z3e=9;
        #237 is the option on PlaSim, the second number is the altitude level, the third number is the month, all in 64 longitudes and 32 latitudes
        for i in range(len(altitude)):
            if z in range(9):

                if i in range(9):
                    f.write('       237         {:d}         {:d}         0        64        32         0         0\n'.format(i + 1, z + 1))
                else:
                    f.write('       237        {:d}         {:d}        0        64        32         0         0\n'.format(i + 1, z + 1))

            else:

                if i in range(9):
                    f.write('       237         {:d}        {:d}         0        64        32         0         0\n'.format(i + 1, z + 1))
                else:
                    f.write('       237        {:d}        {:d}        0        64        32         0         0\n'.format(i + 1, z + 1))

            for j in range (len(latitude)):

                ozone_values= [] #array used for formatting

                for k in range (len(longitude)):
                    Ozone[k] = ((Z1a * (np.exp(-((latitude[j] + Z1b) / Z1c)**2 - ((altitude[i] + Z1d) / Z1e)**2)) +
                                Z2a * (np.exp(-((latitude[j] + Z2b) / Z2c)**2 - ((altitude[i] + Z2d) / Z2e)**2)) +
                                Z3a * (np.exp(-((latitude[j] + Z3b) / Z3c)**2 - ((altitude[i] + Z3d) / Z3e)**2))) * (7.9734e-8)) / O2[i] #kg/kg conversion

                    ozone_values.append(Ozone[k])

                for index, value in enumerate(ozone_values):
                    #enumerate creates a tuple of both value and index of the ozone_value array
                    f.write(' {:.3E}'.format(value))
                    #format prints what is included in the value section of the tuple created by enumerate
                    if (index + 1) % 8 == 0:
                        #if the number of values in a row is not a multiple of 8 it changes row
                        f.write('\n')
