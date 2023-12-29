FROM ubuntu:22.04

# Install basic dependencies.
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    gdb \
    curl \
    git \
    gnupg \
    unzip \
    wget \
    zip

# Install bazel
RUN wget https://github.com/bazelbuild/bazelisk/releases/download/v1.19.0/bazelisk-linux-amd64 -O /usr/local/bin/bazel && \
    chmod +x /usr/local/bin/bazel

# Get buildifier to format bazel-related files.
RUN wget https://github.com/bazelbuild/buildtools/releases/download/v6.4.0/buildifier-linux-amd64 -O /usr/local/bin/buildifier && \
    chmod +x /usr/local/bin/buildifier

# Install clang-format
RUN apt-get install -y clang-format