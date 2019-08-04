from django.urls import path
from .views import (studentListView, teacherListView, classessListView,
                    studentDetailView, teacherDetailView, classessDetailView,
                    studentCreateView, teacherCreateView, classessCreateView,
                    studentUpdateView, teacherUpdateView, classessUpdateView,
                    studentDeleteView, teacherDeleteView, classessDeleteView)
from . import views
from django.conf import settings
from django.conf.urls.static import static


app_name = 'myInstitute'

urlpatterns = [
    path('students/', studentListView.as_view(), name='myInstitute-students'),
    path('student/<int:pk>/', studentDetailView.as_view(),
         name='student-detail'),
    path('student/new/', studentCreateView.as_view(),
         name='student-create'),
    path('student/<int:pk>/update/', studentUpdateView.as_view(),
         name='student-update'),
    path('student/<int:pk>/delete/', studentDeleteView.as_view(),
         name='student-delete'),
    path('teachers/', teacherListView.as_view(), name='myInstitute-teachers'),
    path('teacher/<int:pk>/', teacherDetailView.as_view(),
         name='teacher-detail'),
    path('teacher/new/', teacherCreateView.as_view(),
         name='teacher-create'),
    path('teacher/<int:pk>/update', teacherUpdateView.as_view(),
         name='teacher-update'),
    path('teacher/<int:pk>/delete', teacherDeleteView.as_view(),
         name='teacher-delete'),
    path('classes/', classessListView.as_view(), name='myInstitute-classess'),
    path('classes/<int:pk>/', classessDetailView.as_view(),
         name='classes-detail'),
    path('classes/new/', classessCreateView.as_view(),
         name='classess-create'),
    path('classes/<int:pk>/update', classessUpdateView.as_view(),
         name='classes-update'),
    path('classes/<int:pk>/delete', classessDeleteView.as_view(),
         name='classes-delete'),
    path('archive/', views.archive, name='myInstitute-archive'),
    path('cash/', views.cash, name='cash'),
    path('installment/', views.installment, name='installment'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
