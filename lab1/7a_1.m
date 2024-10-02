myFunc = @(t) 5 * e^(0.05*t) * sin(2 * pi * t)

fplot(myFunc, [-10, 10]);
pause
