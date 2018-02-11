FROM elixir:latest
WORKDIR /usr/src
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install -y nodejs && apt-get install -y inotify-tools
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez
