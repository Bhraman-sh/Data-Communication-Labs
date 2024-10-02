function y = func(t)
    y = (1 / 5) * (2 * cos(2*t) + sin(2*t)) + (8/5) * e^(-2*t) 
end

fplot(@func, [0, 10]);
pause
