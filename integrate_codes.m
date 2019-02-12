function result = integrate_codes(f, x1, x2, h)
result = 0;
x = x1;
while x < x2
    result = result + (2/45)*(h/4)*(7*f(x)+32*f(x+(h/4))+12*f(x+(h/2))+32*f(x+(3*h/4))+7*f(x+h));
    x = x + h;
end



end

