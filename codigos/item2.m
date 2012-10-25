1;

function graficar_item2(H, T, nombre)

    plot(T, H);

    print(nombre, '-dpng');

end

function [M, tM] = calcular_maximo(H, T)

    [M, tM] = max(H);

    tM = T[tM];

end
