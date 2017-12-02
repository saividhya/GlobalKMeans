function kmeansMain_normalavg(seeds,labels,method)
    NormalKAvgSSEWriteToFile = [];
    NormalKWriteToFile = [];
    NormalKAvgPurityWriteToFile = [];
    NormalKPurityWriteToFile = [];    
    
    for k = 3 : 15
        e = [];
        p = [];
        for i = 1 : 100
            [error_1, centroid_1, purity_1] = kmeansClustering(seeds,k,labels);
            NormalKWriteToFile = [NormalKWriteToFile; k error_1];
            NormalKPurityWriteToFile = [NormalKPurityWriteToFile; k purity_1];
            e = [e; error_1];
            p = [p; purity_1];
        end
        avg_sse = sum(e)/100;
        avg_purity = sum(p)/100;
        NormalKAvgSSEWriteToFile = [NormalKAvgSSEWriteToFile; k avg_sse];
        NormalKAvgPurityWriteToFile = [NormalKAvgPurityWriteToFile; k avg_purity];
    end
    csvwrite(strcat('data/',method,'_normal_avgSSE.dat'),NormalKAvgSSEWriteToFile);
    csvwrite(strcat('data/',method,'_normal_SSE.dat'),NormalKWriteToFile);
    csvwrite(strcat('data/',method,'_normal_avgPurity.dat'),NormalKAvgPurityWriteToFile);
    csvwrite(strcat('data/',method,'_normal_Purity.dat'),NormalKPurityWriteToFile);
end