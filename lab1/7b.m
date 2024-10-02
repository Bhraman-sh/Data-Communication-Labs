k = -10:20;
x = -0.92 * sin(0.1 * pi * k - (3 * pi) / 4);

k_2 = 0:50;
x_2 = (0.93 .^ k_2) .* exp((1i * pi * k_2) / 350);

figure

subplot(2,1,1);
stem(k, x)
xlabel('k');
ylabel('x');
title('-0.92 sin(0.1pi * k - (3*pi/4))');

subplot(2,1,2);
stem(k_2, x_2)
xlabel('k');
ylabel('x');
title('(0.93^(k) * e^(ipi * k) / 350)');

pause;
