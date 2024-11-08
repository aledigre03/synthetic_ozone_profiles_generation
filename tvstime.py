import netCDF4 as nc
import numpy as np
import matplotlib.pyplot as plt

# Open the netCDF file

file_path1 = 'AlessandroO3_poles400_14lev.nc'
file_path2 = 'AlessandroO3_midaltitudehigh200_14lev.nc'

dataset1 = nc.Dataset(file_path1)
dataset2 = nc.Dataset(file_path2)



# Extract the variables

time1 = dataset1.variables['time'][:]

lat1 = dataset1.variables['lat'][:]

lon1 = dataset1.variables['lon'][:]

temp1 = dataset1.variables['ts'][:]

time2 = dataset2.variables['time'][:]

lat2 = dataset2.variables['lat'][:]

lon2 = dataset2.variables['lon'][:]

temp2 = dataset2.variables['ts'][:]



# Calculate the weights for each latitude

weights1 = np.cos(np.deg2rad(lat1))

weights1 = weights1 / weights1.sum()  # Normalize weights

weights2 = np.cos(np.deg2rad(lat2))

weights2 = weights2 / weights2.sum()  # Normalize weights

# Average over latitude with area weighting

temp_weighted_avg1 = np.average(temp1, axis=1, weights=weights1)
temp_weighted_avg2 = np.average(temp2, axis=1, weights=weights2)


# Average over longitude

temp_global_avg1 = np.mean(temp_weighted_avg1, axis=1)
temp_global_avg2 = np.mean(temp_weighted_avg2, axis=1)

temp_global_avg= temp_global_avg1 - temp_global_avg2


# Convert time units if necessary (e.g., from days since a reference date)

time_units = dataset1.variables['time'].units

#time = nc.num2date(time, units=time_units)



# Plot the result

plt.figure(figsize=(10, 5))

plt.plot(time1, temp_global_avg, label='Global Surface Temperature')

plt.xlabel('Time')

plt.ylabel('Temperature (K)')

plt.title('Average Global Surface Temperature Over Time (Area Weighted)')

plt.legend()

plt.grid(True)

plt.show()
