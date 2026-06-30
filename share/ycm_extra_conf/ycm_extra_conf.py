"""
With the switch to lsp, ycm_extra_config is no longer needed.
Clangd can be configured via .clangd files.
Python can be configured by activating the desired environment.
"""

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from completer_context import TCompleterContext


def Settings(**kwargs):
    return TCompleterContext.complete(**kwargs)
