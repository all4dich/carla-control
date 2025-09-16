FROM python:3.10
LABEL authors="Sunjoo Park<all4dich@gmail.com>"
WORKDIR /app
RUN pip install --no-cache-dir carla==0.9.15 opencv-python pygame numpy Pillow shapely networkx
#ENTRYPOINT ["top", "-b"]