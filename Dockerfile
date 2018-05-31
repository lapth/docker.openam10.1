FROM debian

ADD jdk-7u21-linux-x64.tar.gz /usr/local
ADD apache-tomcat-7.0.88.tar.gz /usr/local

ENV CATALINA_HOME /usr/local/apache-tomcat-7.0.88
ENV JAVA_HOME /usr/local/jdk1.7.0_21
ENV PATH $CATALINA_HOME/bin:$JAVA_HOME/bin:$PATH

COPY openam.war $CATALINA_HOME/webapps

EXPOSE 8080

CMD ["catalina.sh","run"]
