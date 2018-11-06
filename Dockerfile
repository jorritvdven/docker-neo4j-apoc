FROM neo4j:3.4.9

LABEL maintainer="Jorrit van der Ven"

ENV APOC_VERSION 3.4.0.3
ENV APOC_URL https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/${APOC_VERSION}/apoc-${APOC_VERSION}-all.jar

RUN wget -P plugins/ $APOC_URL

EXPOSE 7474 7473 7687

CMD ["neo4j"]