FROM java:openjdk-8-jdk

ENV spark_ver 2.4.5

COPY ./spark-2.4.5-bin-hadoop2.7 /root/spark-2.4.5-bin-hadoop2.7

RUN mkdir -p /opt && \
    cd /opt && \
    ln -s /root/spark-${spark_ver}-bin-hadoop2.7 spark && \
    echo Spark ${spark_ver} installed in /opt

ADD start-common.sh start-worker.sh start-master.sh /
RUN chmod +x /start-common.sh /start-master.sh /start-worker.sh
