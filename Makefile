build:
	docker image build -t openworklabs/lotus:latest -f lotus.dockerfile .

rebuild:
	docker image build --no-cache -t openworklabs/lotus:latest -f lotus.dockerfile .

run:
	docker container run -p 1235:1235 -p 1234:1234 --detach --name lotus openworklabs/lotus:latest

run-bash:
	docker container run -p 1235:1235 -p 1234:1234 -it --entrypoint=/bin/bash --name lotus --rm openworklabs/lotus:latest

bash:
	docker exec -it lotus /bin/bash

sync-status:
	docker exec -it lotus lotus sync status

log:
	docker logs lotus -f

rm:
	docker rm lotus

