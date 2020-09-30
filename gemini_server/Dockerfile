FROM rust

RUN cargo install agate

CMD ["agate", "0.0.0.0:1965", "/data", "/keys/ca-cert.pem", "/keys/ca-key.rsa"]
