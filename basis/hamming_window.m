% the order of low-pass filter
N = 20;

% the length of low-pass filter
M = N + 1;

% sampling frequency
fs = 10000;

% cut-off frequency
fc = 2000;

% the frequency ratio
r_f = fc/fs;

% the group delay is given by L / fs
L = 10;

% the time domain impluse signal
n = 0:1:M - 1; %time-step
h = 2*r_f*sinc(2*r_f*(n-L));

fw = hamming(M);
h = h .* fw';

clf;
plot(n,h);
title("The impluse response windowed by hamming-window");
xlabel("time-n[step]");
ylabel("h[n]");
print('impluse/Impluse_response_windowed_by_hamming_window.png','-dpng');
hold off;

[H,w] = freqz(h,1);

plot(H);
title("The orbital frequency-response windowed by hamming window");
axis([-1,1,-1,1]);
xlabel("Re");
ylabel("Im");
print('frequency/orbit/Orbital_frequency_response_windowed_by_hamming_window.png','-dpng');
hold off

f = (fs*w)/(2*pi);

amp = abs(H);
gain_max = max(amp);
gain = 20*log10(amp/gain_max);

plot(f,gain);
title("The gain of frequency-response windowed by hamming window");
xlabel("f[Hz]");
ylabel("gain[dB]");
print('frequency/gain/Gain_of_frequency_response_windowed_by_hamming_window.png','-dpng');
hold off

phase = angle(H)/(pi/180);
plot(f,phase);
title("The phase of frequency-response windowed by hamming window");
axis([-inf,inf,-180,180]);
xlabel("f[Hz]");
ylabel("phase[deg]");
print('frequency/phase/Phase_of_frequency_response_windowed_by_hamming_window.png','-dpng');

