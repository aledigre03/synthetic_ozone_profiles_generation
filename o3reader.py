import xarray as xr
import numpy as np
import matplotlib.pyplot as plt


ds = xr.open_dataset('AlessandroO3_16lev_50yr.nc')
#ds = xr.open_dataset('file.nc')

print(ds)


ozone_data = ds['var237'].mean(dim=['time', 'lon'])
#ozone_data = ds['var237'].isel(time=0, lon=0)

ts= ds['ts'].isel(time=0)

#.mean does a mean of the levels while .isel(time=0, lev=0) gives me a precise level

lev_reversed = ds['lev'][::-1]


plt.figure(figsize=(10, 6))
contour = plt.contourf(ds['lat'], lev_reversed, ozone_data, cmap='viridis', levels=20)
plt.colorbar(contour, label='Ozone Concentration')
plt.xlabel('latitude')
plt.ylabel('altitude')
plt.yscale('log')
plt.title('O3 concentration')
plt.show()

plt.figure(figsize=(10, 6))
contour = plt.contourf(ds['lon'], ds['lat'], ts, cmap='bwr', levels=20)
plt.colorbar(contour, label='Surface Temperature')
plt.xlabel('latitude')
plt.ylabel('longitude')
plt.title('Surface Temperature')
plt.show()
