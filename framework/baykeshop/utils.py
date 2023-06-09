import os
import random
import string
import uuid

from django.conf import settings
from rest_framework import renderers
from baykeshop.conf import bayke_settings


def code_random(code_length=bayke_settings.CODE_LENGTH):
    """ 生成指定位數隨機字符串方法 """
    # chars = string.ascii_letters + string.digits   # 生成a-zA-Z0-9字符串
    chars = string.digits
    strcode = ''.join(random.sample(chars, code_length))  # 生成随机的8位数字符串
    return strcode


class TemplateHTMLRenderer(renderers.TemplateHTMLRenderer):
    """ 修復為list時渲染html錯誤 """
    def get_template_context(self, data, renderer_context):
        context = super().get_template_context(data, renderer_context)
        if isinstance(context, list):
            context = {'datas': context}
        return context
    

def _file_path(file_path=settings.MEDIA_ROOT / bayke_settings.FILE_PATH):
    """ 判斷該路徑是否存在不存在則創建 """
    if os.path.exists(file_path) is False:
        os.makedirs(file_path)
    return file_path


def _file_type(file, size=5120, file_type=['.jpg', '.png', '.gif', '.bmp', '.jpeg']): 
    """判斷上傳文件類型並修改名稱
    file：用request.FILES獲取文件類型
    file_type: 允許上船的類型
    """
    if not (file.size / 1024) < size:
        print("圖片大小超過 5mb")
        return False
    names = list(os.path.splitext(file.name))
    if names[1].lower() in file_type:
        names[0] = ''.join(str(uuid.uuid4()).split('-'))
        return names
    else:
        print('圖片類型不支援')
        return False


def add_upload_file(file):
    """上傳文件
    file：用request.FILES獲取文件類型
    """
    names = _file_type(file)
    if names:
        file.name = ''.join(names)
        new_path = os.path.join(_file_path(), file.name) 
        # 开始上传
        with open(new_path, 'wb+') as f:
            for chunk in file.chunks():
                f.write(chunk)
        return file.name
    else:
        print('上傳失敗')
        return False