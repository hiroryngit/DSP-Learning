% sampling frequency
fs = 10000;
% cut-off frequency
fc = 2000;

% the frequency ratio
r_f = fc/fs;


% the order of low-pass filter
N = 30;

% the length of low-pass filter
M = N + 1;

% the group delay is given by L / fs
L = N / 2;

% the time domain impluse signal
n = 0:1:M - 1; %time-step
h = 2*r_f*sinc(2*r_f*(n-L));

fw = hamming(M);
h = h .* fw';

[H,w] = freqz(h,1);

plot(H);
t_name = sprintf('The orbital frequency-response windowed by hamming window(N=%d)',N);
title(t_name);
axis([-1,1,-1,1]);
xlabel("Re");
ylabel("Im");
fname = sprintf('frequency/orbit/Orbital_frequency_response_windowed_by_hamming_window_N_%d.png',N)
print(fname,'-dpng');
hold off

f = (fs*w)/(2*pi);

amp = abs(H);
gain_max = max(amp);
gain = 20*log10(amp/gain_max);

plot(f,gain);
t_name = sprintf("The gain of frequency-response windowed by hamming window(N=%d)",N)
title(t_name);
xlabel("f[Hz]");
ylabel("gain[dB]");
fname = sprintf('frequency/gain/Gain_of_frequency_response_windowed_by_hamming_window_N_%d.png',N);
print(fname,'-dpng');
hold off

phase = angle(H)/(pi/180);
plot(f,phase);
t_name = sprintf('The phase of frequency-response windowed by hamming window(N=%d)',N);
title(t_name);
axis([-inf,inf,-180,180]);
xlabel("f[Hz]");
ylabel("phase[deg]");
fname = sprintf('frequency/phase/Phase_of_frequency_response_windowed_by_hamming_window_N_%d.png',N);
print(fname,'-dpng');



% the order of low-pass filter
N = 20;

% the length of low-pass filter
M = N + 1;

% the group delay is given by L / fs
L = N / 2;

% the time domain impluse signal
n = 0:1:M - 1; %time-step
h = 2*r_f*sinc(2*r_f*(n-L));

fw = hamming(M);
h = h .* fw';

[H,w] = freqz(h,1);

plot(H);
t_name = sprintf('The orbital frequency-response windowed by hamming window(N=%d)',N);
title(t_name);
axis([-1,1,-1,1]);
xlabel("Re");
ylabel("Im");
fname = sprintf('frequency/orbit/Orbital_frequency_response_windowed_by_hamming_window_N_%d.png',N)
print(fname,'-dpng');
hold off

f = (fs*w)/(2*pi);

amp = abs(H);
gain_max = max(amp);
gain = 20*log10(amp/gain_max);

plot(f,gain);
t_name = sprintf("The gain of frequency-response windowed by hamming window(N=%d)",N)
title(t_name);
xlabel("f[Hz]");
ylabel("gain[dB]");
fname = sprintf('frequency/gain/Gain_of_frequency_response_windowed_by_hamming_window_N_%d.png',N);
print(fname,'-dpng');
hold off

phase = angle(H)/(pi/180);
plot(f,phase);
t_name = sprintf('The phase of frequency-response windowed by hamming window(N=%d)',N);
title(t_name);
axis([-inf,inf,-180,180]);
xlabel("f[Hz]");
ylabel("phase[deg]");
fname = sprintf('frequency/phase/Phase_of_frequency_response_windowed_by_hamming_window_N_%d.png',N);
print(fname,'-dpng');


% the order of low-pass filter
N = 10;

% the length of low-pass filter
M = N + 1;

% the group delay is given by L / fs
L = N / 2;

% the time domain impluse signal
n = 0:1:M - 1; %time-step
h = 2*r_f*sinc(2*r_f*(n-L));

fw = hamming(M);
h = h .* fw';

[H,w] = freqz(h,1);

plot(H);
t_name = sprintf('The orbital frequency-response windowed by hamming window(N=%d)',N);
title(t_name);
axis([-1,1,-1,1]);
xlabel("Re");
ylabel("Im");
fname = sprintf('frequency/orbit/Orbital_frequency_response_windowed_by_hamming_window_N_%d.png',N)
print(fname,'-dpng');
hold off

f = (fs*w)/(2*pi);

amp = abs(H);
gain_max = max(amp);
gain = 20*log10(amp/gain_max);

plot(f,gain);
t_name = sprintf("The gain of frequency-response windowed by hamming window(N=%d)",N)
title(t_name);
xlabel("f[Hz]");
ylabel("gain[dB]");
fname = sprintf('frequency/gain/Gain_of_frequency_response_windowed_by_hamming_window_N_%d.png',N);
print(fname,'-dpng');
hold off

phase = angle(H)/(pi/180);
plot(f,phase);
t_name = sprintf('The phase of frequency-response windowed by hamming window(N=%d)',N);
title(t_name);
axis([-inf,inf,-180,180]);
xlabel("f[Hz]");
ylabel("phase[deg]");
fname = sprintf('frequency/phase/Phase_of_frequency_response_windowed_by_hamming_window_N_%d.png',N);
print(fname,'-dpng');