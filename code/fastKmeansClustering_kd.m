function [e, centroid, purity] = fastKmeansClustering_kd(seeds,k,bucket_size,labels)
    kd = kd_tree(bucket_size, seeds, []);
    centroid = mean(seeds);
    distance = pdist2(seeds,centroid,'euclidean');
    [minDist, cluster] = min(distance,[],2);
    kddistance = pdist2(seeds,kd,'euclidean');
    e = sum(minDist.^2);
    for i = 2:k 
        t = [];
        en = zeros(size(kd,1),1);
        for n = 1 : size(kd,1)
            bn = 0;
            for j = 1 : size(seeds,1)
                bn = bn + max(minDist(j,1)- kddistance(j,n),0);
            end
            en(n) = e - bn;
        end
        [minen, index] = min(en);
        t = [centroid; kd(index,:)+eps];
        [e,centroid,minDist,cluster] = computeKMeans(seeds,t,i); 
    end
    purity = findPurity(cluster,labels);
end