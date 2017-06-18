FROM node

RUN cd &&\
	git clone https://github.com/Tuetuopay/json-diff.git && \
	cd json-diff && \
	npm install -g iced-coffee-script && \
	npm install && \
	npm run build && \
	ln -s $(pwd)/bin/json-diff.js /usr/local/bin/json-diff && \
	chmod +x /usr/local/bin/json-diff

