FROM node

RUN npm install castnow -g

ENTRYPOINT [ "castnow" ]
