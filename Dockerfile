FROM               docker.io/python3.6
RUN                mkdir /app
COPY               ./ /app/
WORKDIR            /app
RUN                pip3.6 install -r requirement.txt
COPY               run.sh /app/run.sh
ENTRYPOINT         ["bash", "/app/run.sh" ]

