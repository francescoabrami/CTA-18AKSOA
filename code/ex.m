%% ESEMPIO CODICE

bode(G)

%%

G = tf(10, [1 5 0]); 

bode(G)

[mag,phase,w] = bode(G);

%%

G = tf(10, [1 5 0]); 
bode(G);
grid on;
 


