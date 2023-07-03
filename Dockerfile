FROM redmine:latest

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - &&\
apt-get install -y nodejs

RUN apt-get install -y build-essential

RUN apt-get install -y npm
RUN npm install --global yarn

RUN apt-get install -y sqlite3

RUN bundle install