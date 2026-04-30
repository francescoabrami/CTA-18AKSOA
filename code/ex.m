% Definizione sistema
G = tf(10, [1 5 0]);

% Diagramma di Bode
figure
bode(G)
grid on

exportgraphics(gcf, 'bode_plot.png', 'Resolution', 300);

% Estrazione dati
[mag, phase, w] = bode(G);

