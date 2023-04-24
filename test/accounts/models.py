from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.
class User(AbstractUser):
    # 서로 팔로우할 필요 없으므로 False값을 기본으로 설정함
    followings = models.ManyToManyField('self', symmetrical=False, related_name='followers')