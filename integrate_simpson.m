function result = integrate_simpson(f, x1, x2,h)
result = 0;
x = x1;
while x < x2
    result = result + (1/6)*h*(f(x)+4*f(x+h/2)+f(x+h));
    x = x + h;
end
end

