function kmeansMain_kdbuckets(seeds,labels,method)
    KDWriteToFile = [];
    for j = 1 : 15
        bucket_count = ceil(size(seeds,1)/j);
        [error_3, centroid_3, purity_3] = fastKmeansClustering_kd(seeds,15,bucket_count,labels);
        KDWriteToFile = [KDWriteToFile; j error_3];
    end
    csvwrite(strcat('data/',method,'_KD.dat'),KDWriteToFile);    
end