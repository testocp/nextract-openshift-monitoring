FROM python:3.6

ENV version v10

WORKDIR /scripts
COPY scripts/requirements.txt .
RUN pip install -r requirements.txt

RUN pwd

RUN ls -la

RUN whoami

RUN wget http://public.dhe.ibm.com/systems/power/community/aix/AIXpert_Blog/nextract_${version}.tar 

RUN ls -la

RUN tar xvf nextract_${version}.tar

RUN chgrp -R 0 /tmp && \
      chmod -R g=u /tmp

USER 1001

CMD ["python3"]
