function purity = findPurity(cluster, labels)
    mystats = @(x)[max(hist(x,unique(x)))];
    result = splitapply(mystats, labels,cluster);
    purity = sum(result)/size(cluster,1);
end