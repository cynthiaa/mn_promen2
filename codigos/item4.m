1;

source("item3.m");

function tabla_item4(H, T, C)

    tabla = [];

    for factor = 0.5:0.25:1.5

        [R, D] = calcular_picos(H, T, C, factor);
        tabla = [tabla, transpose([factor, R, D])];

    end

    printf("\nFactor\tR\tD\n");

    transpose(tabla)

end
