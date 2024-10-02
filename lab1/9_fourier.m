pkg load control
pkg load signal

f = 1;         % Frequency of the square wave (Hz)
fs = 100;      % Sampling frequency (Hz)

function revtal = user_square(t, f)
    revtal = 5 * square(2 * pi * f * t);
end

function retval = f1(t, m, f)
    retval = user_square(f, t) .* cos(m * 2 * pi * f * t);
end

function retval = f2(t, m, f)
    retval = user_square(f, t) .* sin(m * 2 * pi * f * t);
end

function retval = square_fourier(m, x, limit_by_2, f)
    % Define integrand functions with additional parameters
    integrand_f1 = @(t) f1(t, m, f);
    integrand_f2 = @(t) f2(t, m, f);

    % Compute the Fourier coefficients
    am = (2 / limit_by_2) * integral(integrand_f1, 0, limit_by_2);
    bm = (2 / limit_by_2) * integral(integrand_f2, 0, limit_by_2);

    % Compute the Fourier series approximation
    retval = am .* cos(m * 2 * pi * f * x) + bm .* sin(m * 2 * pi * f * x);
end

% Approximation
function retval = square_wave_fourier_approximation(x, limit_by_2, f, n)
    approximation = zeros(1, length(x));
    for i = 1:n
        s = square_fourier(i, x, limit_by_2, f);
        approximation = approximation .+ s;
    end

    integral_o = @(t) user_square(t, f);
    a = integral(integral_o, 0, limit_by_2);

    retval = approximation .+ a;
end

% Define the range for x
x = -3:0.01:3;

approximation = square_wave_fourier_approximation(x, 3, 1, 30);

plot(x, approximation)
pause
