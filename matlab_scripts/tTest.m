function tTest(x, mu, alpha, opt_var, opt_n)
    m = mean(x);
    n = 0;
    s = 0;
    
    if exist('opt_var', 'var') && exist('opt_n', 'var')
        if size(x, 2) > 1
            error('Invalid input for x')
        else
            n = opt_n;
            s = opt_var;
        end
    else
        if size(x, 2) == 1
            error('invalid input for x')
        else
            n = size(x, 2);
            for i = 1:n
                s = s + (x(i) - m)^2;
            end
            s = s/(n-1);
        end
    end
    
    std = sqrt(s);
    
    t = (m - mu)/(sqrt(s/n));
    t = round(1000*t)/1000;
    
    disp("\bar{x} = " + m)
    disp("s^2 = " + s)
    disp("s = " + std)
    disp("t_{obs} = " + t)
    disp("t_{\alpha} = " + round(1000*tinv(1 - alpha, n-1))/1000)
    disp("t_{\alpha/2} = " + round(1000*tinv(1 - alpha/2, n-1))/1000)
end

