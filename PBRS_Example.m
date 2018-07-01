% PROGRAMA PARA CONTROLE VIA SERIAL DO ARDUINO UTILIZANDO O MATLAB
% AUTOR: FELIPE ROQUE DE ALBUQUERQUE NETO
% CO-AUTOR: RAPHAEL DE MEDEIROS SOUTO MAIOR BALTAR

u = idinput(10000,'prbs'); %Gerar um sinal PRBS de 10000 amostras
u= u*255; %Multiplica por -255 a 255 para um range suportado pelo arduino
plot(u); % Plotagem do Gráfico
