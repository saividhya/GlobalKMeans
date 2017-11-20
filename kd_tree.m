function [centroid]= kd_tree(bucket_size,bucket_count,seeds,centroid)
    if size(seeds,1)<=1
        centroid = [centroid;seeds];
    elseif (size(seeds,1) > 0) && (size(seeds,1) <= bucket_size)
        centroid = [centroid;mean(seeds)];
%     elseif size(centroid,1) == bucket_count
    else 
        [coeff,score,latent] = pca(seeds,'Algorithm','eig');
        j = score(:,1)-(ones(size(seeds,1),1)*median(score(:,1)));
        left = seeds(j < 0,:);
        right = seeds(j >= 0,:);
%         pcentroid = kd_tree(bucket_size,bucket_count,left,pcentroid);
%         pcentroid = kd_tree(bucket_size,bucket_count,right,pcentroid);
        centroid = kd_tree(bucket_size,bucket_count,left,centroid);
        centroid = kd_tree(bucket_size,bucket_count,right,centroid);
        
    end
    

end