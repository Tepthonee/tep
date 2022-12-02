FROM Tepthonee/tep:slim-buster

#clonning repo 
RUN git clone https://github.com/Tepthonee/tep /root/tep
#working directory 
WORKDIR /root/tep
RUN apk add --update --no-cache p7zip
# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/tep/bin:$PATH"

CMD ["python3","-m","tep"]
