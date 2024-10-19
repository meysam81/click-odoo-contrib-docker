ARG ODOO_VERSION="18"

FROM odoo:${ODOO_VERSION}

LABEL maintainer="Meysam Azad <meysam@developer-friendly.blog>"

COPY requirements.txt /

USER root

RUN pip install -U pip -r requirements.txt && \
    rm -rf /root/.cache /root/.local /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/* /var/cache/pip/*

USER odoo:odoo
