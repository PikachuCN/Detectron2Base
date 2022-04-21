FROM python:3.9.10-slim-buster
LABEL maintainer="happy61@gmail.com"
RUN python -m pip install --upgrade pip
RUN pip3 install torch==1.10.0+cpu torchvision==0.11.0+cpu -f https://download.pytorch.org/whl/cpu/torch_stable.html
RUN apt update
RUN apt install libgl1-mesa-glx gcc -y
# 安装detectron2 组件
RUN pip install opencv-contrib-python
RUN pip install wheel
RUN pip install pycocotools
RUN pip install detectron2 -f https://dl.fbaipublicfiles.com/detectron2/wheels/cpu/torch1.10/index.html --trusted-host dl.fbaipublicfiles.com
RUN pip install uvicorn fastapi python-multipart
RUN apt uninstall gcc -y