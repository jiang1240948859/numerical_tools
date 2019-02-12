function y = lagrange( x0,y0,x )
a = length(x0);
b = length(y0);
y = [];
if a ~= b
    error('Input error');
    return;
end
for i = 1:length(x)
    s = 0;
    for j = 1:a
        r = 1;
        for k = 1:a
            if k ~= j
                r = r*(x(i)-x0(k))/(x0(j)-x0(k));
            end
        end
        s = s+r*y0(j);
    end
    y(i) = s;
end
        

end

