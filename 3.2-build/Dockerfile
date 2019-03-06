FROM mongooseim/mongooseim:3.2.0 as builder

ARG MIM_WORK_DIR="/usr/lib"
RUN tar xfz mongooseim.tar.gz -C ${MIM_WORK_DIR} || (echo "can't untar release" && exit 1)
COPY /start.sh /start.sh