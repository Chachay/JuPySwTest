# -*- coding: utf-8 -*-
"""
    Lorenz
"""
import numpy as np
from numba import jit

@jit
def lorenz():
    dt = 0.01
    n  = 200000

    a = 10.
    b = 28.
    c = 8/3

    x = np.zeros(n)
    y = np.zeros(n)
    z = np.zeros(n)

    x[1] = 0
    y[1] = 1.
    z[1] = 1.05

    for i in range(n-1):
        x[i+1] = x[i] + dt * (- a    * x[i] + a * y[i])
        y[i+1] = y[i] + dt * (- x[i] * z[i] + b * x[i] - y[i])
        z[i+1] = z[i] + dt * ( x[i]  * y[i] - c * z[i] )

    return x,y,z

gx,gy,gz = lorenz()
