FROM gradle:6.2.2-jre8
USER root
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -  \
	&& apt-get install -y nodejs  \
	&& rm -rf /var/lib/apt/lists/*
RUN npm install -g gulp bower yarn

RUN mkdir /home/gradle/temp
COPY ./src /home/gradle/temp/
RUN chown -R gradle:gradle /home/gradle/
USER gradle
RUN cd /home/gradle/temp && ./grailsw package
USER root
RUN rm -rf /home/gradle/temp
USER gradle