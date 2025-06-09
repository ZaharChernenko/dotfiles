import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from completer_context import TCompleterContext as completer


def Settings(**kwargs):
    return completer.complete(**kwargs)
