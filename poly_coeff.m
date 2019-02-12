function k = poly_coeff( x0,y0 )
a = length(x0);
b = length(y0);

if a ~= b
    error('Input error');
    return;
end


s = sym(0);
    for j = 1:a
        
        r = sym(1);
        for k = 1:a
            if k ~= j
                r = r*(sym('t')-x0(k))/(x0(j)-x0(k));
            end
        end
        s = s+r*y0(j);
    end
    k = s;
    


end

