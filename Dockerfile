FROM rocker/shiny:latest

MAINTAINER Todd Bleess "todd.bleess@state.co.us"

RUN apt upgrade -y libc6-dev
RUN apt-get update && apt-get install -y libgdal-dev libproj-dev libudunits2-dev libgeos++-dev libv8-3.14-dev libprotobuf-dev protobuf-compiler libjq-dev binutils gdal-bin
RUN apt-get update && apt-get install -y texlive texlive-fonts-recommended texlive-latex-extra
RUN apt-get update && apt-get install -y libssl-dev libpq-dev libxml2-dev &&\
    R -e "install.packages('curl')" && \
    R -e "install.packages(c('devtools', 'shiny', 'rmarkdown', 'tm', 'wordcloud', 'memoise', 'dplyr', 'tidyr', 'scales', 'plotly', 'readxl', 'readr', 'car', 'shinydashboard', && \
		'rgdal', 'raster', 'tidycensus', 'tmap', 'tmaptools', 'stringr', 'tidyverse', 'knitr', 'kableExtra', 'RPostgeSQL', 'shinyjs', 'VennDiagram', 'geojsonio', 'gridExtra', && \
		'ggthemes', 'maptools', 'officer', 'flextable', 'tinytex'))" && \
    R -e "devtools::install_github('ColoradoDemography/codemog')" && \
    R -e "devtools::install_github('ColoradoDemography/codemogAPI')" && \
    R -e "devtools::install_github('ColoradoDemography/codemogLib')" && \
    R -e "devtools::install_github('ColoradoDemography/codemogProfile')" && \
    R -e "devtools::install_github('ColoradoDemography/ProfileDashboard')" && \
    cd /srv/shiny-server && \
    git clone https://github.com/ColoradoDemography/demographic_dashboard && \
    git clone https://github.com/ColoradoDemography/netmigration_dashboard && \
    git clone https://github.com/ColoradoDemography/ProfileDashboard2 && \
    git clone https://github.com/ColoradoDemography/rcs_data
    
