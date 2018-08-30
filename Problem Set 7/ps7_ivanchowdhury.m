% MATLAB Seminar
% Assignment 7
% Ivan Chowdhury

clear, clc
% Problem 1 - Generate a signal that consists of a sum of sine waves of frequencies 1 to 50 kHz.
t = 0 : .001 : 2;
f = 1 : 50000;
Signal = zeros (1, 2001);

for n = 1 : 2001
  y = sin (2 * pi * t(n) * f);
  Signal (n) = sum (y);
end

%% Problem 2 - Butterworth lowpass filter
% Create filter in fdatool or filter design toolbox
% Apply the filter using filter
% Plot fourier transform using fft and plot

Hd1 = getFilter
[b1, a1] = tf (Hd1);
y1 = filter (b1, a1, Signal);

N= 2 ^ 15;
S1 = fft (y1, N);
S1 = fftshift (abs (S1)) / N;
Fs = 100000;
F1 = Fs .* (-N/2 : N/2 - 1) / N;

figure
plot (F1, S1)
title ('Fourier Transform of Filtered Signal 1')
xlabel ('Frequency (Hz)')
ylabel('Magnitude')

%% Problem 3 - Chebychev I highpass filter

Hd2 = getFilter2
[b2, a2] = tf (Hd2);
y2 = filter (b2, a2, Signal);

N = 2 ^ 15;
S2 = fft (y2, N);
S2 = fftshift (abs (S2)) / N;
Fs = 100000;
F2 = Fs .* (-N/2 : N/2 -1) / N;

figure
plot (F2, S2)
title ('Fourier Transform of Filtered Signal 2')
xlabel ('Frequency (Hz)')
ylabel ('Magnitude')

%% Problem 4 - Chebychev II bandstop filter
Hd3 = getFilter3
[b3, a3] = tf (Hd3);
y3 = filter(b3,a3,Signal);

N= 2^15;
S3 = fft(y3,N);
S3 = fftshift(abs(S3))/N;
Fs = 100000;
F3 = Fs.*(-N/2:N/2-1)/N;

figure
plot(F3,S3)
title('Fourier Transform of Filtered Signal 3')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

%% Problem 5 - Elliptic bandpass filter
Hd4 = getFilter
[b4, a4] = tf (Hd4);
y4 = filter (b4, a4, Signal);

N = 2^15;
S4 = fft(y4, N);
S4 = fftshift (abs (S4)) / N;
Fs = 100000;
F4 = Fs .* (-N/2 : N/2 - 1) / N;

figure
plot (F4, S4)
title ('Fourier Transform of Filtered Signal 4')
xlabel ('Frequency (Hz)')
ylabel ('Magnitude')