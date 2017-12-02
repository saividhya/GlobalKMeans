function [clusterSSE, centroid, purity] = kmeansClustering(seeds,k,labels)
    idx = randperm(size(seeds,1),k);
    centroid = (seeds(idx,:));
    [clusterSSE, centroid, minDist,cluster] = computeKMeans(seeds,centroid);
    purity = findPurity(cluster,labels);
end
    