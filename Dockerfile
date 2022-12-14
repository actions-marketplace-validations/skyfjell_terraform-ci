FROM ghcr.io/skyfjell/terraform-ci:tf-ci-0.0.3

WORKDIR /app
COPY . .
RUN python setup.py install
ENTRYPOINT [ "bash", "/app/main.sh"]