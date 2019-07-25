### install r packages - linux mint ###

# github ------------------------------------------------------------------
if(!require("devtools")) install.packages("devtools")
devtools::install_github("r-lib/devtools")

# internet ----------------------------------------------------------------
if(!require("Rcpp")) install.packages("Rcpp")
if(!require("httpuv")) install.packages("httpuv")

# tidyverse ---------------------------------------------------------------
if(!require("broom")) install.packages("broom")
if(!require("cli")) install.packages("cli")         
if(!require("crayon")) install.packages("crayon")      
if(!require("dplyr")) install.packages("dplyr")       
if(!require("dbplyr")) install.packages("dbplyr")      
if(!require("forcats")) install.packages("forcats")    
if(!require("ggplot2")) install.packages("ggplot2")     
if(!require("haven")) install.packages("haven")
if(!require("hms")) install.packages("hms")
if(!require("httr")) install.packages("httr")
if(!require("jsonlite")) install.packages("jsonlite")
if(!require("lubridate")) install.packages("lubridate")  
if(!require("magrittr")) install.packages("magrittr")
if(!require("modelr")) install.packages("modelr")
if(!require("purrr")) install.packages("purrr")
if(!require("readODS")) install.packages("readODS")
if(!require("readr")) install.packages("readr")
if(!require("readxl")) install.packages("readxl")
if(!require("reprex")) install.packages("reprex")
if(!require("rlang")) install.packages("rlang")
if(!require("rstudioapi")) install.packages("rstudioapi")
if(!require("rvest")) install.packages("rvest")       
if(!require("stringr")) install.packages("stringr")
if(!require("tibble")) install.packages("tibble")
if(!require("tidyr")) install.packages("tidyr")      
if(!require("xml2")) install.packages("xml2")
if(!require("tidyverse")) install.packages("tidyverse") # sudo apt install libssl-dev
if(!require("writexl")) install.packages("writexl")
if(!require("tidylog")) devtools::install_github("elbersb/tidylog")

tidyverse_packages(include_self = TRUE)

# ecological analysis -----------------------------------------------------
if(!require("ade4")) install.packages("ade4")
if(!require("adespatial")) install.packages("adespatial")
if(!require("betapart")) install.packages("betapart")
if(!require("factoextra")) install.packages("factoextra")
if(!require("FactoMineR")) install.packages("FactoMineR")
if(!require("spdep")) install.packages("spdep")
if(!require("vegan")) install.packages("vegan")
if(!require("ggvegan")) devtools::install_github("gavinsimpson/ggvegan")

# presentation ------------------------------------------------------------
if(!require("xaringan")) install.packages("xaringan")
if(!require("xaringanthemer")) devtools::install_github("gadenbuie/xaringanthemer")

# plot --------------------------------------------------------------------
if(!require("GGally")) install.packages("GGally")
if(!require("ggpubr")) install.packages("ggpubr")
if(!require("cowplot")) install.packages("cowplot")
if(!require("gridExtra")) install.packages("gridExtra")

# data table --------------------------------------------------------------
if(!require("data.table")) install.packages("data.table")

# googledrive -------------------------------------------------------------
if(!require("googledrive")) install.packages("googledrive")

# spatial analysis --------------------------------------------------------
if(!require("sp")) install.packages("sp")
if(!require("raster")) install.packages("raster")
if(!require("rgdal")) install.packages("rgdal") # sudo apt install libgdal-dev libproj-dev
if(!require("rgeos")) install.packages("rgeos")
if(!require("RStoolbox")) install.packages("RStoolbox")
if(!require("foreign")) install.packages("foreign")
if(!require("maptools")) install.packages("maptools")
if(!require("units")) install.packages("units")
if(!require("udunits2")) install.packages("udunits2") # sudo apt install libudunits2-dev
if(!require("sf")) install.packages("sf")
if(!require("tmaptools")) install.packages("tmaptools")
if(!require("gdtools")) install.packages("gdtools") # sudo apt install libcairo2-dev
if(!require("svglite")) install.packages("svglite")
if(!require("mapview")) install.packages("mapview")
if(!require("tmap")) install.packages("tmap")
if(!require("leaflet")) install.packages("leaflet")
if(!require("cartography")) install.packages("cartography")
if(!require("RStoolbox")) install.packages("RStoolbox")
if(!require("whitebox")) devtools::install_github("giswqs/whiteboxR")
if(!require("fasterize")) install.packages("fasterize")
if(!require("leaflet")) install.packages("leaflet")

# species distribution modeling -----------------------------------------------
if(!require("adehabitatHS")) install.packages("adehabitatHS")
if(!require("ape")) install.packages("ape")
if(!require("biomod2")) install.packages("biomod2")
if(!require("boot")) install.packages("boot")
if(!require("classInt")) install.packages("classInt")
if(!require("spDataLarge")) install.packages("spDataLarge", repos = "https://nowosad.github.io/drat/", type = "source")
if(!require("cowplot")) install.packages("cowplot")
if(!require("Daim")) install.packages("Daim")
if(!require("dismo")) install.packages("dismo")
if(!require("earth")) install.packages("earth")
if(!require("ecospat")) install.packages("ecospat")
if(!require("fields")) install.packages("fields")
if(!require("gam")) install.packages("gam")
if(!require("gbm")) install.packages("gbm")
if(!require("gridExtra")) install.packages("gridExtra")
if(!require("Hmisc")) install.packages("Hmisc")
if(!require("landsat")) install.packages("landsat")
if(!require("ltm")) install.packages("ltm")
if(!require("MASS")) install.packages("MASS")
if(!require("mda")) install.packages("mda")
if(!require("mgcv")) install.packages("mgcv")
if(!require("ncf")) install.packages("ncf")
if(!require("nnet")) install.packages("nnet")
if(!require("PresenceAbsence")) install.packages("PresenceAbsence")
if(!require("pROC")) install.packages("pROC")
if(!require("randomForest")) install.packages("randomForest")
if(!require("rasterVis")) install.packages("rasterVis")
if(!require("reshape2")) install.packages("reshape2")
if(!require("rJava")) install.packages("rJava") # sudo apt install r-cran-rjava 
if(!require("rpart")) install.packages("rpart")
if(!require("sdm")) install.packages("sdm")
if(!require("sdm")) install.packages("sdmpredictors")
if(!require("snowfall")) install.packages("snowfall")
if(!require("spocc")) install.packages("spocc")
if(!require("usdm")) install.packages("usdm")

# shiny -------------------------------------------------------------------
if(!require("shiny")) install.packages("shiny")
if(!require("shinyjs")) install.packages("shinyjs")
if(!require("shinydashboard")) install.packages("shinydashboard")
if(!require("DT")) install.packages("DT")

# email -------------------------------------------------------------------
if(!require("")) install.packages("")

# beep --------------------------------------------------------------------
if(!require("beepr")) install.packages("beepr")

# end ---------------------------------------------------------------------