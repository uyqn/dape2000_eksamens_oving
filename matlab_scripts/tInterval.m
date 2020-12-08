function tInterval(sample, alpha)
    x = mean(sample);
    n = size(sample, n);
    
    s = 0;
    
    for i = 1:n
        s = s + (sample(i) - m)^2;
    end
    
    s = s/(n-1);
    
    t = tinv(1 - alpha/2, n-1);
    
    low = x - t*sqrt(s/n);
    high = x + t*sqrt(s/n);
    
    disp("\bar{x} = " + x);
    disp("s^2 = " + s);
    disp("t_{\alpha/2}^{n-1} = " + t);
    disp("Confidence interval = ");
    disp([low high]);
end

