FROM devopsdockeruh/heroku-example 
WORKDIR /mydir  
RUN EDITOR=nano rails credentials:edit
RUN rails db:migrate RAILS_ENV=production
CMD ["rails", "s", "-e", "production"]
