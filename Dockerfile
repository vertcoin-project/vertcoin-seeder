FROM ubuntu:16.04
RUN apt-get update && apt-get install -y build-essential libboost-all-dev libssl-dev
RUN mkdir -p /usr/src/vertcoin-seeder
ADD . /usr/src/vertcoin-seeder
WORKDIR /usr/src/vertcoin-seeder
RUN make
EXPOSE 53
ENTRYPOINT ["/usr/src/vertcoin-seeder/dnsseed"]

