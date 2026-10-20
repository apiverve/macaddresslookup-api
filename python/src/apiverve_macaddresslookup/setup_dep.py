from setuptools import setup, find_packages

setup(
    name='apiverve_macaddresslookup',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='MAC Address Lookup validates any MAC address and converts it across standard colon, dash, dot, and raw hex formats. On paid plans it becomes a MAC vendor lookup API, adding the device hardware vendor and OUI identifier.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/macaddresslookup?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
