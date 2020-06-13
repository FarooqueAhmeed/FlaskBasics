class Config(object):
      # SECRET_KEY = os.environ.get('SECRET_KEY') or 'hard to guess string'
    SECRET_KEY = '184172410'
    SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://root:yaKhudaKhair@localhost/HospitalMgtSys'
    SQLALCHEMY_COMMIT_ON_TEARDOWN = True
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    CSRF_ENABLED = True
    DEBUG = True
    #
    # @staticmethod
    # def init_app(app):
    #     pass

