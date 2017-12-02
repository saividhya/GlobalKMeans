function kmeansMain(seeds,labels,method)
csvwrite(strcat('data/',strcat(method,'_seeds.dat')),seeds);
csvwrite(strcat('data/',strcat(method,'_labels.dat')),labels);
    KDWriteToFile = [];
    errorWriteToFile = [];
    purityWriteToFile = [];
    runtimeWriteToFile = [];
    for i= 3: 15
        disp(i);
        tic;
        [error_1, centroid_1, purity_1] = kmeansClustering(seeds,i,labels);
        time1 = toc;
        disp(time1);
        tic;
        [error_2, centroid_2, purity_2] = globalKmeansClustering(seeds,i,labels);
        time2 = toc;
        disp(time2);
        tic;
        [error_3, centroid_3, purity_3] = fastKmeansClustering_kd(seeds,i,15,labels);
        time3 = toc;
        disp(time3);
        %KDWriteToFile = [KDWriteToFile; j error_3];
        errorWriteToFile = [errorWriteToFile; i error_1 error_2 error_3];
        purityWriteToFile = [purityWriteToFile; i purity_1 purity_2 purity_3];
        runtimeWriteToFile = [runtimeWriteToFile; i time1 time2 time3];
    end
    csvwrite(strcat('data/',strcat(method,'_SSE.dat')),errorWriteToFile);
    csvwrite(strcat('data/',strcat(method,'_Purity.dat')),purityWriteToFile);
    %csvwrite(strcat(method,'_KD.dat'),KDWriteToFile);
    csvwrite(strcat('data/',strcat(method,'_runtime.dat')),runtimeWriteToFile);
    csvwrite(strcat('data/',strcat(method,'_centroid_1.dat')), centroid_1);
    csvwrite(strcat('data/',strcat(method,'_centroid_2.dat')),centroid_2);
    csvwrite(strcat('data/',strcat(method,'_centroid_3.dat')),centroid_3);
end