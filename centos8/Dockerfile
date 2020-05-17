FROM centos:centos8
RUN curl https://xpra.org/repos/CentOS/xpra.repo -o /etc/yum.repos.d/xpra.repo && yum install epel-release openssh-server net-tools xauth  xpra  -y && /usr/bin/ssh-keygen -A  &&  sed -i 's/#X11UseLocalhost yes/X11UseLocalhost no/' /etc/ssh/sshd_config  && /usr/sbin/sshd &&  echo '/usr/sbin/sshd' >> /root/.bashrc && dbus-uuidgen > /etc/machine-id

#CMD ["xpra", "start", "--bind-tcp=0.0.0.0:3333", "--html=on","--start-child=firefox", "--daemon=no", "--systemd-run=no"]
RUN yum install python3-pip && pip3 install jupyter

WORKDIR /book
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
#VOLUME /book
