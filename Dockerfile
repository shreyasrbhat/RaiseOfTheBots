FROM conda/miniconda3
RUN mkdir chatbot
COPY ./chatbot /chatbot
COPY ./requirements.txt /requirements.txt
RUN conda install --yes --file ./requirements.txt
EXPOSE 8888
WORKDIR /chatbot
