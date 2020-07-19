FROM alpine:latest
LABEL maintainer="info@jfwenisch.com"
RUN apk update

RUN apk --no-cache add --update curl
#Oneliner due to the use of release as variable for wget which is previously curled
RUN export release=$(curl https://storage.googleapis.com/kubernetes-release/release/stable.txt);\
echo -e "Container will contain: "; \
echo -e "Alpine Version: \c" && cat /etc/alpine-release \
&& echo -e "Kubernetes version $release" ;\
curl https://storage.googleapis.com/kubernetes-release/release/$release/bin/linux/amd64/kubectl --output /usr/local/bin/kubectl;
RUN chmod +x /usr/local/bin/kubectl
ENTRYPOINT ["/usr/local/bin/kubectl"]