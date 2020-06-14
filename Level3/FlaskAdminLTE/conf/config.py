import os

basedir = os.path.abspath(os.path.dirname(__file__))


class Config:
    SECRET_KEY = '!MyFish@#'
    DB_HOST = '127.0.0.1'
    DB_USER = 'root'
    DB_PASSWD = 'yaKhudaKhair'
    DB_DATABASE = 'adminlte'
    ITEMS_PER_PAGE = 10
    JWT_AUTH_URL_RULE = '/api/auth'

    @staticmethod
    def init_app(app):
        pass


class DevelopmentConfig(Config):
    DEBUG = True


class TestingConfig(Config):
    TESTING = True


class ProductionConfig(Config):
    PRODUCTION = True


config = {
    'development': DevelopmentConfig,
    'testing': TestingConfig,
    'production': ProductionConfig,
    'default': DevelopmentConfig
}
