#!/usr/bin/env python3
import sys

sys.path.insert(0, ".")

from bunnylog import parse_line
from testsimple import *

log = parse_line("|||||||https://example.com")

ok(log)
ok(log.url == "https://example.com")

log = parse_line("|||||||http://example.com")

ok(log)
ok(log.url == "http://example.com")

done_testing()
