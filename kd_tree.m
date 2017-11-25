function [centroid]= kd_tree(bucket_size,seeds,centroid)
    if size(seeds,1)<=1
        centroid = [centroid;seeds];
    elseif (size(seeds,1) > 0) && (size(seeds,1) <= bucket_size)
        centroid = [centroid;mean(seeds)];
    else 
        [coeff,score,latent] = pca(seeds);
        j = score(:,1)-(ones(size(seeds,1),1)*median(score(:,1)));
        left = seeds(j < 0,:);
        right = seeds(j >= 0,:);
        centroid = kd_tree(bucket_size,left,centroid);
        centroid = kd_tree(bucket_size,right,centroid);
        
    end
end