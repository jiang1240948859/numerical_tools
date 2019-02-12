function result = least_square( x0,y0,order, omiga )
coeff = least_square_coeff(x0,y0,order,omiga);
result= sym(0);
for i = 1:length(coeff)
    if i == 1
        result = result+coeff(i);
    else 
        result = result + coeff(i)*sym('x')^(i-1);
    end
    
end


end

