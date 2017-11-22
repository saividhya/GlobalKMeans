function fastKmeansClustering_kd(seeds,k,bucket_size)
figure(3);
title('Fast with kd');
    kd = kd_tree(bucket_size, seeds, []);
%     plot(seeds(:,1),seeds(:,2),'y.',kd(:,1),kd(:,2),'k.',kd(:,1),kd(:,2),'k+');
%         drawnow;
%         
%     figure(2);set(1,'DoubleBuffer','on');
    centroid = mean(seeds);
%     plot(seeds(:,1),seeds(:,2),'g.',centroid(1,1),centroid(1,2),'r.',centroid(1,1),centroid(1,2),'r+');
%         drawnow;
%         hold on
    distance = pdist2(seeds,centroid,'euclidean');
    [minDist, cluster] = min(distance,[],2);
    kddistance = pdist2(seeds,kd,'euclidean');
%     size(kddistance)
    e = sum(minDist.^2);
%     [e,centroid, minDist1] = computeKMeans(kd,centroid,1); 
    for i = 2:k 
        t = [];
        en = zeros(size(kd,1),1);
        for n = 1 : size(kd,1)
            bn = 0;
            for j = 1 : size(seeds,1)
                bn = bn + max(minDist(j,1)- kddistance(j,n),0);
            end
            en(n) = e - bn;
        end
        [minen, index] = min(en);
        t = [centroid; kd(index,:)+eps];
        [e,centroid,minDist] = computeKMeans(seeds,t,i); 
        plot(seeds(:,1),seeds(:,2),'g.',centroid(:,1),centroid(:,2),'k.',centroid(:,1),centroid(:,2),'kx');

        drawnow;
%                 hold on
    end
%     disp(['centroid ' centroid]);
    disp(['Average SSE ' num2str(e)]);
end