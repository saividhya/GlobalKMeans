function fastKmeansClustering(seeds,k)
    centroid = mean(seeds);
    distance = pdist2(seeds,seeds,'euclidean');
    
    [e,centroid, minDist] = computeKMeans(seeds,centroid,1); 
    for i = 2:k    
        en = zeros(size(seeds,1));
        t = [];
        for n = 1 : size(seeds,1)
            bn = 0;
            for j = 1 : size(seeds,1)
                bn = bn + max(minDist(j,1)- distance(j,n));
            end
            en(n) = e - bn;
        end
        [minen, index] = min(en);
        t = [centroid; seeds(index,:)];
        [e,centroid] = computeKMeans(seeds,t,i);       
    end
%     disp(['centroid ' centroid]);
    disp(['Average SSE ' num2str(e)]);
end   