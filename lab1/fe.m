function y = fe(x)
    for i = 1:length(x)
        y(i) = e ^ (0.05 * x(i));
end
