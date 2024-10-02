mat1 = [2 5; 4 6];
mat2 = [1 5; 6 -2];

for index = 1:2
    for jndex = 1:2
        mat(index, jndex) = mat1(index, jndex) + mat2(index, jndex);
    end
end

disp("mat1 + mat2")
mat

i = 1;
j = 2;

while i <= 2
    j = 1;
    while j<=2
        mat3(i,j) = mat(i,j) + mat1(i,j);
        j = j + 1;
    end
    i = i + 1;
end

disp("mat + mat1")
mat3
