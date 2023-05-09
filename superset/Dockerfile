FROM --platform=linux/amd64 apache/superset:latest

USER root

RUN apt update -y \
&& apt install -y build-essential \
wget unzip

RUN wget https://github.com/duckdb/duckdb/releases/download/v0.7.1/duckdb_cli-linux-amd64.zip
RUN unzip duckdb_cli-linux-amd64.zip
RUN mv duckdb /usr/bin
RUN rm duckdb_cli-linux-amd64.zip

RUN pip install duckdb
RUN pip install duckdb-engine

USER superset