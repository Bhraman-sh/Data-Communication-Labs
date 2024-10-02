    pkg load control
    pkg load signal

    t = 0:0.001:3;
    A = 19; % Amplitude of the cosine wave
    x = 19 * square(2 * pi * 5 * t);

    % Compute the Fourier transform
    X = fft(x);

    % Compute the magnitude
    magnitude = abs(X) / length(x); % Normalize the magnitude

    n = length(x);
    f = (0:n-1)*(1/(0.001 * n));

    I_x = ifft(X);

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
    plot(t, I_x);
    title('Inverse');
    xlabel('Time');
    ylabel('Amplitude');
    xlim([0, 3]);

    pause
