function tTest(sample, mu, alpha)
    m = mean(sample);
    n = size(sample, 2);
    
    s = 0;
    
    for i = 1:n
        s = s + (sample(i) - m)^2;
    end
    
    s = s/(n-1);
    std = sqrt(s);
    
    t = (m - mu)/(sqrt(s/n));
    
    disp("\bar{x} = " + m)
    disp("s^2 = " + s)
    disp("s = " + std)
    disp("t_{obs} = " + t)
    disp("t_{\alpha} = " + tinv(1 - alpha, n-1))
    disp("t_{\alpha/2} = " + tinv(1 - alpha/2, n-1))
end

