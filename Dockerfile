FROM rocker/shiny:latest

RUN mkdir -p /opt/services/shinyapp/src
WORKDIR /opt/services/shinyapp/src/

COPY . /opt/services/shinyapp/src

EXPOSE 8100
CMD R -e "shiny::runApp(appDir='shinyapp', port=8100, host='0.0.0.0')"