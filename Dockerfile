#FROM ghcr.io/graalvm/native-image-community:22.0.0-ol7-20240319 AS build
FROM ghcr.io/graalvm/graalvm-community:22.0.0 AS build
#RUN gu install native-image
#COPY build/libs/graalvm-demo-0.0.1-SNAPSHOT.jar app.jar
COPY build/libs/nativecompile-classpath-0.0.1-SNAPSHOT.jar app.jar
RUN native-image -jar app.jar

#FROM scratch
#COPY --from=build /build/output /app/output
#USER 10
#WORKDIR /app
#ENTRYPOINT ["output"]
