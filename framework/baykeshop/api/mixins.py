from rest_framework.response import Response
from rest_framework import status
from rest_framework.settings import api_settings


class CheckVerifyCodeMixin:
    """ 验证码单独效验 """
    
    def verify(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        self.check_code(serializer)
        headers = self.get_success_headers(serializer.data)
        return Response(serializer.data, status=status.HTTP_200_OK, headers=headers)
    
    def check_code(self, serializer):
        # 验证
        serializer.is_valid(raise_exception=True)

    def get_success_headers(self, data):
        try:
            return {'Location': str(data[api_settings.URL_FIELD_NAME])}
        except (TypeError, KeyError):
            return {}
        
    

        