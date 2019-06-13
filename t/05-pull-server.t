#!/usr/bin/env python3
import sys

sys.path.insert(0, ".")

from bunnylog import parse_line
from testsimple import *

log = parse_line("||||55321")

ok(log)
ok(log.pull_server == "55321")

log = parse_line("||||55312")

ok(log)
ok(log.pull_server == "55312")

done_testing()
