IMAGE=sgr0502/tw-node-skel-gyp

.PHONY: all image shell clean distclean uninstall

all: image

image:
	docker build -t $(IMAGE) .

push: image
	docker push $(IMAGE)

shell: image
	docker run --rm -it $(IMAGE) /bin/bash

uninstall:
	-docker rmi $(IMAGE)
