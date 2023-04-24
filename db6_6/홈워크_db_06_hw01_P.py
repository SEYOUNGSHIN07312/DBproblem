from django.db import models

class Member(models.Model):
    first_name = models.TextField(blank=True)
    last_name = models.TextField()
    age = models.IntegerField()
    country = models.TextField()
    phone = models.TextField(blank=True)
    balance = models.IntegerField()

# 1) 
user1 = Member()
user1.first_name = '철수'
user1.last_name = '김'
user1.country = '서울'
user1.balance = 500
user1.save()

# 2)
user2 = Member('영철', '이', 30, '서울', '010-1234-5678', 1000)
user2.save()

# 3)
Member.objects.create('영수', '박', 21, '서울', 2000)
# 순서대로 입력되었을때 2000이 phone textfield에 매칭되므로 오류 발생