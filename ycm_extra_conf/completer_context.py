from typing import Final, Optional, Type

from completers import ICompleter, TClangdCompleter


class TCompleterContext:
    LANG_TO_COMPLETER: Final[dict[str, Type[ICompleter]]] = {
        # python completer now unused, because i activate virtual env before starting vim
        # "python": TPythonCompleter,
        "cfamily": TClangdCompleter,
    }

    @classmethod
    def complete(cls, **kwargs):
        completer: Optional[Type[ICompleter]] = cls.LANG_TO_COMPLETER.get(kwargs["language"], None)
        return None if completer is None else completer.complete(**kwargs)
