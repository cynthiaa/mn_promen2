1;

source("item1.m");

function [vectorE, vectorS] = calcular_vectores(H, T, C, factor)

    vectorS = [];

    for h:H

        vectorS = [vectorS, S(h, H(1), C)];

    end

    vectorE = [];

    for t:T

        vectorE = [vectorE, E(t, factor)];

    end

end

function graficar_item3(H, T, C, nombre, factor)

    [vectorE, vectorS] = calcular_vectores(H, T, C, factor);

    plot(T, vectorE);
    plot(T, vectorS);

    print(nombre, '-dpng');

end

function [R, D] = calcular_picos(H, T, C, factor)

    [vectorE, vectorS] = calcular_vectores(H, T, C, factor);

    [maxE, posMaxE] = max(vectorE);
    [maxS, posMaxS] = max(vectorS);

    R = maxE / maxS;

    D = abs(T(posMaxE) - T(posMaxS));

end
