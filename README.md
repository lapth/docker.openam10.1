# docker.openam10.1

1. Create empty folder
2. Create/copy the Dockerfile
3. Download and extract the openam 10.1 server here https://backstage.forgerock.com/downloads/search?q=openam
4. Rename the war file to openam
5. Build image


Sample:
=> Run with alpine
docker run --rm -p 8080:8080 lapth/openam10.1:v1
=> Run with slim
docker run --rm -p 8080:8080 lapth/openam10.1:v2
=> Run with built-in: tomcat and oracle jdk
docker run --rm -p 8080:8080 lapth/openam10.1:v3

=> All these version can bring tomcat up but can not config openam, because missing OS config steps.
