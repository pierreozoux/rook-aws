FROM debian

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      fio \
      gnuplot \
 && apt-get remove -y --purge \
 && apt-get autoremove -y \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /fiorun

COPY eval.fio .
COPY run.sh .

CMD /fiorun/run.sh
