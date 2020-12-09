function tInterval(x, alpha, opt_var, opt_n)
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
    
    t = tinv(1 - alpha/2, n-1);
    t = round(1000*t)/1000;
    
    low = m - t*sqrt(s/n);
    high = m + t*sqrt(s/n);
    
    disp(n)
    disp("\bar{x} = " + m);
    disp("s^2 = " + s);
    disp("t_{\alpha/2}^{n-1} = " + t);
    disp("Confidence interval = ");
    disp([low high]);
end

