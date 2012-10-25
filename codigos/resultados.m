C = 30;
h0 = 30;
ti = 0;
tf = 30000;
step = 100;

% item1
source("item1.m");

printf("Item 1:\n\n");
H = runge_kutta4(ti, tf, step, h0, C, 1)

% item2
source("item2.m");

printf("Grafico Item 2:\n\n");

T = [0: 100: 30000];

graficar_item2(H, T, 'grafico_item2.png');

printf("Máximo Item 2:\n\n");

% item3
source("item3.m");

printf("Grafico Item 3:\n\n");

graficar_item3(H, T, 'grafico_item3.png', factor);

% item4
source("item4.m");

printf("Tabla Item 4:\n\n");

tabla_item4(H, T);
