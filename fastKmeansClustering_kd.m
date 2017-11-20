function fastKmeansClustering_kd(seeds,k,bucket_size, bucket_count)
    kd = kd_tree(bucket_size, bucket_count, seeds, []);
    distance = pdist2(seeds,kd,'euclidean');
    [minDist, cluster] = min(distance,[],2);
    centroid = mean(kd);
    [e,centroid, minDist1] = computeKMeans(kd,centroid,1); 
    for i = 2:k      
        for n = 1 : size(kd,1)
            bn = 0;
            en = zeros(size(kd,1));
      
            for j = 1 : size(seeds,1)
                bn = bn + max(minDist(j,1)- square(abs(kd(n)-seeds(j))));
            end
            en(n) = e - bn;
        end
        [minen, index] = min(en);
        centroid = [centroid; kd(index,:)]
        [e,centroid,minDist] = computeKMeans(seeds,centroid,i);       
    end
%     disp(['centroid ' centroid]);
    disp(['Average SSE ' num2str(e)]);
end