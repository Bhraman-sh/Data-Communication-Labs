binary_signal = [1 1 1 0 1 0 0 0 1 0 1 1 0 0 1 1 0 1 0 1];
t = 0:0.01:10;

time_index = 50;

x = zeros(1, length(t));

% FOR FREQUENCY SHIFT KEYING
f_1 = 10;
f_2 = 25;

% FOR AMPLITUDE SHIFT KEYING
a_1 = 1;
a_2 = 2;

% FOR PHASE SHIFT KEYING

temp_index = 1;
for i = 1:length(binary_signal)
    if binary_signal(i) == 1
        while temp_index <= (50 * i)
            x(temp_index) = sin(2 * pi * f_1 * t(temp_index));
            temp_index = temp_index + 1;
        end
        x(temp_index) = sin(2 * pi * f_1 * t(temp_index));
    else
        while temp_index <= (50 * i)
            x(temp_index) = sin(2 * pi * f_2 * t(temp_index));
            temp_index = temp_index + 1;
        end
        x(temp_index) = sin(2 * pi * f_2 * t(temp_index));
    end
end

temp_index = 1;
for i = 1:length(binary_signal)
    if binary_signal(i) == 1
        while temp_index <= (50 * i)
            y(temp_index) = a_1 * sin(2 * pi * f_1 * t(temp_index));
            temp_index = temp_index + 1;
        end
        y(temp_index) = a_1 * sin(2 * pi * f_1 * t(temp_index));
    else
        while temp_index <= (50 * i)
            y(temp_index) = a_2 * sin(2 * pi * f_1 * t(temp_index));
            temp_index = temp_index + 1;
        end
        y(temp_index) = a_2 * sin(2 * pi * f_1 * t(temp_index));
    end
end

temp_index = 1;
for i = 1:length(binary_signal)
    if binary_signal(i) == 1
        while temp_index <= (50 * i)
            z(temp_index) = sin(2 * pi * f_1 * t(temp_index));
            temp_index = temp_index + 1;
        end
        z(temp_index) = sin(2 * pi * f_1 * t(temp_index));
    else
        while temp_index <= (50 * i)
            z(temp_index) = -sin(2 * pi * f_1 * t(temp_index));
            temp_index = temp_index + 1;
        end
        z(temp_index) = -sin(2 * pi * f_1 * t(temp_index));
    end
end

figure

subplot(3,1,1);
plot(t, y);
title('Amplitude Shift Keying');
xlabel('Time');
ylabel('Amplitude');

subplot(3,1,2);
plot(t, z);
title('Phase Shift Keying');
xlabel('Time');
ylabel('Amplitude');

subplot(3,1,3);
plot(t, x);
title('Frequency Shift Keying');
xlabel('Time');
ylabel('Amplitude');
pause
