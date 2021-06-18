FROM ubuntu:20.04
COPY newsh.sh .
# RUN wget -q https://github.com/mozilla/geckodriver/releases/download/v0.26.0/geckodriver-v0.26.0-linux64.tar.gz \
# 	&& tar xvzf geckodriver-*.tar.gz \
# 	&& rm geckodriver-*.tar.gz 
# RUN export PATH=$PATH:/
# COPY geckodriver .
RUN apt update \
	&& apt install -y software-properties-common \
	&& add-apt-repository ppa:deadsnakes/ppa \
	&& apt update \
	&& apt install -y python3.8 \
    python3-pip wget

RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3.8 get-pip.py

RUN python3.8 -m pip install robotframework


# RUN apt install -y firefox


# RUN mv geckodriver /usr/local/bin \
	# && chmod a+x /usr/local/bin/geckodriver
CMD ["newsh.sh"]
# ENTRYPOINT ["sh"]
