X = csvread('MNIST_normal_SSE.dat');
avgsse = csvread('MNIST_normal_avgSSE.dat');
sse = csvread('MNIST_SSE.dat');

for i=1:18
    clf(figure(i))
end

figure(1);
% boxplot(X(:,2),X(:,1))
% hold on
plot(avgsse(:,2), '-o')
hold on
plot(sse(:,3), '-kx')
hold on
plot(sse(:,4), '-r+');

title('Clustering error for MNIST data set');
xlabel(' Numbers of clusters k ') 
ylabel(' Clustering error ') 
legend('Normal k-means Avg. SSE','Global k-means','Fast Global k-means with k-d','Location','northeast')

runtime = csvread('MNIST_runtime.dat');
figure(2);
plot(runtime(:,1),runtime(:,2), '-ko');
hold on
plot(runtime(:,1),runtime(:,3), '-bx');
hold on
plot(runtime(:,1),runtime(:,4), '-r+');
hold on
title('Runtime for MNIST data set');
xlabel(' Numbers of clusters k ') 
ylabel(' Runtime ') 
legend('Normal k-means','Global k-means','Fast Global k-means with k-d','Location','northwest')

purity = csvread('MNIST_Purity.dat');
purity1 = csvread('MNIST_normal_avgPurity.dat');
figure(3);
plot(purity(:,1),purity1(:,2), '-ko');
hold on
plot(purity(:,1),purity(:,3), '-gx');
hold on
plot(purity(:,1),purity(:,4), '-r+');
hold on
title('Purity for MNIST data set');
xlabel(' Numbers of clusters k ') 
ylabel(' Purity ') 
legend('Normal k-means','Global k-means','Fast Global k-means with k-d','Location','northwest')

kdm = csvread('MNIST_KD.dat');
figure(4);
plot(kdm(:,1),kdm(:,2), '-ko')
title('Bucket size vs Cluster SSE - MNIST');
xlabel(' Numbers of buckets ') 
ylabel(' Clustering error ') 
legend('MNIST','Location','northeast')

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

% ---------------------------------
X = csvread('Overlapping_normal_SSE.dat');
avgsse = csvread('Overlapping_normal_avgSSE.dat');
sse = csvread('Overlapping_SSE.dat');

figure(8);
plot(avgsse(:,2), '-o')
hold on
plot(sse(:,3), '-kx')
hold on
plot(sse(:,4), '-r+');

title('Clustering error for Overlapping Gaussian data set');
xlabel(' Numbers of clusters k ') 
ylabel(' Clustering error ') 
legend('Normal k-means Avg. SSE','Global k-means','Fast Global k-means with k-d','Location','northeast')

runtime = csvread('Overlapping_runtime.dat');
figure(9);
plot(runtime(:,1),runtime(:,2), '-ko');
hold on
plot(runtime(:,1),runtime(:,3), '-bx');
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

figure(10);
plot(seeds(:,1),seeds(:,2),'g.',centroid1(:,1),centroid1(:,2),'k.',centroid1(:,1),centroid1(:,2),'kx');
title(' Centroid assignment for Overlapping Gaussian data set - normal k-means for k = 15 ');


figure(11);
plot(seeds(:,1),seeds(:,2),'g.',centroid2(:,1),centroid2(:,2),'k.',centroid2(:,1),centroid2(:,2),'kx');
title(' Centroid assignment for Overlapping Gaussian data set - global k-means for k = 15 ');

figure(12);
plot(seeds(:,1),seeds(:,2),'g.',centroid3(:,1),centroid3(:,2),'k.',centroid3(:,1),centroid3(:,2),'kx');
title(' Centroid assignment for Overlapping Gaussian data set - fast global k-means with k-d trees for k = 15 ');

% --------------------------------
X = csvread('Separate_normal_SSE.dat');
avgsse = csvread('Separate_normal_avgSSE.dat');
sse = csvread('Separate_SSE.dat');

figure(13);
plot(avgsse(:,2), '-o')
hold on
plot(sse(:,3), '-kx')
hold on
plot(sse(:,4), '-r+');

title('Clustering error for Well Separated Gaussian data set');
xlabel(' Numbers of clusters k ') 
ylabel(' Clustering error ') 
legend('Normal k-means Avg. SSE','Global k-means','Fast Global k-means with k-d','Location','northeast')

runtime = csvread('Separate_runtime.dat');
figure(14);
plot(runtime(:,1),runtime(:,2), '-ko');
hold on
plot(runtime(:,1),runtime(:,3), '-bx');
hold on
plot(runtime(:,1),runtime(:,4), '-r+');
hold on
title('Runtime for Separate Gaussian data set');
xlabel(' Numbers of clusters k ') 
ylabel(' Runtime ') 
legend('Normal k-means','Global k-means','Fast Global k-means with k-d','Location','northwest')

kdo = csvread('Overlapping_KD.dat');
kds = csvread('Separate_KD.dat');

figure(15);
plot(kdo(:,1), kdo(:,2), '-bx')
hold on
plot(kds(:,1),kds(:,2), '-r+');
title('Bucket size vs Cluster SSE - Overlapping, Separate Gaussian');
xlabel(' Numbers of buckets ') 
ylabel(' Clustering error ') 
legend('Overlapping','Separate','Location','northeast')

seeds = csvread('Separate_seeds.dat');
centroid1 = csvread('Separate_centroid_1.dat');
centroid2 = csvread('Separate_centroid_2.dat');
centroid3 = csvread('Separate_centroid_3.dat');

figure(16);
plot(seeds(:,1),seeds(:,2),'g.',centroid1(:,1),centroid1(:,2),'k.',centroid1(:,1),centroid1(:,2),'kx');
title(' Separate Gaussian data set - normal k-means for k = 15 ');


figure(17);
plot(seeds(:,1),seeds(:,2),'g.',centroid2(:,1),centroid2(:,2),'k.',centroid2(:,1),centroid2(:,2),'kx');
title(' Separate Gaussian data set - global k-means for k = 15 ');

figure(18);
plot(seeds(:,1),seeds(:,2),'g.',centroid3(:,1),centroid3(:,2),'k.',centroid3(:,1),centroid3(:,2),'kx');
title(' Separate Gaussian data set - fast global k-means with k-d trees for k = 15 ');