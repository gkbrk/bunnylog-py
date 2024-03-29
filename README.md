  - [NAME](#NAME)
  - [SYNOPSIS](#SYNOPSIS)
  - [DESCRIPTION](#DESCRIPTION)
  - [MODEL](#MODEL)
      - [LogEntry](#LogEntry)
  - [INTERFACE](#INTERFACE)
      - [parse\_line](#parse_line)

# NAME

bunnylog - Python module to parse BunnyCDN log files

# SYNOPSIS

``` 
  import bunnylog

  bw = 0

  with open('server.log') as logfile:
    for line in logfile:
      log = bunnylog.parse_line(line)

      bw += log.length

  print(f"Used {bw} bytes of bandwidth")
```

# DESCRIPTION

This module aims to parse the log files generated by BunnyCDN. You can
then take these and input them to your database or convert them to other
log formats.

# MODEL

## LogEntry

This module parses the log entries into *LogEntry* objects. Each object
has the following values.

  - **hit** - *bool*  
    This value indicates if a request was a cache hit

  - **status\_code** - *int*  
    The status code returned by the server

  - **timestamp** - *int*  
    The timestamp of the request

  - **length** - *int*  
    The length of the response in bytes

  - **pull\_server** - *str*  
    The ID of the pull server on BunnyCDN

  - **ip** - *str*  
    The IP address of the visitor

  - **referrer** - *str*  
    The referrer page, indicated by the referer header

  - **url** - *str*  
    The URL for the request

  - **cdn\_country** - *str*  
    The country code for the CDN node that served this request

  - **user\_agent** - *str*  
    The User-Agent header of the request

  - **content\_hash** - *str*  
    The hash of the content that was sent to the client

  - **visitor\_country** - *str*  
    The country code of the visitor

# INTERFACE

## parse\_line

Takes a log line as a string and returns a parsed LogEntry.
