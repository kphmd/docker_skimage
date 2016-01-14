FROM python:2.7.10

## Install
RUN apt-get update \
 && apt-get install -y liblapack-dev libblas-dev gfortran \
 && pip install Numpy \
 && pip install SciPy \
 && pip install scikit-learn==0.15.2 \
 && pip install pillow \
 && pip install scikit_image \
 && rm -rf /root/.cache/pip \
 && apt-get purge -y gfortran \
 && apt-get autoremove -y \
 && apt-get clean -y


