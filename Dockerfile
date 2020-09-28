FROM debian
RUN apt-get update && apt-get install -y wget gcc make vim-tiny less g++ subversion
RUN wget 'ftp://gnu.mirror.iweb.com/apl/apl-1.8.tar.gz' && tar -xaf apl-1.8.tar.gz
WORKDIR apl-1.8
RUN ./configure && make
# ENTRYPOINT src/apl

# as a filter
#    echo 33 | docker run --rm -v `pwd`:/mnt -i junk src/apl --script --OFF -f /dev/stdin
