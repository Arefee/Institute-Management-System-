from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.urls import reverse


class insitute(models.Model):
    name = models.CharField(max_length=20)
    password = models.CharField(max_length=20)
    image = models.CharField(max_length=500)


class teacher(models.Model):
    firstName = models.CharField(max_length=20)
    lastName = models.CharField(max_length=20)
    fatherName = models.CharField(max_length=20)
    nationalCode = models.BigIntegerField(max_length=10, unique=True)
    teacherNumber = models.AutoField(primary_key=True)
    birthday = models.DateField()
    homeNumber = models.BigIntegerField(max_length=11)
    cellphoneNumber = models.BigIntegerField(max_length=11)
    address = models.CharField(max_length=500)
    email = models.EmailField()
    image = models.ImageField(upload_to='image', blank=True)

    def get_absolute_url(self):
        return reverse('myInstitute:teacher-detail', kwargs={'pk': self.pk})


class classes(models.Model):
    term = models.CharField(max_length=20)
    teacherNumber = models.ForeignKey(teacher, on_delete=models.CASCADE)
    classRoom = models.CharField(max_length=20)
    termNumber = models.AutoField(primary_key=True)
    startDate = models.DateField()
    finishDate = models.DateField()
    days = models.CharField(max_length=100)
    startTime = models.TimeField()
    finishTime = models.TimeField()
    paymentTerm = models.IntegerField(max_length=10)
    paymentBook = models.BigIntegerField(max_length=10)

    def get_absolute_url(self):
        return reverse('myInstitute:classes-detail', kwargs={'pk': self.pk})


class student(models.Model):
    firstName = models.CharField(max_length=20)
    lastName = models.CharField(max_length=20)
    fatherName = models.CharField(max_length=20)
    nationalCode = models.BigIntegerField(max_length=10, unique=True)
    studentNumber = models.AutoField(primary_key=True)
    birthday = models.DateField()
    homeNumber = models.BigIntegerField(max_length=11)
    cellphoneNumber = models.BigIntegerField(max_length=11)
    address = models.CharField(max_length=500)
    email = models.EmailField()
    termNumber = models.ForeignKey(classes, on_delete=models.CASCADE)
    image = models.ImageField(upload_to='image', blank=True)
    paymentTerm = models.IntegerField(max_length=10)
    paymentBook = models.BigIntegerField(max_length=10)
    paymentState = models.CharField(max_length=20)

    def get_absolute_url(self):
        return reverse('myInstitute:student-detail', kwargs={'pk': self.pk})

    def __str__(self):
        return f'student'
