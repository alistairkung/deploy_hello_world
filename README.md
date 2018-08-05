# Hello World App

This is a simple app with one endpoint:

`GET /welcome`

response:
```
{
  "message"=>"Hello World!"
}
```

View at: http://localhost:4567/welcome

## Requirements

- Ruby 2.5 >=
- Docker. You can find more info here: https://docs.docker.com/install/linux/docker-ce/ubuntu/

## Development

In order to boot the up the app you need to run the following command that will
launch the web server at http://localhost:4567:

```
docker-compose up
```

## Test

```
docker-compose run --rm app bundle exec rspec
```

## Production

- Install dependencies by running: `bundle install`
- run:

```
    bundle exec rackup -p #chosen port
```

