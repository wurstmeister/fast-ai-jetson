#FROM nvcr.io/nvidia/l4t-pytorch:r32.4.2-pth1.5-py3
#FROM nvcr.io/nvidia/l4t-pytorch:r32.6.1-pth1.9-py3
FROM nvcr.io/nvidia/l4t-ml:r32.6.1-py3

#RUN apt-get update && apt-get install -y libfreetype6-dev 

RUN pip3 install --upgrade pip

#RUN BLIS_ARCH="generic" pip3 install numpy fastai blis --no-binary blis

#RUN apt-get update && apt-get install -y libxml2-dev libxslt1-dev
#RUN pip3 install jupyter notebook jupyter_contrib_nbextensions fastbook
# https://github.com/jupyterlab/jupyterlab_pygments/issues/5
RUN pip3 install --upgrade Pygments
RUN pip3 install graphviz spacy
RUN apt-get update && apt-get -y install graphviz 
# https://github.com/ipython/ipython/issues/12740
RUN pip install jedi==0.17.2
RUN pip install --no-deps fastai==1.0.61
# https://github.com/klausharbo/clojupyter-docker/blob/master/clojupyter/Dockerfile


#RUN apt-get update && apt-get install -y curl openjdk-8-jdk clojure
#RUN apt-get update && apt-get install rlwrap
#RUN curl -O https://download.clojure.org/install/linux-install-1.10.2.774.sh && chmod +x linux-install-1.10.2.774.sh
#RUN bash linux-install-1.10.2.774.sh
 
#RUN	curl -o /usr/local/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein \
# 	&& chmod +x /usr/local/bin/lein \
# 	&& lein self-install

#ENV NOTEBOOK_PATH $HOME/notebooks
#ENV LEIN_ROOT 1
#ENV CLOJUPYTER_VERSION 0.3.2
#ENV CLOJUPYTER_PATH $HOME/clojupyter-$CLOJUPYTER_VERSION
#RUN	mkdir -p $NOTEBOOK_PATH \
#	&& git clone https://github.com/clojupyter/clojupyter $CLOJUPYTER_PATH
#WORKDIR $CLOJUPYTER_PATH
#RUN git checkout $CLOJUPYTER_VERSION
	#&& make install

