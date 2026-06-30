from abc import ABC, abstractmethod


class ICompleter(ABC):
    """Abstract base class for completers."""

    @classmethod
    @abstractmethod
    def complete(cls, **kwargs) -> dict:
        raise NotImplementedError
