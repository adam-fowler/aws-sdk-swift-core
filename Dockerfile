FROM swift:5.1 as builder

RUN apt-get -qq update && apt-get install -y \
  libssl-dev zlib1g-dev \
  && rm -r /var/lib/apt/lists/*

WORKDIR /aws-sdk-swift-core
COPY . .
RUN swift test
