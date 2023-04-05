FROM rocker/r-base:4.2.3
LABEL maintainer="Kirill Milash <kirilledition@protonmail.com>"

WORKDIR "/home"

RUN apt update && apt -y --no-install-recommends install \
    libxt-dev=1:1.2.1-1 \
    libcairo2-dev=1.16.0-7 \
    procps=2:4.0.2-3 \
    && rm -rf /var/lib/apt/lists/*

RUN R -e "install.packages('https://cloud.r-project.org/src/contrib/Cairo_1.6-0.tar.gz', Ncpus=12)"
RUN R -e "install.packages('https://cloud.r-project.org/src/contrib/plotrix_3.8-2.tar.gz', Ncpus=12)"
RUN R -e "install.packages('https://cloud.r-project.org/src/contrib/data.table_1.14.8.tar.gz', Ncpus=12)"
RUN R -e "install.packages('https://cloud.r-project.org/src/contrib/backports_1.4.1.tar.gz', Ncpus=12)"
RUN R -e "install.packages('https://cloud.r-project.org/src/contrib/checkmate_2.1.0.tar.gz', Ncpus=12)"
RUN R -e "install.packages('https://cloud.r-project.org/src/contrib/abind_1.4-5.tar.gz', Ncpus=12)"
RUN R -e "install.packages('https://cloud.r-project.org/src/contrib/forestplot_3.1.1.tar.gz', Ncpus=12)"

RUN R -e "install.packages('https://homepages.uni-regensburg.de/~wit59712/easyqc2/EasyQC2_1.1.1.tar.gz', Ncpus=12)"

