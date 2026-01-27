# Get Environment Variables From a File into Makefile
# https://dev.to/serhatteker/get-environment-variables-from-a-file-into-makefile-2m5l

# load the dotenv file
-include .env


setup-base-dirs:
	mkdir uploads
	mkdir extensions
	mkdir database


print-env-vars:
	@echo "Database"
	@echo "  name: $(DATABASE_NAME)"
	@echo "  username: $(DATABASE_USERNAME)"
	@echo "  password: $(DATABASE_PASSWORD)"


pg-backup:
	docker exec -t directuscms-database-1 pg_dump -U $(DATABASE_USERNAME) $(DATABASE_NAME) > database/backup.sql


pg-restore:
	cat database/backup.sql | docker exec -i directuscms-database-1 psql -U $(DATABASE_USERNAME) -d $(DATABASE_NAME)
