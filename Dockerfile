# use the Rocker RStudio image for the R environment
FROM rocker/tidyverse:3.6.1

# install the psych and gghalves packages
RUN Rscript -e 'install.packages("psych")'
RUN installGithub.r erocoar/gghalves



### Usage instructions ####

# Run the container using:
# docker run --rm -d -e PASSWORD=my_password -p 8787:8787 -v <path_on_computer>:/home/rstudio tutorial_project

# Reproduce the analyses using:
# docker run -i --rm -v <path_on_computer>:/home/rstudio tutorial_project Rscript -e 'setwd("/home/rstudio"); source("script.R")'

# The corresponding data and code can be found at: https://osf.io/z85k3/