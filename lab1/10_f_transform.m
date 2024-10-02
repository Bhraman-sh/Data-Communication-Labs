    pkg load control
    pkg load signal

    t = 0:0.001:3;

    A = 19; % Amplitude of the cosine wave
    x = A * cos(2 * pi * 5 * t) + 10 * cos(2 * pi * 10 * t);
    % Compute the Fourier transform
    X = fft(x);

    % Compute the magnitude
    magnitude = abs(X) / length(x); % Normalize the magnitude

    % Compute the frequency vector
    n = length(x);    % Number of samples
    f = (0:n-1)*(1/(0.001 * n)); % Frequency vector

    % Filtering 10hz signal
    filtered_signal = magnitude;
    i = 0; % counter
    for i = 1:length(filtered_signal)
        if f(i) < 12,
            if f(i) > 8,
                filtered_signal(i) = 0;
            end
        end
    end
    % Compute the inverse fourier transform
    I_x = ifft(filtered_signal .* length(filtered_signal));

    % Plot the results
    figure;
    subplot(2, 2, 1);
    plot(t, x);
    title('Time-domain signal: 19 cos(2\pi \cdot 5t)');
    xlabel('Time (s)');
    ylabel('Amplitude');

    subplot(2, 2, 2);
    plot(f, magnitude);
    title('Magnitude Spectrum');
    xlabel('Frequency (Hz)');
    ylabel('Magnitude');
    xlim([0, 50]);

    subplot(2, 2, 3);
    plot(f, filtered_signal);
    title('Magnitude Spectrum');
    xlabel('Frequency (Hz)');
    ylabel('Magnitude');
    xlim([0, 50]);

    subplot(2, 2, 4);
    plot(t, I_x);
    title('Filtered signal');
    xlabel('Time');
    ylabel('Amplitude');
    xlim([0, 2]);

    pause
