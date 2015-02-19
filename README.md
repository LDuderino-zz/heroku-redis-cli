# redis-cli

`redis-cli` is a tool to build redis command line interface binary for use in a Heroku
Cedar-14 application. It relies on Docker. It's intended to give access to redis instances
over a secure network.

## Usage

Install [docker](https://www.docker.io/).

Check the available redis versions at http://download.redis.io/releases

Build:

```
$ docker build -t your-username/redis-cli .
$ docker run -i -v ~/redis-cli:/tmp/rcli -e REDIS_VERSION=2.8.19 your-username/redis-cli
```

This will build redis cli and place the resulting binaries in
`~/redis-cli`.

```
Usage: redis-cli [OPTIONS] [cmd [arg [arg ...]]]
  -h                Server hostname (default: 127.0.0.1)
  -p                Server port (default: 6379)
  -s                Server socket (overrides hostname and port)
  -a                Password to use when connecting to the server
  -r                Execute specified command N times
  -n                Database number
  -x                Read last argument from STDIN
  -d                Multi-bulk delimiter in for raw formatting (default: \n)
  --raw             Use raw formatting for replies (default when STDOUT is not a tty)
  --help            Output this help and exit
  --version         Output version and exit
```
