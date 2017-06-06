IMAGE := a-c

build:
	docker build --tag=$(IMAGE) .

demo:
	docker run --rm -ti -v /run/docker.sock:/run/docker.sock $(IMAGE) bash -c ' \
		mkdir /src && \
		cd /src && \
		ansible-container init ansible.django-gulp-nginx  && \
		ansible-container build'
