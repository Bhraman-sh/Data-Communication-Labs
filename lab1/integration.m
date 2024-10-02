% Load the necessary packages
pkg load control
pkg load signal

% Define parameters for the square wave
f = 1;         % Frequency of the square wave (Hz)
fs = 100;      % Sampling frequency (Hz)
t = -3:1/fs:3;  % Time vector (5 seconds)

% Generate the square wave
y = 5 * square(2 * pi * f * (t + 3)) - 3;

result = integral(@square, 0, 1)
