try:
    from setuptools import setup, find_packages
except ImportError:
    from ez_setup import use_setuptools
    use_setuptools()
    from setuptools import setup, find_packages

setup(
    name='twitter_bootstrap',
    version='0.1',
    description='',
    author='',
    author_email='',
    url='',
    packages=find_packages(exclude=['ez_setup']),
    include_package_data=True,
    test_suite='nose.collector',
    package_data={'twitter_bootstrap': ['i18n/*/LC_MESSAGES/*.mo']},
    #message_extractors={'twitter_bootstrap': [
    #        ('**.py', 'python', None),
    #        ('templates/**.mako', 'mako', {'input_encoding': 'utf-8'}),
    #        ('public/**', 'ignore', None)]},
    zip_safe=False,
)
