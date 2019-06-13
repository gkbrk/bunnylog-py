#!/usr/bin/env python3
import sys

sys.path.insert(0, ".")

from bunnylog import parse_line
from testsimple import *

log = parse_line("||1560425746552")

ok(log)
ok(log.timestamp == 1560425746552)

log = parse_line("||1560425746593")

ok(log)
ok(log.timestamp == 1560425746593)

done_testing()
