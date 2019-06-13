#!/usr/bin/env python3
import sys

sys.path.insert(0, ".")

from bunnylog import parse_line
from testsimple import *

log = parse_line("|200")

ok(log)
ok(log.status_code == 200)

log = parse_line("|201")

ok(log)
ok(log.status_code == 201)

done_testing()
