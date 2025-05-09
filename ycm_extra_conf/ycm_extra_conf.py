import os
import sys

if (module_dir := os.path.dirname(os.path.abspath(__file__))) not in sys.path:
    sys.path.insert(0, module_dir)

import completer_context as ctx


def Settings(**kwargs):
    return ctx.TCompleterContext.complete(**kwargs)
