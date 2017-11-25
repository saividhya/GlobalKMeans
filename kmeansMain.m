function kmeansMain(seeds,labels,method)
    KDWriteToFile = [];
    errorWriteToFile = [];
    purityWriteToFile = [];
    runtimeWriteToFile = [];
    for i= 3: 15
        tic;
        [error_1, centroid_1, purity_1] = kmeansClustering(seeds,i,labels);
        time1 = toc;
        tic;
        [error_2, centroid_2, purity_2] = globalKmeansClustering(seeds,i,labels);
        time2 = toc;
         for j = 1: 20
% j = 15;
            time1 = toc;
            [error_3, centroid_3, purity_3] = fastKmeansClustering_kd(seeds,i,j,labels);
            time3 = toc;
            KDWriteToFile = [KDWriteToFile; j error_3];
            if j == 15
                centroid_15 = centroid_3;
                time15 = time3;
                errorWriteToFile = [errorWriteToFile; i error_1 error_2 error_3];
                purityWriteToFile = [purityWriteToFile; i purity_1 purity_2 purity_3];
                runtimeWriteToFile = [runtimeWriteToFile; i time1 time2 time15];
            end
         end
    end

    csvwrite(strcat(method,'_seeds.dat'),seeds);
    csvwrite(strcat(method,'_SSE.dat'),errorWriteToFile);
    csvwrite(strcat(method,'_Purity.dat'),purityWriteToFile);
    csvwrite(strcat(method,'_KD.dat'),KDWriteToFile);
    csvwrite(strcat(method,'_runtime.dat'),runtimeWriteToFile);
    csvwrite(strcat(method,'_centroid_1.dat'), centroid_1);
    csvwrite(strcat(method,'_centroid_2.dat'),centroid_2);
    csvwrite(strcat(method,'_centroid_3.dat'),centroid_15);
end