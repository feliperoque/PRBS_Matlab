% PROGRAMA PARA CONTROLE VIA SERIAL DO ARDUINO UTILIZANDO O MATLAB
% AUTOR: FELIPE ROQUE DE ALBUQUERQUE NETO
% CO-AUTOR: RAPHAEL DE MEDEIROS SOUTO MAIOR BALTAR

    s = serial('COM3','BAUD',9600);
    fopen(s);
    %leitura = fscanf(s);
    
    for i = 1:10000
        
        servalue = input('Entre com letra a: ');
        fprintf(s,servalue);
    end
    
    fclose(s);
    delete(s);
    