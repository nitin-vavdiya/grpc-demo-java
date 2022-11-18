FROM quay.io/quarkus/quarkus-micro-image:1.0
WORKDIR /work/
COPY ./build/grpc-poc-1.0.0-SNAPSHOT-runner /work/application
RUN chmod 775 /work
EXPOSE 9000
CMD ["./application", "-Dquarkus.http.host=0.0.0.0",  "-Dquarkus.http.port=9000"]