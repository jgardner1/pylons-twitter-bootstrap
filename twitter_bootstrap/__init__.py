import os

def template_path():
    return os.path.join(
        os.path.dirname(os.path.abspath(__file__)),
        'templates')
    
def public_path():
    return os.path.join(
        os.path.dirname(os.path.abspath(__file__)),
        'public')
    
