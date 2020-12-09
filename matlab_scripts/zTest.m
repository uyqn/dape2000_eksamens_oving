function zTest(x, mu, variance, alpha)
    x = mean(x);
    n = size(sample, 2);
    z = (x - mu)/sqrt(variance/n);
    z = round(1000*z)/1000;
    
    disp("\bar{x} = " + x);
    disp("z_{obs} = " + z);
    disp("z_{\alpha} = " + round(1000*norminv(1-alpha))/1000);
    disp("z_{\alpha/2} = " + round(1000*norminv(1-alpha/2))/1000);
end

