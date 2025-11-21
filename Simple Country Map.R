### 20/11/25 - Map of Tunisia

#Packages-----------------------------------------------------------------------

#Install Packages

install.packages("ggplot2")
install.packages("sf")
install.packages("rnaturalearth")
install.packages("rnaturalearthdata")

#Load Library

library(ggplot2)
library(sf)
library(rnaturalearth)
library(rnaturalearthdata)

#World Data---------------------------------------------------------------------

theme_set(theme_bw()) #Set theme to black and white

world <- ne_countries(scale = "medium", returnclass = "sf") #Name world dataset

class(world) #Classes should be "sf" and "data.frame"


#Map Data-----------------------------------------------------------------------

Tunisia<-ggplot(data = world) +
  geom_sf() +
  coord_sf(xlim = c(4, 18), ylim = c(29, 40), expand = FALSE)#Constrain world coordinates to your chosen country, mine is Tunisia

plot(Tunisia) #Simple map of Tunisia, extended slightly to show coastal zones


#R Session----------------------------------------------------------------------

#R version 4.5.1 (2025-06-13)
#Platform: x86_64-pc-linux-gnu
#Running under: Ubuntu 20.04.6 LTS

#Matrix products: default
#BLAS:   /usr/lib/x86_64-linux-gnu/openblas-pthread/libblas.so.3 
#LAPACK: /usr/lib/x86_64-linux-gnu/openblas-pthread/liblapack.so.3;  LAPACK version 3.9.0

#locale:
#[1] LC_CTYPE=C.UTF-8       LC_NUMERIC=C           LC_TIME=C.UTF-8        LC_COLLATE=C.UTF-8    
#[5] LC_MONETARY=C.UTF-8    LC_MESSAGES=C.UTF-8    LC_PAPER=C.UTF-8       LC_NAME=C             
#[9] LC_ADDRESS=C           LC_TELEPHONE=C         LC_MEASUREMENT=C.UTF-8 LC_IDENTIFICATION=C   

#time zone: UTC
#tzcode source: system (glibc)

#attached base packages:
#[1] stats     graphics  grDevices utils     datasets  methods   base     

#other attached packages:
#[1] rnaturalearthdata_1.0.0 rnaturalearth_1.1.0     sf_1.0-22               ggplot2_4.0.1          

#loaded via a namespace (and not attached):
#[1] RColorBrewer_1.1-3 R6_2.6.1           farver_2.1.2       magrittr_2.0.4     e1071_1.7-16      
#[6] gtable_0.3.6       glue_1.8.0         KernSmooth_2.23-26 classInt_0.4-11    lifecycle_1.0.4   
#[11] cli_3.6.5          S7_0.2.1           scales_1.4.0       grid_4.5.1         vctrs_0.6.5       
#[16] DBI_1.2.3          proxy_0.4-27       withr_3.0.2        class_7.3-23       compiler_4.5.1    
#[21] tools_4.5.1        Rcpp_1.1.0         rlang_1.1.6        units_1.0-0   
