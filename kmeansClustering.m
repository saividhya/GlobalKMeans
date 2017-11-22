function kmeansClustering(seeds,k)
figure(1)
title('Normal k means');
%Loop for given number of random initialization (N)
%     SSE = zeros(N,1);
%     for i = 1 : N
    %Centroid selection
    idx = randperm(size(seeds,1),k);
    centroid = (seeds(idx,:));
    %Loop till convergence condition is not satisfied (No of iterations = 100 or SSE error b/w 2 iterations is less than 0.001)
%         clusterSSE = zeros(100,1);
    [clusterSSE, centroid, minDist] = computeKMeans(seeds,centroid);
    plot(seeds(:,1),seeds(:,2),'g.',centroid(:,1),centroid(:,2),'k.',centroid(:,1),centroid(:,2),'kx');

        drawnow;
%         SSE(i) = clusterSSE(n);                
%     end
    %print average SSE for N iterations        
    disp(['Average SSE ' num2str(clusterSSE)]);
%     disp(['centroid ' centroid]);
    