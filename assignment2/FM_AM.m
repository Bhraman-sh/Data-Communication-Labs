t = 0:0.0001:1;

f_m = 5;
x_m = 2 * sin(2 * pi * f_m * t);

f_c = 200;
x_c = 2 * sin(2 * pi * f_c * t);

x_am = x_c .* x_m;

figure
subplot(3,1,1);
plot(t, x_m);
title('Message signal');
xlabel('Time');
ylabel('Amplitude');

subplot(3,1,2);
plot(t, x_c);
title('Carrier signal');
xlabel('Time');
ylabel('Amplitude');

subplot(3,1,3);
plot(t, x_am);
title('Modulated Signal');
xlabel('Time');
ylabel('Amplitude');
pause
