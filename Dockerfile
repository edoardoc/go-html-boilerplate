FROM golang:1.9

WORKDIR /go/src/go-html-boilerplate
#WORKDIR /go/blog/content/h2push/server/
COPY . .

RUN go-wrapper download   # "go get -d -v ./..."
RUN go-wrapper install    # "go install -v ./..."

CMD ["go-wrapper", "run"] # ["make", "serve"]

EXPOSE 7065
