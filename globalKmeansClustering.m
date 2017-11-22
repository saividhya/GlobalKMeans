function globalKmeansClustering(seeds,k)
figure(2);
title('Global k means');
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
        plot(seeds(:,1),seeds(:,2),'g.',finalcentroid(:,1),finalcentroid(:,2),'k.',finalcentroid(:,1),finalcentroid(:,2),'kx');

        drawnow;
    end  
    disp(['Average SSE ' num2str(clusterSSE)]);
end