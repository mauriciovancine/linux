### install r packages - linux mint ###

# github ------------------------------------------------------------------
if(!require("devtools")) install.packages("devtools")

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

tidyverse_packages(include_self = TRUE)

# ecological analysis -----------------------------------------------------
if(!require("ade4")) install.packages("ade4")
if(!require("adespatial")) install.packages("adespatial") # sudo apt install -y libudunits2-dev
if(!require("betapart")) install.packages("betapart") # sudo apt install libgmp3-dev
if(!require("factoextra")) install.packages("factoextra")
if(!require("FactoMineR")) install.packages("FactoMineR")
if(!require("spdep")) install.packages("spdep")
if(!require("vegan")) install.packages("vegan")
if(!require("ggvegan")) devtools::install_github("gavinsimpson/ggvegan")
if(!require("ggord")) devtools::install_github("fawda123/ggord")

# plot --------------------------------------------------------------------
if(!require("GGally")) install.packages("GGally")
if(!require("ggpubr")) install.packages("ggpubr")
if(!require("cowplot")) install.packages("cowplot")
if(!require("gridExtra")) install.packages("gridExtra")

# colors ------------------------------------------------------------------
# https://github.com/EmilHvitfeldt/r-color-palettes
if(!require(RColorBrewer)) install.packages("RColorBrewer")
if(!require(viridis)) install.packages("viridis")
if(!require(ggsci)) install.packages("ggsci")
if(!require(cptcity)) install.packages("cptcity")
if(!require(cartography)) install.packages("cartography")

if(!require(ggsci)) install.packages("dichromat")
if(!require(ggsci)) install.packages("yarrr")
if(!require(ggsci)) install.packages("scico")
if(!require(ggsci)) install.packages("Redmonder")
if(!require(ggsci)) install.packages("rcartocolor")
if(!require(ggsci)) install.packages("Polychrome")
if(!require(ggsci)) install.packages("pals")
if(!require(ggsci)) install.packages("palr")
if(!require(ggsci)) install.packages("palettetown")
if(!require(ggsci)) install.packages("oompaBase")
if(!require(ggsci)) install.packages("ochRe")
if(!require(ggsci)) install.packages("nord")
if(!require(ggsci)) install.packages("jcolors")
if(!require(ggsci)) install.packages("grDevices")
if(!require(ggsci)) install.packages("ghibli")
if(!require(ggsci)) install.packages("ggthemes")
if(!require(ggsci)) install.packages("dichromat")
if(!require(ggsci)) install.packages("teamcolors")

if(!require(wesanderson)) devtools::install_github("karthik/wesanderson")
if(!require(quickpalette)) devtools::install_github("EmilHvitfeldt/quickpalette")
if(!require(RSkittleBrewer)) devtools::install_github("alyssafrazee/RSkittleBrewer")
if(!require(NineteenEightyR)) devtools::install_github("m-clark/NineteenEightyR")
if(!require(LaCroixColoR)) devtools::install_github("johannesbjork/LaCroixColoR")
if(!require(ggpomological)) devtools::install_github("gadenbuie/ggpomological")
if(!require(dutchmasters)) devtools::install_github("EdwinTh/dutchmasters")
if(!require(awtools)) devtools::install_github("awhstin/awtools")

# data table --------------------------------------------------------------
if(!require("data.table")) install.packages("data.table")

# spatial analysis --------------------------------------------------------
if(!require("sp")) install.packages("sp")
if(!require("raster")) install.packages("raster")
if(!require("rgdal")) install.packages("rgdal") # sudo apt install libgdal-dev libproj-dev
if(!require("rgeos")) install.packages("rgeos")
if(!require("units")) install.packages("units")
if(!require("udunits2")) install.packages("udunits2") # sudo apt install libudunits2-dev
if(!require("sf")) install.packages("sf")
if(!require("fasterize")) install.packages("fasterize")

# maps --------------------------------------------------------------------
if(!require("tmap")) install.packages("tmap")
if(!require("tmaptools")) install.packages("tmaptools")
if(!require("maptools")) install.packages("maptools")
if(!require("mapview")) install.packages("mapview")
if(!require("leaflet")) install.packages("leaflet")
if(!require("cartography")) install.packages("cartography")
if(!require("rasterVis")) install.packages("rasterVis")

# landscape metrics -------------------------------------------------------
if(!require("landscapeverse")) devtools::install_github("r-spatialecology/landscapeverse")
if(!require("landscapemetrics")) install.packages("landscapemetrics")
if(!require("NLMR")) install.packages("NLMR")
if(!require("landscapetools")) install.packages("landscapetools")

# remote sensing ----------------------------------------------------------
if(!require("getlandsat")) install.packages("getlandsat")
if(!require("RStoolbox")) install.packages("RStoolbox")

# species distribution modeling -----------------------------------------------
# occ - download
if(!require("rgbif")) install.packages("rgbif")
if(!require("spocc")) install.packages("spocc")
if(!require("BIEN")) install.packages("BIEN")
if(!require("marinespeed")) install.packages("marinespeed")
if(!require("robis")) install.packages("robis")

# occ - taxonomy
if(!require("worrms")) install.packages("worrms")
if(!require("rfishbase")) install.packages("rfishbase")
if(!require("taxize")) install.packages("taxize")

# occ - clear
if(!require("CoordinateCleaner")) install.packages("CoordinateCleaner")
if(!require("speciesgeocodeR")) install_github("azizka/speciesgeocodeR")
if(!require("sampbias")) install_github("azizka/sampbias")

# var - limits
if(!require("rnaturalearth")) install.packages("rnaturalearth")
if(!require("rnaturalearthdata")) install.packages("rnaturalearthdata")
if(!require("rnaturalearthhires")) devtools::install_github("ropensci/rnaturalearthhires")
if(!require("geobr")) install.packages("geobr")

# var - download
if(!require("sdmpredictors")) install.packages("sdmpredictors")

# var - selection
if(!require("usdm")) install.packages("usdm")
if(!require("psych")) install.packages("psych")

# algorithms
if(!require("biomod2")) install.packages("biomod2")
if(!require("dismo")) install.packages("dismo")
if(!require("sdm")) install.packages("sdm")

# algorithms only
if(!require("kernlab")) install.packages("kernlab")
if(!require("e1071")) install.packages("e1071")
if(!require("CENFA")) install.packages("CENFA")
if(!require("earth")) install.packages("earth")
if(!require("ecospat")) install.packages("ecospat")
if(!require("gam")) install.packages("gam")
if(!require("gbm")) install.packages("gbm")
if(!require("mda")) install.packages("mda")
if(!require("mgcv")) install.packages("mgcv")
if(!require("ncf")) install.packages("ncf")
if(!require("nnet")) install.packages("nnet")
if(!require("randomForest")) install.packages("randomForest")
if(!require("rpart")) install.packages("rpart")
if(!require("rJava")) install.packages("rJava")
if(!require("ENMeval")) install.packages("ENMeval")
if(!require("maxnet")) install.packages("maxnet")
if(!require("maxlike")) install.packages("maxlike")
if(!require("kuenm")) devtools::install_github("marlonecobos/kuenm")

# ensemble
if(!require("eSDM")) install.packages("eSDM")

# hierarchical bayesian
# hsdm
# cd ~/Downloads
# wget ftp://ftp.gnu.org/gnu/gsl/gsl-latest.tar.gz
# tar -xvzf gsl-latest.tar.gz
# cd gsl-2.5
# ./configure
# make
# sudo make install

if(!require("hSDM")) install.packages("hSDM")

# joint
if(!require("jSDM")) install.packages("jSDM") # sudo apt install -y libgsl-dev

# stacked species distribution models
if(!require("SSDM")) install.packages("SSDM")

# virtual species
if(!require("sdmvspecies")) install.packages("sdmvspecies")
if(!require("virtualspecies")) install.packages("virtualspecies")

# euclidean distance
# https://rpubs.com/Bruno_Vilela/279257

# markdown ----------------------------------------------------------------
if(!require("rmarkdown")) remotes::install_github("rstudio/rmarkdown")
if(!require("tinytex")) install.packages("tinytex"); tinytex::install_tinytex()
if(!require("blogdown")) remotes::install_github("rstudio/blogdown")
blogdown::install_hugo()
if(!require("pagedown")) remotes::install_github("rstudio/pagedown")
if(!require("bookdown")) devtools::install_github("rstudio/bookdown")
if(!require("posterdown")) devtools::install_github("brentthorne/posterdown")
if(!require("xaringan")) remotes::install_github("yihui/xaringan")
if(!require("xaringanthemer")) devtools::install_github("gadenbuie/xaringanthemer")
if(!require("icon")) devtools::install_github("ropenscilabs/icon")

# email -------------------------------------------------------------------
if(!require("gmailr")) install.packages("gmailr")

# googledrive -------------------------------------------------------------
if(!require("googledrive")) install.packages("googledrive")

# beep --------------------------------------------------------------------
if(!require("beepr")) install.packages("beepr")

# python ------------------------------------------------------------------
if(!require("reticulate")) install.packages("reticulate")

# shiny -------------------------------------------------------------------
if(!require("shiny")) install.packages("shiny")
if(!require("shinyjs")) install.packages("shinyjs")
if(!require("shinydashboard")) install.packages("shinydashboard")
if(!require("DT")) install.packages("DT")

# end ---------------------------------------------------------------------
