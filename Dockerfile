FROM centos:latest
RUN curl https://xpra.org/repos/CentOS/xpra.repo -o /etc/yum.repos.d/xpra.repo && yum install epel-release openssh-server net-tools xauth firefox python-websockify xpra  -y && /usr/sbin/sshd-keygen &&  sed -i 's/X11UseLocalhost yes/X11UseLocalhost no/' /etc/ssh/sshd_config  &&  /usr/sbin/sshd -f /etc/ssh/sshd_config  && echo '/usr/sbin/sshd -f /etc/ssh/sshd_config' >> /root/.bashrc && dbus-uuidgen > /etc/machine-id

#CMD ["xpra", "start", "--bind-tcp=0.0.0.0:3333", "--html=on","--start-child=firefox", "--daemon=no", "--systemd-run=no"]
RUN yum install python36 python3-pip -y && pip3 install jupyter

WORKDIR /book
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
#VOLUME /book
