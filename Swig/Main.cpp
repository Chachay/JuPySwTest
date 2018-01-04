#ifndef __MAIN_CPP
#define __MAIN_CPP

#include <stdlib.h>
#include "SwigMod.h"

using namespace std;
void Swig_Lorenz(double* x, int nx,
                 double* y, int ny,
                 double* z, int nz,
                 double a, double b, double c,
                 double dt, int N)
{
    for(int i = 0; i < N; ++i){
        x[i+1] = x[i] + dt * (- a    * x[i] + a * y[i]);
        y[i+1] = y[i] + dt * (- x[i] * z[i] + b * x[i] - y[i]);
        z[i+1] = z[i] + dt * ( x[i]  * y[i] - c * z[i] );
    }
}
#endif
