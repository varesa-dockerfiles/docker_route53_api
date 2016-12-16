FROM registry.esav.fi:5000/python3

WORKDIR /

RUN git clone https://github.com/varesa/route53_api_server.git

WORKDIR /route53_api_server

RUN yum install -y libxml2-devel

RUN pip3 install -r requirements.txt

CMD bash
