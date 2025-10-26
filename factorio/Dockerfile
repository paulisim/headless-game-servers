FROM		debian:13-slim

COPY		entrypoint.sh /

RUN		useradd --no-create-home --shell /bin/bash factorio \
		&& mkdir --parents /factorio/saves \
		&& chown --recursive factorio: /factorio \
		&& chmod +x /entrypoint.sh

USER		factorio

ENTRYPOINT	["/entrypoint.sh"]
