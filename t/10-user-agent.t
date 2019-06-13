#!/usr/bin/env python3
import sys

sys.path.insert(0, ".")

from bunnylog import parse_line
from testsimple import *

log = parse_line("|||||||||Mozilla Firefox (Test)")

ok(log)
ok(log.user_agent == "Mozilla Firefox (Test)")

log = parse_line("|||||||||Links Browser (v1.2.3)")

ok(log)
ok(log.user_agent == "Links Browser (v1.2.3)")

done_testing()
