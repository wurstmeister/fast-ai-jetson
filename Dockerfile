#FROM nvcr.io/nvidia/l4t-pytorch:r32.4.2-pth1.5-py3
#FROM nvcr.io/nvidia/l4t-pytorch:r32.6.1-pth1.9-py3
FROM nvcr.io/nvidia/l4t-ml:r32.6.1-py3

RUN apt-get update && apt-get install -y libfreetype6-dev 

RUN pip3 install --upgrade pip

#RUN BLIS_ARCH="generic" pip3 install numpy fastai blis --no-binary blis

RUN apt-get update && apt-get install -y libxml2-dev libxslt1-dev
RUN pip3 install jupyter notebook jupyter_contrib_nbextensions fastbook
RUN pip3 install graphviz
RUN apt-get update && apt-get -y install graphviz 
