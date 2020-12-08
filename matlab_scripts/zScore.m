function zScore(x, mu, sigma)
    score = (x - mu)/sigma;
    z = round(100*score)/100;
    disp("z = " + num2str(z, '%.2f'));
    disp("G(z) = " + num2str(normcdf(z),'%.4f'))
end

