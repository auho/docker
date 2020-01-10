import airflow
from airflow import models, settings
from airflow.contrib.auth.backends.password_auth import PasswordUser
user = PasswordUser(models.User())
user.username = 'auho'
user.email = 'auho@163.com'
user.password = '123456'
session = settings.Session()
session.add(user)
session.commit()
session.close()
exit()
