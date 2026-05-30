fs = 10000;            % sampling frequency
fc = 2000;             % cut-off frequency
r_f = fc/fs;

N = 20;                % filter order
M = N + 1;             % number of taps
L = N / 2;             % group delay

% --- filter impulse response (hamming window) ---
n = 0:1:M-1;
h = 2*r_f*sinc(2*r_f*(n-L));
h = h .* hamming(M)';

% --- test signal ---
f1 = 500;  f2 = 3500;
t  = 0:(1/fs):(5/f1);
real_signal  = 0.4*sin(2*pi*f1*t);
noise_signal = 0.6*sin(2*pi*f2*t);
mixed        = real_signal + noise_signal;

% --- filter ---
output = conv(mixed, h, 'same');

% --- plot ---
plot(t, real_signal, 'r--', 'LineWidth', 2, 'DisplayName','real signal (500Hz)');
hold on;
plot(t, mixed,  'g',  'DisplayName','Input (500Hz + 3500Hz)');
plot(t, output, 'b--.', 'LineWidth', 2, 'DisplayName','Filtered Output');
title("The comparison of the mixed signal and filtered output");
xlabel("time[s]"); ylabel("signal");
legend('Location','northeast');
print('comparison.png','-dpng');
