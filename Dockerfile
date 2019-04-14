FROM tensorflow/tensorflow:1.8.0-devel-gpu-py3

RUN apt-get update && \
    apt-get install -y python3-pip git
RUN pip3 install numpy scipy moviepy Pillow && \
    pip3 install scikit-learn matplotlib pandas sympy nose google-cloud-storage

WORKDIR /root
