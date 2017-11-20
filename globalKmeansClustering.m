function globalKmeansClustering(seeds,k)
    finalcentroid = mean(seeds);   
    for i = 2:k
        minSSE = Inf;
        minfinalcentroid = zeros(i, size(seeds,2));
        for j = 1 : size(seeds,1) 
            t = [];
            t = [finalcentroid; seeds(j,:)];
            [clusterSSE,kcentroid, minDist] = computeKMeans(seeds,t,i);
            if minSSE > clusterSSE
                minSSE = clusterSSE;
                minfinalcentroid = kcentroid;
            end
        end
        finalcentroid = minfinalcentroid;
    end  
    disp(['Average SSE ' num2str(clusterSSE)]);
end