# Docker file for mushrooms
# Maud Boucherit, Dec, 2017
#
# Runs a Docker Container
#
# usage: docker run --rm -it -v /YOUR-REPO/mushrooms:/home/mushrooms rocker/tidyverse

# Using tidyverse Rocker image as a base
FROM rocker/tidyverse

# Install required packages
RUN Rscript -e "install.packages('ezknitr', repos = 'https://mran.revolutionanalytics.com/snapshot/2017-12-11')"
RUN Rscript -e "install.packages('tidyverse', repos = 'https://mran.revolutionanalytics.com/snapshot/2017-12-11')"
RUN Rscript -e "install.packages('rpart', repos = 'https://mran.revolutionanalytics.com/snapshot/2017-12-11')"
RUN Rscript -e "install.packages('rattle', repos = 'https://mran.revolutionanalytics.com/snapshot/2017-12-11')"
RUN Rscript -e "install.packages('rpart.plot', repos = 'https://mran.revolutionanalytics.com/snapshot/2017-12-11')"
RUN Rscript -e "install.packages('RColorBrewer', repos = 'https://mran.revolutionanalytics.com/snapshot/2017-12-11')"
RUN Rscript -e "install.packages('packrat', repos = 'https://mran.revolutionanalytics.com/snapshot/2017-12-11')"
