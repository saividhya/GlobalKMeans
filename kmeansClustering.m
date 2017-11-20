function kmeansClustering(seeds,k)
%Loop for given number of random initialization (N)
%     SSE = zeros(N,1);
%     for i = 1 : N
    %Centroid selection
    idx = randperm(size(seeds,1),k);
    centroid = (seeds(idx,:));
    %Loop till convergence condition is not satisfied (No of iterations = 100 or SSE error b/w 2 iterations is less than 0.001)
%         clusterSSE = zeros(100,1);
    [clusterSSE, centroid, minDist] = computeKMeans(seeds,centroid);
%         SSE(i) = clusterSSE(n);                
%     end
    %print average SSE for N iterations        
    disp(['Average SSE ' num2str(clusterSSE)]);
%     disp(['centroid ' centroid]);
    