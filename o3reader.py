import xarray as xr
import matplotlib.pyplot as plt


ds = xr.open_dataset('O3ale1.nc')
#ds = xr.open_dataset('file.nc')

print(ds)


#ozone_data = ds['var237'].mean(dim=['time', 'lon'])
ozone_data = ds['var237'].isel(time=0, lon=0)

#.mean does a mean of the levels while .isel(time=0, lev=0) gives me a precise level

lev_reversed = ds['lev'][::-1]

# Show the plot
plt.figure(figsize=(10, 6))
contour = plt.contourf(ds['lat'], lev_reversed, ozone_data, cmap='viridis', levels=20)
plt.colorbar(contour, label='Ozone Concentration')
plt.xlabel('latitude')
plt.ylabel('altitude')
plt.yscale('log')
plt.title('O3 concentration')
plt.show()
