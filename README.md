# demo-supervisor

A demo project to play around with supervisor and Docker.

You might like to watch the corresponding YoutTube Video ["supervisor + Docker: mehrere Prozesse in einem Container"](https://www.youtube.com/watch?v=2W2toAnV6rc&t=1s) (german).

## Getting Started
Build the image and run the container:
```bash
docker-compose up --build
```

Open another terminal window and run `supervisorctl`:
```bash
docker-compose exec demo supervisorctl
```
Type `help` to see what commands are available.

To observe how the processes inside the container behave you could `watch ps` in another terminal window:
```bash
docker-compose exec demo watch ps
```