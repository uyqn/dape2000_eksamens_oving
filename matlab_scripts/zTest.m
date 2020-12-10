function zTest(x, mu, variance, alpha, opt_n)
    x = mean(x);
    
    if exist('opt_n', 'var')
        if size(x, 2) > 1
            error('Invalid input for x')
        else
            n = opt_n;
        end
    else
        if size(x, 2) == 1
            error('invalid input for x')
        else
            n = size(x, 2);
        end
    end
    
    z = (x - mu)/sqrt(variance/n);
    z = round(1000*z)/1000;
    
    disp("\bar{x} = " + x);
    disp("z_{obs} = " + z);
    disp("z_{\alpha} = " + round(1000*norminv(1-alpha))/1000);
    disp("z_{\alpha/2} = " + round(1000*norminv(1-alpha/2))/1000);
end

