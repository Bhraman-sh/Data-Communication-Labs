k = [0:50];
x = (0.93 .^ k) .* e .^ ((i * pi * k)/350);

stem(k, x)
pause
