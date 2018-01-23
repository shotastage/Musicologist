# -*- encoding:utf-8 -*-

from setuptools import setup, find_packages
import sys

sys.path.append('./musicologist')
sys.path.append('./tests')

if __name__ == "__main__":
    setup(
        name = "musicologist",
        version='0.0.1',
        author = "Shota Shimazu",
        author_email = "hornet.live.mf@gmail.com",
        packages = find_packages(),
        install_requires=[
            "",
        ],
        entry_points = {
            'console_scripts':[
                'musicologist = musicologist.bin:main',
            ],
        },
        description = "Musicologist",
        long_description = "Musicologist",
        url = "https://github.com/shotastage/django-console/",
        license = "Apache",
        platforms = ["POSIX", "Windows", "Mac OS X"],
        test_suite = "musicologist_test.suite",
    )
