# build me as bioconductor/osca

FROM bioconductor/release_core2:R3.6.1_Bioc3.10

# RUN apt-get update -y && apt-get install -y ssh

ADD . /osca/

WORKDIR /osca

RUN make clean

RUN make update

RUN make install




