build:
	docker-compose up -d --build

exec:  
	docker exec -it testpy sh

list:
	docker images && docker ps -a

run:
	docker exec -it testpy python main.py

clean:
	docker stop $$(docker ps -a -q)
	docker rm $$(docker ps -a -q)
	docker rmi $$(docker images -a -q)

list_packages:
	docker exec -it testpy pip list