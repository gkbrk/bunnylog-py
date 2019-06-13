#!/usr/bin/env python3
import sys

sys.path.insert(0, ".")

from bunnylog import parse_line
from testsimple import *

log = parse_line("MISS")

ok(log)
ok(not log.hit)

log = parse_line("HIT")

ok(log)
ok(log.hit)

done_testing()
