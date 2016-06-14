FROM debian:jessie

RUN apt-get update

# Convenience
RUN apt-get install -y --no-install-recommends \
        file     \
        git      \
        less     \
        man-db   \
        manpages \
        vim      \
        zsh

# Generic
RUN apt-get install -y --no-install-recommends \
        atop    \
        dstat   \
        htop    \
        ltrace  \
        strace  \
        sysstat

# IO
RUN apt-get install -y --no-install-recommends \
        blktrace \
        iotop    \
        lsof

# Networking
RUN apt-get install -y --no-install-recommends \
        arping          \
        bridge-utils    \
        ca-certificates \
        curl            \
        ethtool         \
        iftop           \
        iperf           \
        iproute2        \
        mtr-tiny        \
        net-tools       \
        nicstat         \
        nmap            \
        tcpdump

CMD ["/bin/bash"]
