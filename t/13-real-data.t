#!/usr/bin/env python3
import sys

sys.path.insert(0, ".")

from bunnylog import parse_line
from testsimple import *

log = parse_line("MISS|200|1560423833663|13054|13341|104.238.136.0|-|https://www.gkbrk.com/|MI|updown.io daemon 2.2|48eafbed9cde4a34bcc1b18bc1b06838|US")

ok(log)
ok(not log.hit)
ok(log.status_code == 200)
ok(log.timestamp == 1560423833663)
ok(log.length == 13054)
ok(log.pull_server == '13341')
ok(log.ip == '104.238.136.0')
ok(log.referrer == '-')
ok(log.url == 'https://www.gkbrk.com/')
ok(log.cdn_country == 'MI')
ok(log.user_agent == 'updown.io daemon 2.2')
ok(log.content_hash == '48eafbed9cde4a34bcc1b18bc1b06838')
ok(log.visitor_country == 'US')

done_testing()
