load ../data/dryer_data.mat %load dryer2 (te lo da mas facil)

u = dryer.input;    y = dryer.output; % Separa la informacion de entrada y salida de la tambla 
u = u - mean(u); % Le quita la componenente dc
u = u - min(u); %hace que el primero empiece en 0 hacia arriba
y = y - y(1); %hace que el priemr dato empiece desde 0
Ts = 0.08;     Fs = 1/Ts; %

% ver espectro de u.
U = fft(u);   U = fftshift(U);
N = length(u);          % number of samples
f = (0:N-1)*(Fs/N);     % frequency range
pU = 10*log10(abs(U).^2/N);    % power of the DFT
%plot( f( 1:floor(N/2) ) , pU(1:floor(N/2)) )
%xlabel('Frequency')
%ylabel('Power')
%pause

% 1. drifts a detrending.
%u = input;   y = output;
%figure(1)
%plot(u)
%figure(2)
%plot(y)
%u = u - mean(u);    y = y - mean(y);


%data = iddata(y, u , Ts);

%. Impulse estimation.
%ghat = cra(data);
%. Impulse estimation.
%sys1 = impulseest(data);
%figure(1)
%step(sys1, 'b');

% frecuencia
%G = spafdr(data);
%figure(2)
%bode(G)

%sys_e = arx(data, [2 2 3]);
%sys_e

%sys_e = armax(data, [3 3 2 2]);
%sys_e
