%TODO change stopping criteria
function [clusterSSE,centroid,minDist,cluster] = computeKMeans(seeds, centroid,k)
    cluster = zeros(size(seeds,1),1);
    clusterSSE = 0;
    while true
        group = [];
        distance = pdist2(seeds,centroid,'euclidean');
        prevcluster = cluster;
        prevclusterSSE = clusterSSE;
        [minDist, cluster] = min(distance,[],2);
        clusterSSE = sum(minDist.^2);
%         delta = 1 - clusterSSE/prevclusterSSE;
%         if delta < 0.0001
%           break;
%         end
        if prevcluster == cluster
            break;
        end
        centroid = splitapply(@(x)mean(x,1),seeds,cluster);
    end  