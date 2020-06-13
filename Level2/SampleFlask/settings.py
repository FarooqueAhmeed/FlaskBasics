
from forms import TLPDCA2Form, GLPDCAForm, TLPDCAForm


# database connection settings
DATABASE_USER = "root"
DATABASE_PASSWORD = "yaKhudaKhair"
DATABASE_HOST = "localhost"
DATABASE_NAME = "sampleFlaskApp"

# app config
SECRET_KEY = "SECRET_KEY_NEW"
DEBUG = "True"
ENV = "DEVELOPMENT"

# forms defined to handle the tables
TABLES = [GLPDCAForm, TLPDCAForm, TLPDCA2Form]
