% Definizione sistema
G = tf(10, [1 5 0]);

% Diagramma di Bode
figure
bode(G)
grid on

exportgraphics(gcf, 'bode_plot.png', 'Resolution', 300);

% Estrazione dati
[mag, phase, w] = bode(G);

% Lab 1 ss

SYS = ss(A,B,C,D) % Modello a tempo continuo
SYS = ss(A,B,C,D,T) % Modello a tempo discreto con periodo di campionamento
SYS = ss % Modello stato-spazio vuoto
SYS = ss(D) % Modello stato-spazio che rappresenta il guadagno statico D
SYS = ss(A,B,C,D,LTISYS) % Modello SS con caratteristiche ereditate da LTISYS

SYS = ss(SYS) % Converte il modello di sistema dinamico SYS in un modello SS

% Lab 1 lsim

lsim(SYS, U, T)

t = 0:0.1:5;
u = sin(t);
lsim(sys, u, t)

lsim(SYS, U, T, XO)

lsim(SYS1, SYS2, ..., U, T,XO)

lsim(sys1, 'r', sys2, 'y--', sys3, 'gx', u,t)

[Y,T] = lsim(SYS, U, ...)

length(T)

[Y,T,X] = lsim(SYS, U, ...)
