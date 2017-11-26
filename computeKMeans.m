%TODO change stopping criteria
function [clusterSSE,centroid,minDist,cluster] = computeKMeans(seeds, centroid,k)
    cluster = zeros(size(seeds,1),1);
    clusterSSE = 0;
    
    while true
        group = [];
    %calculate distance between centroid and points, and assign points to
    %corresponding centroid creating k clusters
        distance = pdist2(seeds,centroid,'euclidean');
        prevcluster = cluster;
        prevclusterSSE = clusterSSE;
        [minDist, cluster] = min(distance,[],2);
    %compute SSE for the cluster
        clusterSSE = sum(minDist.^2);
    %calculate new centroid based on SSE delta
%         delta = abs(clusterSSE - prevclusterSSE);
%         if delta < 0.001
%           break;
%         end
        if prevcluster == cluster
            break;
        end 
        centroid = splitapply(@(x)mean(x,1),seeds,cluster);
%         if prevcluster == cluster
%             break;
%         end 
    end  