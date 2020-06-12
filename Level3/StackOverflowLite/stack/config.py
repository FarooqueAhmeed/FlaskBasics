class DevConfig:
    my_password="yaKhudaKhair"
    # SQLALCHEMY_ECHO=True
    SQLALCHEMY_DATABASE_URI='mysql://root:{}@localhost/stack'.format(my_password)
    SQLALCHEMY_TRACK_MODIFICATIONS=False
    SECRET_KEY='iamsecret'
    DEBUG=True
