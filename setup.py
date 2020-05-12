from setuptools import Extension, setup
from Cython.Build import cythonize

setup(
    name='cythonAlg',
    version='1.0',
    packages=[''],
    url='https://github.com/primal100/cythonAlg',
    license='ISC',
    author='paul',
    author_email='',
    description='',
    install_requires=['cython'],
    ext_modules=cythonize([Extension("calgorithms.queue", ["calgorithms/queue.pyx"])])
)
