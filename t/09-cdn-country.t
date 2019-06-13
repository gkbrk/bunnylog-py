#!/usr/bin/env python3
import sys

sys.path.insert(0, ".")

from bunnylog import parse_line
from testsimple import *

log = parse_line("||||||||JP")

ok(log)
ok(log.cdn_country == "JP")

log = parse_line("||||||||DE")

ok(log)
ok(log.cdn_country == "DE")

done_testing()
