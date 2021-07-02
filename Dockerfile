FROM mono:6.12

RUN apt-get update && \
    apt-get install -y xxd

ADD . /opt/lp5569/.

ENTRYPOINT ["mono", "/opt/lp5569/lasm.exe"]

