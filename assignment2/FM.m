t = 0:0.0001:1;

% Message Signal
f_m = 5;
x_m = 2 * sin(2 * pi * 5 * t);

function retval = message(t)
    retval = 2 * sin(2 * pi * 5 * t);
end

%Carrier Signal
f_c = 100;
x_c = 2 * sin(2 * pi * f_c * t);

function retval = AM(t)
    retval = 2 * cos(2 * pi * 100 * t + (100/5) * 0.65 * message(t));
end

% Modulated Signal
x_am = AM(t);

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
