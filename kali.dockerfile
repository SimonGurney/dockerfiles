FROM kalilinux/kali-linux-docker
RUN apt-get update && apt-get install kali-linux-top10 -y
ENV HOME /root
WORKDIR /root
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN echo "root:toor" | chpasswd
CMD service ssh start && sh