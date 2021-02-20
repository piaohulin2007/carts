FROM schoolofdevops/carts-maven

WORKDIR /opt/carts

COPY . .

RUN mvn package \
    && mv target/carts.jar /run \
    && rm -rf /opt/carts/*

WORKDIR /run

EXPOSE 80

CMD java -jar carts.jar --port=80

