FROM centos:latest

ARG base_url="https://www.dolphindb.com/downloads/"

ARG dolphindb_version="DolphinDB_Linux64_V1.00.10.zip"

ARG dolphindb="${base_url}${dolphindb_version}"

RUN mkdir -p /data/ddb
ADD $dolphindb /data/ddb/
RUN yum install -y unzip
RUN yum install -y wget
RUN (cd /data/ddb/ && unzip /data/ddb/${dolphindb_version})
RUN chmod 755 /data/ddb/server/dolphindb
RUN mkdir -p /data/ddb/server/config

ADD default_cmd /root/
RUN chmod 755 /root/default_cmd
ENTRYPOINT ["/root/default_cmd"]
