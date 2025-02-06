FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
RUN apk add --no-cache git && \
    git clone https://github.com/sravs04-hash/CC_Lab3_PES1UG22CS315 /temp-repo && \
    cp -r /temp-repo/* . && \
    rm -rf /temp-repo
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
