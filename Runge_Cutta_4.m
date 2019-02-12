function y = Runge_Cutta_4(f,x,t,h,num)
y = [];
for i = 1:num
    k1 = f(t,x);
    k2 = f(t+h/2,x+h*k1/2);
    k3 = f(t+h/2,x+h*k2/2);
    k4 = f(t+h/2,x+h*k3);
    x = x+h*(k1+2*k2+2*k3+k4)/6;
    t = t+h;
    y(i) = x;
end


end

