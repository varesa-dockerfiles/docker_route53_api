FROM registry.esav.fi:5000/python3

ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

WORKDIR /

RUN git clone https://github.com/varesa/route53_api_server.git

WORKDIR /route53_api_server
RUN yum install -y libxml2-devel libxslt-devel && pip3 install -r requirements.txt


CMD FLASK_APP=flask_server.py flask run --host=0.0.0.0
