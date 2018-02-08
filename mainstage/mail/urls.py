from django.conf.urls import url
from mail.views import """YOUR_VIEW_CLASS"""

urlpatterns = [
    url(r'^url_letter/', """YOUR_VIEW_CLASS""".as_view(), name='starts'),
]