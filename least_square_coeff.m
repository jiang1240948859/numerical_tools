function coeff = least_square_coeff( x0,y0,order,omiga )
a = length(x0);
b = length(y0);
c = length(omiga);
y = [];
if a ~= b or 
    error('Input error');
    return;
end
normal = zeros(a,order+1);
for i = 1:order+1
    normal(:,i) = x0.^(i-1);
end
for i = 1:a
    y0(i) = y0(i)*omiga(i)^(1/2);
    normal(i,:) = normal(i,:)*omiga(i)^(1/2);
coeff = normal\(y0');


end

