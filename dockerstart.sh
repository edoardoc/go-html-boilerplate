docker build . -t go-html
docker run -it --rm --name go-html go-html make generate_cert
docker run -it --rm --name go-html go-html make serve
