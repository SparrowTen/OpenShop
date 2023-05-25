from django.apps import AppConfig


class BaykeshopConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'baykeshop'

    def ready(self) -> None:
        from . import signal