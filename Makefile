all:
	docker compose stop && docker compose down && docker compose build && docker compose up

clean:
	docker builder prune

fclean: clean
	docker system prune -a --force --volumes
	clear
	docker system df
