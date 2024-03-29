FROM gcr.io/distroless/static:nonroot
WORKDIR /
COPY manager manager
USER 65532:65532

# User env is required by opentelemetry-go
ENV USER=k8soauth2-proxy-controller

ENTRYPOINT ["/manager"]
