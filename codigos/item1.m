1;

function y = interpolar(X, Y, x)

    [y] = interp1(X, Y, [x], 'spline');

end

function y = E(t, factor)

    if(t > 18000)
        y = 0;

    else
        y = interpolar([0: 1800: 18001], [0, 30, 150, 400, 500, 460, 350, 230, 130, 60, 10] .* factor, t);
    end

end

function y = A(t)

    a = [0: 2.5: 35];
    b = [0, 100, 1400, 7000, 18500, 42000, 80000, 140000, 230000, 330000, 480000, 700000, 1000000, 1100000, 1600000];

    y = interpolar(a, b, t);

end

function y = S(h, h0, C)

    if(h <= h0)
        y = 0;

    else
        y = C * (h - h0) ^ (3/2);
    end

end

function y = f(tk, yk, h0, C, factor)

    y = (E(tk, factor) - S(yk, h0, C)) / A(yk);

end

function Y = runge_kutta4(ti, tf, step, h0, C, factor)

    Y = [h0];

    for t = ti:step:(tf - step)

        yk = Y(length(Y));

        k1 = step * f(t, yk, h0, C, factor);
        k2 = step * f(t + step/2, yk + k1/2, h0, C, factor);
        k3 = step * f(t + step/2, yk + k2/2, h0, C, factor);
        k4 = step * f(t + step, yk + k3, h0, C, factor);

        Y = [Y, yk + (k1 + 2*k2 + 2*k3 + k4)/6];

    end

end
