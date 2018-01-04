# System imports
from distutils.core import *
from distutils      import sysconfig

import numpy

# Obtain the numpy include directory.
try:
    numpy_include = numpy.get_include()
except AttributeError:
    numpy_include = numpy.get_numpy_include()

_SwigMod = Extension("_SwigMod",
                   ["SwigMod.i","Main.cpp"],
                   swig_opts=['-c++', '-py3'],
                   include_dirs = [numpy_include],
                   library_dirs = [],
                   libraries = [],
                   )

# ezrange setup
setup(  name        = "SwigMod function",
        description = "Swiged Calc",
        author      = "Chachay",
        version     = "1.0",
        ext_modules = [_SwigMod]
        )
