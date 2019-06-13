#!/usr/bin/env python3
import sys

sys.path.insert(0, ".")

from bunnylog import parse_line
from testsimple import *

log = parse_line("|||||||||||CN")

ok(log)
ok(log.visitor_country == "CN")

log = parse_line("|||||||||||FR")

ok(log)
ok(log.visitor_country == "FR")

done_testing()
