%module SwigMod

%{
    #define SWIG_FILE_WITH_INIT
    #include "SwigMod.h"
%}

%include "numpy.i"

%init %{
    import_array();
%}

%apply (double* INPLACE_ARRAY1, int DIM1){(double* x, int nx),
                                     (double* y, int ny),
                                     (double* z, int nz)}

%include "SwigMod.h"
