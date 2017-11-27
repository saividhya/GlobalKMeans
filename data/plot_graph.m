%TODO x axis make it whole numbers

%cluster representation with centroids (normal, global, kd)
%       - centroid, seeds
%   - one plot for MNIST
%   - one plot for gaussian (separated, overlapping)
%SSE for different k
%       - k vakue, SSEs
%   - one plot for MNIST
%   - one plot for gaussian (separated, overlapping)
%accuracy / purity (average of purity of all clusters)
%       -k value purity
%   - one plot for MNIST
%   - one plot for gaussian (separated, overlapping)

%MNIST
for i=1:19
    clf(figure(i))
end
sse = csvread('MNIST_SSE.dat');
figure(1);
plot(sse(:,1),sse(:,2), '-ko')
hold on
plot(sse(:,1), sse(:,3), '-gx')
hold on
plot(sse(:,1),sse(:,4), '-r+');
title('Clustering error for MNIST data set');
xlabel(' Numbers of clusters k ') 
ylabel(' Clustering error ') 
legend('Normal k-means','Global k-means','Fast Global k-means with k-d','Location','northeast')

purity = csvread('MNIST_Purity.dat');
figure(2);
plot(purity(:,1),purity(:,2), '-ko');
hold on
plot(purity(:,1),purity(:,3), '-gx');
hold on
plot(purity(:,1),purity(:,4), '-r+');
hold on
title('Purity for MNIST data set');
xlabel(' Numbers of clusters k ') 
ylabel(' Purity ') 
legend('Normal k-means','Global k-means','Fast Global k-means with k-d','Location','northwest')
% kd = csvread('MNIST_KD.dat');
% figure(3);
% plot(kd(:,1),kd(:,2), '-o');

runtime = csvread('MNIST_runtime.dat');
figure(4);
plot(runtime(:,1),runtime(:,2), '-ko');
hold on
plot(runtime(:,1),runtime(:,3), '-gx');
hold on
plot(runtime(:,1),runtime(:,4), '-r+');
hold on
title('Runtime for MNIST data set');
xlabel(' Numbers of clusters k ') 
ylabel(' Runtime ') 
legend('Normal k-means','Global k-means','Fast Global k-means with k-d','Location','northwest')

seeds = csvread('MNIST_seeds.dat');
centroid1 = csvread('MNIST_centroid_1.dat');
centroid2 = csvread('MNIST_centroid_2.dat');
centroid3 = csvread('MNIST_centroid_3.dat');

figure(5);
plot(seeds(:,1),seeds(:,2),'g.',centroid1(:,1),centroid1(:,2),'k.',centroid1(:,1),centroid1(:,2),'kx');
title(' Centroid assignment for MNIST data set - normal k-means for k = 15 ');


figure(6);
plot(seeds(:,1),seeds(:,2),'g.',centroid2(:,1),centroid2(:,2),'k.',centroid2(:,1),centroid2(:,2),'kx');
title(' Centroid assignment for for MNIST data set - global k-means for k = 15 ');

figure(7);
plot(seeds(:,1),seeds(:,2),'g.',centroid3(:,1),centroid3(:,2),'k.',centroid3(:,1),centroid3(:,2),'kx');
title(' Centroid assignment for for MNIST data set - fast global k-means with k-d trees for k = 15 ');

%-----------------------------
sse = csvread('Overlapping_SSE.dat');
figure(8);
plot(sse(:,1),sse(:,2), '-ko')
hold on
plot(sse(:,1), sse(:,3), '-gx')
hold on
plot(sse(:,1),sse(:,4), '-r+');
title('Clustering error for Overlapping Gaussian data set');
xlabel(' Numbers of clusters k ') 
ylabel(' Clustering error ') 
legend('Normal k-means','Global k-means','Fast Global k-means with k-d','Location','northeast')

purity = csvread('Overlapping_Purity.dat');
figure(9);
plot(purity(:,1),purity(:,2), '-ko');
hold on
plot(purity(:,1),purity(:,3), '-gx');
hold on
plot(purity(:,1),purity(:,4), '-r+');
hold on
title('Purity for Overlapping Gaussian data set');
xlabel(' Numbers of clusters k ') 
ylabel(' Purity ') 
legend('Normal k-means','Global k-means','Fast Global k-means with k-d','Location','northwest')
% kd = csvread('Overlapping_KD.dat');
% figure(3);
% plot(kd(:,1),kd(:,2), '-o');

runtime = csvread('Overlapping_runtime.dat');
figure(10);
plot(runtime(:,1),runtime(:,2), '-ko');
hold on
plot(runtime(:,1),runtime(:,3), '-gx');
hold on
plot(runtime(:,1),runtime(:,4), '-r+');
hold on
title('Runtime for Overlapping Gaussian data set');
xlabel(' Numbers of clusters k ') 
ylabel(' Runtime ') 
legend('Normal k-means','Global k-means','Fast Global k-means with k-d','Location','northwest')

seeds = csvread('Overlapping_seeds.dat');
centroid1 = csvread('Overlapping_centroid_1.dat');
centroid2 = csvread('Overlapping_centroid_2.dat');
centroid3 = csvread('Overlapping_centroid_3.dat');

figure(11);
plot(seeds(:,1),seeds(:,2),'g.',centroid1(:,1),centroid1(:,2),'k.',centroid1(:,1),centroid1(:,2),'kx');
title(' Centroid assignment for Overlapping Gaussian data set - normal k-means for k = 15 ');


figure(12);
plot(seeds(:,1),seeds(:,2),'g.',centroid2(:,1),centroid2(:,2),'k.',centroid2(:,1),centroid2(:,2),'kx');
title(' Centroid assignment for Overlapping Gaussian data set - global k-means for k = 15 ');

figure(13);
plot(seeds(:,1),seeds(:,2),'g.',centroid3(:,1),centroid3(:,2),'k.',centroid3(:,1),centroid3(:,2),'kx');
title(' Centroid assignment for Overlapping Gaussian data set - fast global k-means with k-d trees for k = 15 ');


%-----------------------------
sse = csvread('Separate_SSE.dat');
figure(14);
plot(sse(:,1),sse(:,2), '-ko')
hold on
plot(sse(:,1), sse(:,3), '-gx')
hold on
plot(sse(:,1),sse(:,4), '-r+');
title('Clustering error for Separate Gaussian data set');
xlabel(' Numbers of clusters k ') 
ylabel(' Clustering error ') 
legend('Normal k-means','Global k-means','Fast Global k-means with k-d','Location','northeast')

purity = csvread('Separate_Purity.dat');
figure(15);
plot(purity(:,1),purity(:,2), '-ko');
hold on
plot(purity(:,1),purity(:,3), '-gx');
hold on
plot(purity(:,1),purity(:,4), '-r+');
hold on
title('Purity for Separate Gaussian data set');
xlabel(' Numbers of clusters k ') 
ylabel(' Purity ') 
legend('Normal k-means','Global k-means','Fast Global k-means with k-d','Location','northwest')
% kd = csvread('Separate_KD.dat');
% figure(3);
% plot(kd(:,1),kd(:,2), '-o');

runtime = csvread('Separate_runtime.dat');
figure(16);
plot(runtime(:,1),runtime(:,2), '-ko');
hold on
plot(runtime(:,1),runtime(:,3), '-gx');
hold on
plot(runtime(:,1),runtime(:,4), '-r+');
hold on
title('Runtime for Separate Gaussian data set');
xlabel(' Numbers of clusters k ') 
ylabel(' Runtime ') 
legend('Normal k-means','Global k-means','Fast Global k-means with k-d','Location','northwest')

seeds = csvread('Separate_seeds.dat');
centroid1 = csvread('Separate_centroid_1.dat');
centroid2 = csvread('Separate_centroid_2.dat');
centroid3 = csvread('Separate_centroid_3.dat');

figure(17);
plot(seeds(:,1),seeds(:,2),'g.',centroid1(:,1),centroid1(:,2),'k.',centroid1(:,1),centroid1(:,2),'kx');
title(' Centroid assignment for Separate Gaussian data set - normal k-means for k = 15 ');


figure(18);
plot(seeds(:,1),seeds(:,2),'g.',centroid2(:,1),centroid2(:,2),'k.',centroid2(:,1),centroid2(:,2),'kx');
title(' Centroid assignment for Separate Gaussian data set - global k-means for k = 15 ');

figure(19);
plot(seeds(:,1),seeds(:,2),'g.',centroid3(:,1),centroid3(:,2),'k.',centroid3(:,1),centroid3(:,2),'kx');
title(' Centroid assignment for Separate Gaussian data set - fast global k-means with k-d trees for k = 15 ');


        
        
