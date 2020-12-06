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
    tCrit = tinv(1 - alpha, n-1);
    
    disp("sample mean = " + m)
    disp("sample variance = " + s)
    disp("sample std = " + std)
    disp("observed t value = " + t)
    disp("critical t value = " + tCrit)
end

