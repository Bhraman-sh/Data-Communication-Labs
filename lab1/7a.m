function ret = x(t)
    ret = 5 * sin(2 * pi * t) * cos(pi * t - 8);
end

myFunc = @(t) 5 * e^(0.05*t) * sin(2 * pi * t)

figure;
subplot(2,1,1);
fplot(@x, [-5, 5]);
title('5 sin(2*pi*t) * cos(pi*t -8)')
xlabel('time');
ylabel('amplitude');

subplot(2,1,2);
fplot(myFunc, [-10, 10]);
title('5 e^(0.05t) * sin(2pi*t)');
xlabel('time');
ylabel('amplitude');

pause
