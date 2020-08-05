FROM devopsdockeruh/heroku-example 
WORKDIR /mydir  
RUN rm ./config/credentials.yml.enc
RUN EDITOR=nano rails credentials:edit
CMD ["rails", "s", "-e", "production"]
