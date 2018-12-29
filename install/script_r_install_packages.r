### install packages ###

###-------------------------------------------------------------------------------------###

## github
if(!require(devtools)) install.packages("devtools")

###-------------------------------------------------------------------------------------###

## ecological analysis
if(!require(ade4)) install.packages("ade4")
if(!require(adespatial)) install.packages("adespatial")
if(!require(betapart)) install.packages("betapart")
if(!require(factoextra)) install.packages("factoextra")
if(!require(FactoMineR)) install.packages("FactoMineR")
if(!require(spdeb)) install.packages("spdeb")
if(!require(vegan)) install.packages("vegan")

###-------------------------------------------------------------------------------------###

## tidyverse
if(!require(tidyverse)) install.packages("tidyverse") # sudo apt install libssl-dev
if(!require(writexl)) install.packages("writexl")

###-------------------------------------------------------------------------------------###

## presentation
if(!require(xaringan)) install.packages("xaringan")
if(!require(xaringanthemer)) devtools::install_github("gadenbuie/xaringanthemer")

###-------------------------------------------------------------------------------------###

## plot
if(!require(GGally)) install.packages("GGally")

###-------------------------------------------------------------------------------------###

## download data
if(!require(rvest)) install.packages("rvest")

###-------------------------------------------------------------------------------------###

## data table
if(!require(data.table)) install.packages("data.table")

###-------------------------------------------------------------------------------------###

## spatial analysis
if(!require(sp)) install.packages("sp")
if(!require(raster)) install.packages("raster")
if(!require(rgdal)) install.packages("rgdal") # sudo apt install libgdal-dev libproj-dev
if(!require(rgeos)) install.packages("rgeos")
if(!require(RStoolbox)) install.packages("RStoolbox")
if(!require(foreign)) install.packages("foreign")
if(!require(maptools)) install.packages("maptools")
if(!require(units)) install.packages("units")
if(!require(udunits2)) install.packages("udunits2") # sudo apt install libudunits2-dev
if(!require(sf)) install.packages("sf")
if(!require(tmaptools)) install.packages("tmaptools")
if(!require(gdtools)) install.packages("gdtools") # sudo apt install libcairo2-dev
if(!require(svglite)) install.packages("svglite")
if(!require(mapview)) install.packages("mapview")
if(!require(tmap)) install.packages("tmap")
if(!require(leaflet)) install.packages("leaflet")
if(!require(cartography)) install.packages("cartography")

###-------------------------------------------------------------------------------------###

## ecological niche modeling
if(!require(adehabitatHS)) install.packages("adehabitatHS")
if(!require(ape)) install.packages("ape")
if(!require(biomod2)) install.packages("biomod2")
if(!require(boot)) install.packages("boot")
if(!require(classInt)) install.packages("classInt")
if(!require(spDataLarge)) install.packages("spDataLarge", repos = "https://nowosad.github.io/drat/", type = "source")
if(!require(cowplot)) install.packages("cowplot")
if(!require(Daim)) install.packages("Daim")
if(!require(dismo)) install.packages("dismo")
if(!require(earth)) install.packages("earth")
if(!require(ecospat)) install.packages("ecospat")
if(!require(fields)) install.packages("fields")
if(!require(gam)) install.packages("gam")
if(!require(gbm)) install.packages("gbm")
if(!require(gridExtra)) install.packages("gridExtra")
if(!require(Hmisc)) install.packages("Hmisc")
if(!require(landsat)) install.packages("landsat")
if(!require(ltm)) install.packages("ltm")
if(!require(MASS)) install.packages("MASS")
if(!require(mda)) install.packages("mda")
if(!require(mgcv)) install.packages("mgcv")
if(!require(ncf)) install.packages("ncf")
if(!require(nnet)) install.packages("nnet")
if(!require(PresenceAbsence)) install.packages("PresenceAbsence")
if(!require(pROC)) install.packages("pROC")
if(!require(randomForest)) install.packages("randomForest")
if(!require(rasterVis)) install.packages("rasterVis")
if(!require(reshape2)) install.packages("reshape2")
if(!require(rJava)) install.packages("rJava") # sudo apt install r-cran-rjava 
if(!require(rpart)) install.packages("rpart")
if(!require(sdm)) install.packages("sdm")
if(!require(snowfall)) install.packages("snowfall")
if(!require(spocc)) install.packages("spocc")
if(!require(usdm)) install.packages("usdm")

###-------------------------------------------------------------------------------------###

## shiny
if(!require(shiny)) install.packages("shiny")
if(!require(shinyjs)) install.packages("shinyjs")
if(!require(shinydashboard)) install.packages("shinydashboard")
if(!require(DT)) install.packages("DT")

###-------------------------------------------------------------------------------------###
