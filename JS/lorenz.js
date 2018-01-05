"use strict";

const lorenz = () => {
    const dt = 0.01;
    const n  = 200000;

    const a = 10.;
    const b = 28.;
    const c = 8/3;

    let x = new Float64Array(n);
    let y = new Float64Array(n);
    let z = new Float64Array(n);

    x[0] = 0;
    y[0] = 1.;
    z[0] = 1.05;

    for(let i = 0; i < n; i++){
        x[i+1] = x[i] + dt * (- a    * x[i] + a * y[i]);
        y[i+1] = y[i] + dt * (- x[i] * z[i] + b * x[i] - y[i]);
        z[i+1] = z[i] + dt * ( x[i]  * y[i] - c * z[i] );
    }
    return [x,y,z];
};

let X = lorenz();
