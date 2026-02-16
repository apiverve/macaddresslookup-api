from setuptools import setup, find_packages

setup(
    name='apiverve_macaddresslookup',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='MAC Address Lookup is a simple tool for looking up MAC address data. It returns the MAC address vendor, conversions, and more.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/macaddresslookup?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
