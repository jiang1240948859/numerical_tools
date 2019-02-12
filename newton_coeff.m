function y = newton_coeff( x0,y0 )
a = length(x0);
b = length(y0);
y = [];
if a ~= b
    error('Input error');
    return;
end
y(1) = y0(1);
y1 = y0;
x1 = x0;
for i = 1:a - 1
    y_temp = [];
    for j = 1:(length(y1) - 1)
        y_temp(j) = (y1(j+1)-y1(j))/(x1(j+1)-x0(j));
    end
    y1 = y_temp
    x1 = x1(2:end);
    y(i+1) = y1(1);
end
    


end

