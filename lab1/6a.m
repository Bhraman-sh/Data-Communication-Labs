y = [1:30];
y = fe(y);
y
disp("(a) Maximum value: ")
max(y)
disp("(b) Minimum value: ")
min(y)

disp("(c) Sum of all entries: ")
sum(y)


disp("(d) Product of all entries: ")
prod(y)

disp("(e) Mean of all entries: ")
sum(y) / length(y)

y = y .^2;
disp("(f) Varience of all entries: ")
sum(y) / length(y)

disp("(g) Dimension of y: ")
size(y)

disp("(h) Length of y ")
length(y)


