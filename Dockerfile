FROM centos:7
MAINTAINER custa <custa@126.com>

ENV REFRESHED_AT 2015-12-15

RUN curl -OSL https://sourceforge.net/projects/denyhosts/files/denyhosts/2.6/DenyHosts-2.6.tar.gz && \
    tar -zxf DenyHosts-2.6.tar.gz
WORKDIR DenyHosts-2.6
RUN python setup.py install
WORKDIR ..
RUN rm -rf DenyHosts-2.6*

RUN ln -sf /usr/share/denyhosts/denyhosts.cfg-dist /usr/share/denyhosts/denyhosts.cfg
RUN ln -sf /usr/share/denyhosts/daemon-control-dist /usr/share/denyhosts/daemon-control

ADD run.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
