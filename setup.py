try:
    from setuptools import setup, find_packages
except ImportError:
    from ez_setup import use_setuptools
    use_setuptools()
    from setuptools import setup, find_packages

setup(
    name='twitter_bootstrap',
    version='0.1',
    description='''Provides the Twitter bootstrap as static files and
    templates.''',
    author='Jonathan Gardner',
    author_email='jgardner@jonathangardner.net',
    url='http://tech.jonathangardner.net/wiki/Twitter_bootstrap',
    packages=find_packages(exclude=['ez_setup']),
    include_package_data=True,
    zip_safe=False,
)
