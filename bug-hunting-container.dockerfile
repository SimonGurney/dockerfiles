FROM kalilinux/kali-linux-docker
RUN apt-get update && apt-get install ssh -y
RUN apt-get install dnsrecon sublist3r -y && \
    wget https://raw.githubusercontent.com/rbsec/dnscan/master/subdomains-10000.txt -O /root/subdomains --no-check-certificate
RUN apt-get install nmap -y
ENV HOME /root
WORKDIR /root
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN echo "root:toor" | chpasswd
CMD service ssh start && sh