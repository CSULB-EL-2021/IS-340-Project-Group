app :="docker.test"

build: 
	docker build -t $(app) .

run: 
	docker run -d -p 3000:80 \
  --name=$(app) \
  -v $(PWD):/app $(app)