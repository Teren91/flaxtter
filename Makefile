#Server
generate:
	cd flaxtter_server && serverpod generate
migration:
	cd flaxtter_server && serverpod create-migration

migrate:
	cd flaxtter_server && dart bin/main.dart --role maintenance --apply-migrations

server:
	cd flaxtter_server && dart bin/main.dart


#Flutter app
app_build:
	cd flaxtter_flutter && dart run build_runner build --delete-conflicting-outputs

app:
	cd flaxtter_flutter && flutter run -d windows --target lib/main_development.dart