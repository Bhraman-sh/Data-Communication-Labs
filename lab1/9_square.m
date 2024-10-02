pkg load control
pkg load signal

f = 1;         % Frequency of the square wave (Hz)
fs = 100;      % Sampling frequency (Hz)
t = -3:1/fs:3;  % Time vector (5 seconds)

% Generate the square wave
y = 5 * square(2 * pi * f * (t + 3)) - 3;

% Plot the square wave
plot(t, y);
xlabel('Time (s)');
ylabel('Amplitude');
title('Square Wave');
grid off;
axis([-3 3 -10 4]);
pause;
