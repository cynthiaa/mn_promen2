C = 30;
h0 = 30;
ti = 0;
tf = 30000;
step = 100;
factor = 1;

% item1
source("item1.m");

printf("ítem 1:\n\n");
H = runge_kutta4(ti, tf, step, h0, C, factor)

% item2
source("item2.m");

printf("Grafico ítem 2:\n\n");

T = [0: 100: 30000];

graficar_item2(H, T, 'grafico_item2.png');

printf("Máximo de H y posición:\n\n");

calcular_maximo(H, T)

% item3
source("item3.m");

printf("Grafico ítem 3:\n\n");

graficar_item3(H, T, C, 'grafico_item3.png', factor);

printf("Estimación de R y D: \n\n");

calcular_picos(H, T, C, factor)

% item4
source("item4.m");

printf("Tabla ítem 4:\n\n");

tabla_item4(H, T, C)
