from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import insitute, classes, student, teacher
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from django.contrib import messages
from django.urls import reverse_lazy


def students(request):
    context = {
        'student': student.objects.all()
    }
    return render(request, 'myInstitute/students.html', context)


class studentListView(ListView):
    model = student
    template_name = 'myInstitute/students.html'
    context_object_name = 'student'
    ordering = ['lastName']


class studentDetailView(DetailView):
    model = student


class studentCreateView(LoginRequiredMixin, CreateView):
    model = student
    fields = ['firstName', 'lastName', 'fatherName', 'nationalCode', 'birthday',
              'homeNumber', 'cellphoneNumber', 'address', 'email', 'termNumber', 'paymentTerm', 'paymentBook', 'paymentState', 'image']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)


class studentUpdateView(LoginRequiredMixin, UpdateView):
    model = student
    fields = ['firstName', 'lastName', 'fatherName', 'nationalCode', 'birthday',
              'homeNumber', 'cellphoneNumber', 'address', 'email', 'termNumber', 'paymentTerm', 'paymentBook', 'paymentState', 'image']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)


class studentDeleteView(LoginRequiredMixin, DeleteView):
    model = student
    success_url = '/students'


def teachers(request):
    context = {
        'teacher': teacher.objects.all()
    }
    return render(request, 'myInstitute/teachers.html', context)


class teacherListView(ListView):
    model = teacher
    template_name = 'myInstitute/teachers.html'
    context_object_name = 'teacher'
    ordering = ['lastName']


class teacherDetailView(DetailView):
    model = teacher


class teacherCreateView(LoginRequiredMixin, CreateView):
    model = teacher
    fields = ['firstName', 'lastName', 'fatherName', 'nationalCode', 'birthday',
              'homeNumber', 'cellphoneNumber', 'address', 'email', 'image']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)


class teacherUpdateView(LoginRequiredMixin,  UpdateView):
    model = teacher
    fields = ['firstName', 'lastName', 'fatherName', 'nationalCode', 'birthday',
              'homeNumber', 'cellphoneNumber', 'address', 'email', 'image']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)


class teacherDeleteView(LoginRequiredMixin, DeleteView):
    model = teacher
    success_url = '/teachers'


def classess(request):
    context = {
        'classes': classes.objects.all()
    }
    return render(request, 'myInstitute/classess.html', context)


class classessListView(ListView):
    model = classes
    template_name = 'myInstitute/classess.html'
    context_object_name = 'classes'
    ordering = ['term']


class classessDetailView(DetailView):
    model = classes


class classessCreateView(LoginRequiredMixin, CreateView):
    model = classes
    fields = ['term', 'classRoom', 'startDate', 'finishDate', 'days',
              'startTime', 'finishTime', 'paymentTerm', 'paymentBook', 'teacherNumber']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)


class classessUpdateView(LoginRequiredMixin,  UpdateView):
    model = classes
    fields = ['term', 'classRoom', 'startDate', 'finishDate', 'days',
              'startTime', 'finishTime', 'paymentTerm', 'paymentBook', 'teacherNumber']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)


class classessDeleteView(LoginRequiredMixin, DeleteView):
    model = classes
    success_url = '/classes'


def archive(request):
    return render(request, 'myInstitute/archive.html')


def cash(request):
    context = {
        'student': student.objects.filter(paymentState='نقدی')
    }
    return render(request, 'myInstitute/cash.html', context)


def installment(request):
    context = {
        'student': student.objects.filter(paymentState='اقساط')
    }
    return render(request, 'myInstitute/installment.html', context)
