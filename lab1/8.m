% Differential equation
function dy = dydt(t,y)
    dy = 2*cos(2*t) - 4 * y;
end

% Analytical Solution
function y = func(t)
    y = (1 / 5) * (2 * cos(2*t) + sin(2*t)) + (8/5) * e^(-2*t) 
end


timeInterval = [0, 20];
y0 = 2;

[t, y] = ode23(@dydt, timeInterval, y0);

figure;
subplot(2,1,1);
plot(t, y);
title('Numerical Solution');
xlabel("Time");
ylabel("Amplitude");

subplot(2,1,2);
fplot(@func, [0, 20]);
title('Analytical Solution');
xlabel("Time");
ylabel("Amplitude")

pause
