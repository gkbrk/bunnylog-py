#!/usr/bin/env python3
import sys

sys.path.insert(0, ".")

from bunnylog import parse_line
from testsimple import *

log = parse_line("|||1234")

ok(log)
ok(log.length == 1234)

log = parse_line("|||850")

ok(log)
ok(log.length == 850)

done_testing()
