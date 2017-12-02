function [clusterSSE, finalcentroid, purity] = globalKmeansClustering(seeds,k,labels)
    finalcentroid = mean(seeds);   
    for i = 2:k
        minSSE = Inf;
        minfinalcentroid = zeros(i, size(seeds,2));
        for j = 1 : size(seeds,1) 
            t = [];
            t = [finalcentroid; seeds(j,:)];
            [clusterSSE,kcentroid, minDist,cluster] = computeKMeans(seeds,t,i);
            if minSSE > clusterSSE
                minSSE = clusterSSE;
                minfinalcentroid = kcentroid;
            end
        end
        finalcentroid = minfinalcentroid;
    end  
    purity = findPurity(cluster,labels);
end