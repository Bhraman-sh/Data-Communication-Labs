pkg load control
pkg load signal

function retval = g(t)
    retval = -t.^(4) + 17*t.^(3) - t.^2 - 47;
end

function retval = f1(t, m)
    retval = (-t.^(4) + 17*t.^(3) - t.^2 - 47) .* cos(2 * pi * m * t);
end

function retval = f2(t, m)
    retval = (-t.^(4) + 17*t.^(3) - t.^2 - 47) .* sin(2 * pi * m * t);
end

function retval = fourier_h(x, m, limits_by_2)
    integral_a = @(t) f1(t, m);
    integral_b = @(t) f2(t, m);

    am = (2/limits_by_2) * integral(integral_a, 0, limits_by_2);
    bm = (2/limits_by_2) * integral(integral_b, 0, limits_by_2);

    retval = am * cos(2 * pi * m * x / limits_by_2) + bm * sin(2 * pi * m * x / limits_by_2);
end

function retval = fourier_approximation(x, n, limits_by_2)
    approximation = zeros(1, length(x));

    for i = 1:n
        approximation = approximation .+ fourier_h(x, i, limits_by_2);
    end

    ao = (2/limits_by_2) * integral(@g, 0, limits_by_2);

    approximation = approximation .+ ao;

    retval = approximation;
end

x = -3:0.01:3;

approximation = fourier_approximation(x, 100, 3);
%plot(x, approximation);

fplot(@g, [-3, 3]);
pause;
