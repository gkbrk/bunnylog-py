#!/usr/bin/env python3
import sys

sys.path.insert(0, ".")

from bunnylog import parse_line
from testsimple import *

log = parse_line("||||||||||750832e065322da9ad5fe7318978d9f3")

ok(log)
ok(log.content_hash == "750832e065322da9ad5fe7318978d9f3")

log = parse_line("||||||||||d8e8fca2dc0f896fd7cb4cb0031ba249")

ok(log)
ok(log.content_hash == "d8e8fca2dc0f896fd7cb4cb0031ba249")

done_testing()
