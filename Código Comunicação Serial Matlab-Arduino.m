% PROGRAMA PARA CONTROLE VIA SERIAL DO ARDUINO UTILIZANDO O MATLAB
% AUTOR: FELIPE ROQUE DE ALBUQUERQUE NETO
% CO-AUTOR: RAPHAEL DE MEDEIROS SOUTO MAIOR BALTAR
% CREDITOS: SIMON MONK & WAGNER RAMBO

% --- Configuração da porta ---

	ComTest = serial('COM4');
	
% --- Configuração dos parâmentros da porta ---

	set(ComTest, 'BaudRate', 9600);
	set(ComTest, 'DataBits', 8);
	set(ComTest, 'Parity', 'none');
	set(ComTest, 'StopBits', 1);
	set(ComTest, 'FlowControl', 'none');
	
% --- Configurando Tamanho do Buffer ---
	
	set(ComTest, 'inputBufferSize', 512);
	
% --- Tempo de Recebimento de Algum Dado(ms) ---
	
	set(ComTest, 'Timeout', 5000);
	
% --- Abrindo a Porta ---
	
	fopen(ComTeste);
	
% --- Plotagem de Gráfico ---

figure(' Comunicação Serial Matlab - Arduino');
title('Comunicação Serial');
xlabel('Numero de Amostras');
ylabel('PRBS');
grid on;
hold on;
...


% --- Envio de Dados ---
	
	fprintf(ComTest,'%u',Dado_pwm2a);
	...
	

% --- Recebimento dos dados ---
	
	Dado_pwm2a = fread(ComTest,pwm2a);
	...
	
% --- Setando tempo de resposta ---
	
	set(ComTest, 'Timeout', 5000);

% --- Fechamento das Portas ---
	
	fclose(ComTest);
	delete(ComTest);
	clear ComTest;
