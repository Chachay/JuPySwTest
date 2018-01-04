# -*- coding: utf-8 -*-
"""
    Lorenz
"""
import numpy as np
import _SwigMod as SwigMod

def lorenz():
    dt = 0.01
    n  = 20000000

    a = 10.
    b = 28.
    c = 8/3

    x = np.zeros(n)
    y = np.zeros(n)
    z = np.zeros(n)

    x[0] = 0
    y[0] = 1.
    z[0] = 1.05

    SwigMod.Swig_Lorenz(x,y,z, a,b,c,dt,n)

    return x,y,z

gx,gy,gz = lorenz()
