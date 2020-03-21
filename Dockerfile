FROM node

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
      ffmpeg \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

RUN npm install castnow -g

ENTRYPOINT [ "castnow" ]
