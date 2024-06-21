FROM mcr.microsoft.com/vscode/devcontainers/python:3.12-bullseye

RUN apt-get update && apt-get install -y \
		gcc libgdal-dev gdal-bin \
		python3-venv \
		&& rm -rf /var/lib/apt/lists/*

ENV GDAL_CONFIG=/usr/bin/gdal-config

WORKDIR /workspace

#upgrade pip
RUN pip install --upgrade pip

#install core packages
RUN pip install jupyter nbconvert ipykernel pandas numpy xarray requests

#install geospatial packages
RUN pip install geopandas fiona shapely rasterio rioxarray pystac pystac-client

# install visualisation packages
RUN pip install hvplot geoviews holoviews datashader jupyter-bokeh matplotlib plotly seaborn

#experimental packages
RUN pip install stackstac odc-stac pytz ruff pytest pylint "dask[distributed]"

CMD ["sleep", "infinity"]