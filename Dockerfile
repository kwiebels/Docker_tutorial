# use the Rocker RStudio image for the R environment
FROM rocker/tidyverse:3.6.1

# install the psych and gghalves packages
RUN Rscript -e 'install.packages("psych")'
RUN installGithub.r erocoar/gghalves