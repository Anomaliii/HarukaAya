FROM docker.pkg.github.com/intellivoid/harukaaya/image:dockerstation

RUN git clone https://gitlab.com/HarukaNetwork/OSS/HarukaAya.git -b staging /data/HarukaAya

COPY ./config.yml /data/HarukaAya

WORKDIR /data/HarukaAya

CMD ["python", "-m", "haruka"]
