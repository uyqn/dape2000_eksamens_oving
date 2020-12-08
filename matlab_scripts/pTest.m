function pTest(estimator, n, p0, alpha)
    z = (estimator - p0)/sqrt(p0*(1-p0)/n);
    
    disp("z = " + z);
    disp("z_{\alpha} = " + norminv(1-alpha));
    disp("z_{\alpha/2} = " + norminv(1-alpha/2));
end

