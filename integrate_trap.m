function result = integrate_trap(f, x1, x2, h)
x = x1;
result = 0;
while x < x2
    result = result + (f(x)+f(x+h))*h/2;
    x = x+h;
end

end

