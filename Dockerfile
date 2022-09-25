FROM haskell:8.10
COPY . /corrode
WORKDIR /corrode
RUN stack install
ENV PATH="/root/.local/bin:${PATH}"
ENTRYPOINT ["/root/.local/bin/corrode"]
