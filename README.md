# sentinel-2-veg-metrics-dashboard
Get sentinel-2 data and calculate VI's, get some metreics, and present as a dashboard

idea:

- for a given location uploaded via a panel widget, get sentinel-2 data using element84's STAC API
- Let user include a date range up to X number of weeks
- calculate NDVI, EVI, LAI, and other vegetation indices
- From those indices get some metrics like mean, median, max, min, etc.
    - mean NDVI over last 10 days
    - NDVI increase over set time perios
- Present the data as a dashboard using panel
    - map view showing true colour composite of area
    - time series of NDVI, EVI, LAI, etc.
    - flexboxes with metrics
