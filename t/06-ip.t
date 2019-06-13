#!/usr/bin/env python3
import sys

sys.path.insert(0, ".")

from bunnylog import parse_line
from testsimple import *

log = parse_line("|||||8.29.198.0")

ok(log)
ok(log.ip == "8.29.198.0")

log = parse_line("|||||2001:0db8:85a3:0000:0000:8a2e:0370:7334")

ok(log)
ok(log.ip == "2001:0db8:85a3:0000:0000:8a2e:0370:7334")

done_testing()
