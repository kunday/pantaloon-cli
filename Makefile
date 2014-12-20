image_namespace=kunday
name=pantaloon-yml-parser

install:
	docker build -t ${image_namespace}/${name} .
	docker tag ${image_namespace}/${name} ${image_namespace}/${name}:latest
pull:
	docker pull docker-registry.delivery.realestate.com.au/shinkansen/ubuntu-ruby2.1:latest
	docker pull docker-registry.delivery.realestate.com.au/listings/pseeker-deploy:latest
push:
	docker push docker-registry.delivery.realestate.com.au/listings/pseeker-deploy:latest
