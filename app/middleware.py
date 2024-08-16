from django.http import HttpResponse
from django.utils.deprecation import MiddlewareMixin

class HealthCheckMiddleware(MiddlewareMixin):
    def process_request(self, request):
        # add any custom service checks here and return status
        if request.META["PATH_INFO"] == "/ping/":
            return HttpResponse("pong")