	FROM node:12

	WORKDIR /usr/app
        
                

	COPY ./package.json ./

	RUN npm install

	COPY ./ ./
                         
	CMD node index.js

