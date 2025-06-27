import os
from typing import Final, Optional

from completers.interface import ICompleter
from path_utils import bfs_node_upwards


class TPythonCompleter(ICompleter):
    VENV_NODES: Final[tuple[str, ...]] = (
        os.path.normpath(".venv/bin/python3"),
        os.path.normpath("venv/bin/python3"),
        os.path.normpath("virtualenv/bin/python3"),
    )
    DEFAULT_PYTHON: Final[str] = "python3"

    @classmethod
    def find_python_path(cls, source_dir_path: str) -> str:
        path: Optional[str] = bfs_node_upwards(source_dir_path, cls.VENV_NODES)
        return cls.DEFAULT_PYTHON if path is None else path

    @classmethod
    def complete(cls, **kwargs) -> dict:
        filename: str = kwargs["filename"]
        return {"interpreter_path": cls.find_python_path(os.path.dirname(filename))}
