
[![Docker Pulls](https://badgen.net/docker/pulls/bral1488/sql_parser_plus?icon=docker&label=pulls)](https://hub.docker.com/repository/docker/bral1488/sql_parser_plus/)
[![Docker Stars](https://badgen.net/docker/stars/bral1488/sql_parser_plus?icon=docker&label=stars)](https://hub.docker.com/repository/docker/bral1488/sql_parser_plus/)
[![Docker Image Size](https://badgen.net/docker/size/bral1488/sql_parser_plus?icon=docker&label=image%20size)](https://hub.docker.com/repository/docker/bral1488/sql_parser_plus/)


Inspired by: https://github.com/citcheese/SqlParserPlus

What is it?
-------------
This is docker containerised  version of [sql-parser](https://github.com/citcheese/SqlParserPlus)


Docker
-------------
Pull latest docker image:
```
    docker pull bral1488/sql_parser_plus:latest
 ```
Show commands:
-------------
```
    docker run --rm bral1488/sql_parser_plus:latest
 ```

Run:
-------------

```
   docker run --rm -v /abs_path_to_dir_at_your_host:/sqlfolder  test  python3 ./SqlParserPlus.py --sqlextract /sqlfolder --dumpall
```

*WARNING:* the --dumpall key must be set, otherwise a [gui](window.JPG) that is not available in the container will be called.


