# https://makefiletutorial.com/

# Get Environment Variables From a File into Makefile
# https://dev.to/serhatteker/get-environment-variables-from-a-file-into-makefile-2m5l

# load the dotenv file
-include .env

default: call-greetings

#-------------------------------------------------------------------------------

print-env-vars:
	@echo "Database"
	@echo "  name: $(DATABASE_NAME)"
	@echo "  username: $(DATABASE_USERNAME)"
	@echo "  password: $(DATABASE_PASSWORD)"

#-------------------------------------------------------------------------------

docker-status:
	@docker compose ps -a --format "#{{.State}}# {{.Service}}" | sed -e 's/#running#/✅/' | sed -r 's/#[a-z]+#/❌/'

docker-check:
	@docker compose ps --format "{{.Service}} {{.State}}"

DB_SERVICE_NAME := database

docker-check-db:
	@IS_RUNNING=`docker compose ps -q $(DB_SERVICE_NAME)`
	@if [ "$(IS_RUNNING)" != "" ]; then\
		echo "The $(DB_SERVICE_NAME) is running!!!";\
	else\
		echo "The $(DB_SERVICE_NAME) is not running...";\
	fi

docker-up:
	docker compose up -d

#-------------------------------------------------------------------------------

pg-backup:
	docker exec -t directuscms-database-1 pg_dump -U $(DATABASE_USERNAME) $(DATABASE_NAME) > database/backup.sql


pg-restore:
	cat database/backup.sql | docker exec -i directuscms-database-1 psql -U $(DATABASE_USERNAME) -d $(DATABASE_NAME)

#-------------------------------------------------------------------------------

# defining a reusable code on makefile
# https://www.perplexity.ai/search/defining-a-reusable-code-on-ma-9VJODDcZQLq1PsZ8wBEnqA
define check_dir
	@if [ -d $(1) ]; then\
		echo "$(1)/ is defined";\
	else\
	 mkdir $(1);\
	 echo "$(1)/ created";\
	fi
endef

#@[ -d uploads ] && echo "uploads/ is defined" || echo "uploads/ is not defined"
check-dir-uploads:
	$(call check_dir,uploads)

setup-base-dirs:
	$(call check_dir,uploads)
	$(call check_dir,extensions)
	$(call check_dir,database)


#-------------------------------------------------------------------------------

# defining a reusable code on makefile
# https://www.perplexity.ai/search/defining-a-reusable-code-on-ma-9VJODDcZQLq1PsZ8wBEnqA
define greetings
	@echo "hello $(1)"
endef

call-greetings:
	$(call greetings,world)
