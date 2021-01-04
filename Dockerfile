FROM python:3.6

ENV version v10

WORKDIR /scripts
COPY scripts/requirements.txt .
RUN pip install -r requirements.txt

RUN pwd

RUN ls -la

RUN whoami

RUN wget http://public.dhe.ibm.com/systems/power/community/aix/AIXpert_Blog/nextract_${version}.tar -P /tmp

RUN ls -la /tmp

RUN chmod +x /tmp/nextract_${version}.tar

RUN ls -la /tmp

RUN tar xvf /tmp/nextract_${version}.tar

CMD ["python3"]
