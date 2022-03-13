# docker_rails

Create rails project
```
docker-compose run --no-deps web rails new . --force
```

List newly created rails project files
```
ls -l
```

Give permission for the new folder/files in the project
```
sudo chown -R $USER:$USER .
```

Got new gemfile(with project changes), create image again
```
docker-compose build
```

Boot the app
```
docker-compose up
```

Create database in another terminal
```
docker-compose run railsApp rake db:create
```

View the new rails app

Go to http://localhost:3000
