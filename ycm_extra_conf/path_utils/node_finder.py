import operator
import os
from collections.abc import Callable, Sequence
from dataclasses import dataclass
from typing import Any, Generic, Protocol, TypeVar


def bfs_node_upwards(source_dir_path: str, nodes: Sequence[str]) -> str | None:
    """
    Searches for specified files/directories in the current directory and its direct ancestors.
    Returns the first matching node found (prioritizing order in nodes list)
    """

    current_dir, next_dir = source_dir_path, os.path.dirname(source_dir_path)
    while current_dir != next_dir:  # until we reach the root
        for node in nodes:
            path_to_node: str = os.path.join(current_dir, node)
            if os.path.exists(path_to_node):
                return path_to_node

        current_dir = next_dir  # going up
        next_dir = os.path.dirname(current_dir)

    return None


class ComparisonProtocol(Protocol):
    def __lt__(self, other: Any, /) -> bool:
        raise NotImplementedError

    def __gt__(self, other: Any, /) -> bool:
        raise NotImplementedError


T = TypeVar("T", bound=ComparisonProtocol)


@dataclass(frozen=True, slots=True, kw_only=True)
class TPathWithKey(Generic[T]):
    path: str
    key: T


def bfs_node_upwards_with_key(
    source_dir_path: str, nodes: Sequence[str], key: Callable[[str], T], reverse: bool = False
) -> str | None:
    comp: Callable[[T, T], bool] = operator.gt if reverse else operator.lt

    current_dir, next_dir = source_dir_path, os.path.dirname(source_dir_path)
    while current_dir != next_dir:
        most_preferred_path_with_key: TPathWithKey[T] | None = None
        for node in nodes:
            node_current_path: str = os.path.join(current_dir, node)
            if os.path.exists(node_current_path):
                node_key: T = key(node_current_path)
                if most_preferred_path_with_key is None or comp(node_key, most_preferred_path_with_key.key):
                    most_preferred_path_with_key = TPathWithKey(path=node_current_path, key=node_key)

        if most_preferred_path_with_key is not None:
            return most_preferred_path_with_key.path

        current_dir = next_dir
        next_dir = os.path.dirname(current_dir)

    return None


def bfs_newest_node_upwards(source_dir_path: str, nodes: Sequence[str]) -> str | None:
    """
    Same as bfs_node_upwards, but returns the node that is newest by modification date.
    """

    return bfs_node_upwards_with_key(source_dir_path, nodes, os.path.getmtime, True)
