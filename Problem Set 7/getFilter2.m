function Hd = getFilter2
%GETFILTER Returns a discrete-time filter System object.

% MATLAB Code
% Generated by MATLAB(R) 9.3 and DSP System Toolbox 9.5.
% Generated on: 08-Apr-2018 21:53:51

Fstop = 15000;   % Stopband Frequency
Fpass = 35000;   % Passband Frequency
Astop = 40;      % Stopband Attenuation (dB)
Apass = 2;       % Passband Ripple (dB)
Fs    = 100000;  % Sampling Frequency

h = fdesign.highpass('fst,fp,ast,ap', Fstop, Fpass, Astop, Apass, Fs);

Hd = design(h, 'cheby1', ...
    'MatchExactly', 'passband', ...
    'SystemObject', true);

