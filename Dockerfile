FROM nvcr.io/nvidia/l4t-ml:r32.6.1-py3

RUN pip3 install --upgrade pip

# https://github.com/jupyterlab/jupyterlab_pygments/issues/5
RUN pip3 install --upgrade Pygments
RUN pip3 install graphviz spacy
RUN apt-get update && apt-get -y install graphviz 
# https://github.com/ipython/ipython/issues/12740
RUN pip install jedi==0.17.2
RUN pip install fastai==1.0.61
RUN pip3 install git+https://github.com/ekaschalk/jedhy.git
RUN pip3 install git+https://github.com/Calysto/calysto_hy.git
RUN python3 -m calysto_hy install
RUN apt-get update && apt-get install -y python3-tk
RUN pip3 install fire
