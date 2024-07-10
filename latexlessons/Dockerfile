FROM pandoc/core:latest-ubuntu

WORKDIR /src
VOLUME /out

RUN apt-get update && apt-get install texlive-latex-extra -y

ADD build.sh /src
ADD data.py /src

ENTRYPOINT ./build.sh
