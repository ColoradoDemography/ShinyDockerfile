FROM rocker/shiny:latest

MAINTAINER Todd Bleess "todd.bleess@state.co.us"

FROM rocker/shiny:latest

MAINTAINER Todd Bleess "todd.bleess@state.co.us"

RUN apt-get update && apt-get install -y libssl-dev git libjq-dev libpq-dev libgeos-c1v5 libgdal-dev libproj-dev libv8-dev libudunits2-dev vim && \
    R -e "install.packages('curl')" && \
    R -e "install.packages(c('devtools','shiny','shinydashboard','tidyverse','readr','readxl','scales','knitr','kableExtra','RPostgreSQL','rmarkdown','shinyjs','eulerr','rgdal','geojsonio','grid','gridExtra','ggthemes','maptools','officer','flextable','ggplotify','car','pool','config','ggrepel','leaflet','htmltools','mapview','DT','plotly','tidycensus','censusapi','DBI','stringr','tigris','sf','RColorBrewer'))"
	R -e "devtools::install_github(c('ColoradoDemography/codemog','ColoradoDemography/codemogAPI','ColoradoDemography/codemogProfile','ColoradoDemography/codemogLib'))
	cd /srv/shiny-server && \
    git clone https://github.com/ColoradoDemography/ProfileDashboard2 && \
	git clone https://github.com/ColoradoDemography/ProfileComparisons && \
	git clone https://github.com/ColoradoDemography/CSBG && \
	git clone https://github.com/ColoradoDemography/CensusResp && \
	git clone https://github.com/ColoradoDemography/age_by_race.git
    
