function y = newton( x0,y0,x )
coeff = newton_coeff(x0,y0);
y = 0;
for i = 1:length(coeff)
    temp = coeff(i);
    if i ~= 1
        for j=2:i
            temp = temp*(x-x0(j-1));
        end
    end
    y = y+temp;
end


end

