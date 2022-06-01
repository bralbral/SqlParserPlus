
[![Docker Pulls](https://badgen.net/docker/pulls/bral1488/sql_parser_plus?icon=docker&label=pulls)](https://hub.docker.com/repository/docker/bral1488/sql_parser_plus/)
[![Docker Stars](https://badgen.net/docker/stars/bral1488/sql_parser_plus?icon=docker&label=stars)](https://hub.docker.com/repository/docker/bral1488/sql_parser_plus/)
[![Docker Image Size](https://badgen.net/docker/size/bral1488/sql_parser_plus?icon=docker&label=image%20size)](https://hub.docker.com/repository/docker/bral1488/sql_parser_plus/)


Inspired by: https://github.com/citcheese/SqlParserPlus

What is it?
-------------
This is docker containerised  version of [sql-parser](https://github.com/citcheese/SqlParserPlus)

Commands
------------
```


                       _____  ____  _      _____                               
                      / ____|/ __ \| |    |  __ \                          _   
                     | (___ | |  | | |    | |__) |_ _ _ __ ___  ___ _ __ _| |_ 
                      \___ \| |  | | |    |  ___/ _` | '__/ __|/ _ \ '__|_   _|
                      ____) | |__| | |____| |  | (_| | |  \__ \  __/ |    |_|  
                     |_____/ \___\_\______|_|   \__,_|_|  |___/\___|_|         
                                                           

                           by: Matteo Tomasini (citcheese) 
                                    Version: 0.8                                      

                    SQLParser+ - Convert SQL dumps and other leak dumps to CSVs!

    _____________________________________________________________________________
    

usage: SqlParserPlus.py [-h] [--sqlextract] [--emailsonly] [--html]
                        [--xltocsv] [--pretty] [--dumpall] [--encoding]
                        [--clean] [--cleandir] [--recursive]

optional arguments:
  -h, --help           show this help message and exit
  --recursive, -r      Use to convert/clean files within subfolders

What Do you Want to convert?:
  --sqlextract , -s    convert SQL file or folder of files to CSV
  --emailsonly , -em   only extract emails from file
  --html , -html       convert file with HTML tables to CSVs
  --xltocsv , -xl      converts each sheet of Excel file to CSV file - throw
                       in file or folder
  --pretty , -pt       converts 'pretty table' dump to CSV

SQL Dump Options:
  --dumpall, -d        grab and convert every table
  --encoding, -e       add if want to specify encoding or if getting UTF
                       errors. Best not to at first.

Post Processing Options:
  --clean , -c         clean a CSV
  --cleandir , -cd     clean a directory of CSVs
 ```


Docker
-------------
Pull latest docker image:
```
    docker pull bral1488/sql_parser_plus:latest
 ```
Show commands:
-------------
```
    docker run --rm bral1488/sql_parser_plus:latest \
    python3 ./SqlParserPlus.py --help
    
 ```

Run:
-------------

```
   docker run --rm -v /abs_path_to_dir_at_your_host:/sqlfolder  \
   bral1488/sql_parser_plus:latest  \
   python3 ./SqlParserPlus.py --sqlextract /sqlfolder --dumpall --recursive
```

*WARNING:* the --dumpall key must be set, otherwise a [gui](window.JPG) that is not available in the container will be called.


