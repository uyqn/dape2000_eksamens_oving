function zInterval(x, variance, n, alpha)
    x = mean(x);    
    z = norminv(1 - alpha/2);
    z = round(1000*z)/1000;
    
    low = x - z*sqrt(variance/n);
    high = x + z*sqrt(variance/n);
    
    disp("z_{\alpha/2} = " + z);
    disp("confidence interval = ");
    disp([low high])
end

