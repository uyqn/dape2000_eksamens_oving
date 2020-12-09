function pInterval(estimator, n, alpha)
    p = estimator;
    z = norminv(1-alpha/2);
    z = round(1000*z)/1000;
    
    low = p - z*sqrt(p*(1-p)/n);
    high = p + z*sqrt(p*(1-p)/n);
    
    disp("Confidence interval = ")
    disp([low high])
end

