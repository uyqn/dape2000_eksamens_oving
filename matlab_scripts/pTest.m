function pTest(estimator, n, p0, alpha)
    z = (estimator - p0)/sqrt(p0*(1-p0)/n);
    z = round(1000*z)/1000;
    disp("z = " + z);
    disp("z_{\alpha} = " + round(1000*norminv(1-alpha))/1000);
    disp("z_{\alpha/2} = " + round(1000*norminv(1-alpha/2))/1000);
end

