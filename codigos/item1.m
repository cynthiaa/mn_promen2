1; % No es un archivo de función

function y = interpolar(X, Y, x)

    return iterp1(X, Y, [x], "spline");

end

function y = E(t)

    return interpolate([0: 1800: 18000], [0, 30, 150, 400, 500, 460, 350, 230, 130, 60, 10], t);

end

function y = A(t)

    return interpolate([0: 2.5: 32.5], [0, 100, 1400, 7000, 18500, 42000, 80000, 140000, 230000, 330000, 480000, 700000, 1000000, 1100000, 1600000] , t);

end

function y = S(h, h0, C)

    if(h <= h0)
        return 0;

    return C * (h - h0) ^ (3/2);

end

function y = f(tk, yk, h0, C)

    return (E(tk) - S(yk, h0, C)) / A(yk);

end

function Y = rungeKutta4(ti, tf, step, h0, C)

    Y = [h0];

    for t = ti:step:tf

        yk = Y(lenght(Y));

        k1 = step * f(t, yk, h0, C);
        k2 = step * f(t + step/2, yk + k1/2, h0, C);
        k3 = step * f(t + step/2, yk + k2/2, h0, C);
        k4 = step * f(t + step, yk + k3, h0, C);

        Y = [Y, yk + (k1 + 2*k2 + 2*k3 + k4)/6];

    end

end
