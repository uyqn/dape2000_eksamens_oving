function zTest(sample, mu, variance, alpha)
    m = mean(sample);
    n = size(sample, 2);
    z = (m - mu)/sqrt(variance/n);
    
    disp("\bar{x} = " + m);
    disp("z_{obs} = " + z);
    disp("z_{\alpha} = " + norminv(1-alpha));
    disp("z_{\alpha/2} = " + norminv(1-alpha/2));
end

