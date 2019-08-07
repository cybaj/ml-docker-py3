FROM civisanalytics/civis-jupyter-python3:latest
LABEL maintainer="cybaj@naver.com"

RUN apt-get -y -qq update && \
    conda install -y pytorch-cpu torchvision-cpu -c pytorch

COPY ./Data /root/work/Data

WORKDIR /root/work

EXPOSE 8888 22
CMD jupyter notebook --NotebookApp.password='sha1:3f9b62b176e1:89e2884a52a367e31216151a4a7aeb87fb991996'  \
            --ip=0.0.0.0 --port=8888 --allow-root

