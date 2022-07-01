FROM telethonJOKER7x/JOKER-7X:slim-buster

RUN git clone https://github.com/JOKER-7X/TelethonJOKER7x /root/userbot
WORKDIR /root/userbot

## Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
