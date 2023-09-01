FROM ubuntu:22.04


RUN \
  DEBIAN_FRONTEND=noninteractive \
  apt-get update && \
  apt-get install -y --no-install-recommends qemu-utils bridge-utils dnsmasq uml-utilities iptables wget net-tools iproute2 && \
  apt-get autoremove -y && \
  apt-get purge -y --auto-remove && \
  rm -rf /var/lib/apt/lists/*


RUN apt-get install -y \
    python3.8 \
    bison \
    flex \

#ENTRYPOINT ["/bin/bash"]