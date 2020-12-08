function zInterval(mean, variance, n, alpha)
    x = mean;
    z = norminv(1 - alpha/2);
    
    low = x - z*sqrt(variance/n);
    high = x + z*sqrt(variance/n);
    
    disp("z_{\alpha/2} = " + z);
    disp("confidence interval = ");
    disp([low high])
end

