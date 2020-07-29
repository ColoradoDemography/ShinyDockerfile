FROM rocker/shiny:3.4.1

MAINTAINER Todd Bleess "todd.bleess@state.co.us"

RUN apt-get update && apt-get install -y libssl-dev git && \
    cd /srv/shiny-server && \
    git clone https://github.com/ColoradoDemography/demographic_dashboard && \
    git clone https://github.com/ColoradoDemography/netmigration_dashboard 
    git clone https://github.com/ColoradoDemography/rcs_data
    
