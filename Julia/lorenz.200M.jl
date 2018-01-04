function lorenz()
    dt = 0.01
    n  = 20000000

    a = 10.
    b = 28.
    c = 8/3

    x = zeros(n)
    y = zeros(n)
    z = zeros(n)

    x[1] = 0
    y[1] = 1.
    z[1] = 1.05

    for i = 1:n-1
        x[i+1] = x[i] + dt * (- a    * x[i] + a * y[i])
        y[i+1] = y[i] + dt * (- x[i] * z[i] + b * x[i] - y[i])
        z[i+1] = z[i] + dt * ( x[i]  * y[i] - c * z[i] )
    end
    return x,y,z
end

gx,gy,gz = lorenz()
