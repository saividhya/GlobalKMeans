function fastKmeansClustering(seeds,k)
    centroid = mean(seeds);
    [e,centroid, minDist] = computeKMeans(seeds,centroid,1); 
    for i = 2:k      
        for n = 1 : size(seeds,1)
            bn = 0;
            en = zeros(size(seeds,1));
            for j = 1 : size(seeds,1)
                bn = bn + max(minDist(j,1)- square(abs(seeds(n)-seeds(j))));
            end
            en(n) = e - bn;
        end
        [minen, index] = min(en);
        centroid = [centroid; seeds(index,:)];
        [e,centroid] = computeKMeans(seeds,centroid,i);       
    end
%     disp(['centroid ' centroid]);
    disp(['Average SSE ' num2str(e)]);
end   