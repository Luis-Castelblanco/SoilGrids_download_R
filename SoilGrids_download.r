#install.packages("gdalUtilities")
library(gdalUtilities)
gdalwarp(t_srs="EPSG:4326", multi=TRUE, wm=200, 
         co=c("BIGTIFF=YES", "COMPRESS=DEFLATE", "TILED=TRUE"),
         tr=c(0.25,0.25), # Desired output resolution
         "/vsicurl?max_retry=3&retry_delay=1&list_dir=no&url=https://files.isric.org/soilgrids/latest/data/wrb/MostProbable.vrt", # Input VRT
         "MostProbable_SoilGrids2.tif") # Output file
