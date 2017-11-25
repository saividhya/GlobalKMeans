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

sse = csvread('MNIST_SSE.dat');
figure(1);
plot(sse(:,1),sse(:,2), '-ko')
hold on
plot(sse(:,1), sse(:,3), '-gx')
hold on
plot(sse(:,1),sse(:,4), '-r+');

purity = csvread('MNIST_Purity.dat');
figure(2);
plot(purity(:,1),purity(:,2), '-ko');
hold on
plot(purity(:,1),purity(:,3), '-go');
hold on
plot(purity(:,1),purity(:,4), '-ro');
hold on

kd = csvread('MNIST_KD.dat');
figure(3);
plot(kd(:,1),kd(:,2), '-o');

runtime = csvread('MNIST_runtime.dat');
figure(4);
plot(runtime(:,1),runtime(:,2), '-ko');
hold on
plot(runtime(:,1),runtime(:,3), '-go');
hold on
plot(runtime(:,1),runtime(:,4), '-ro');
hold on

seeds = csvread('MNIST_seeds.dat');
centroid1 = csvread('MNIST_centroid_1.dat');
centroid2 = csvread('MNIST_centroid_2.dat');
centroid3 = csvread('MNIST_centroid_3.dat');

figure(5);
plot(seeds(:,1),seeds(:,2),'g.',centroid1(:,1),centroid1(:,2),'k.',centroid1(:,1),centroid1(:,2),'kx');

figure(6);
plot(seeds(:,1),seeds(:,2),'g.',centroid2(:,1),centroid2(:,2),'k.',centroid2(:,1),centroid2(:,2),'kx');

figure(7);
plot(seeds(:,1),seeds(:,2),'g.',centroid3(:,1),centroid3(:,2),'k.',centroid3(:,1),centroid3(:,2),'kx');

%----------------------------
%Overlapping 

sse = csvread('Overlapping_SSE.dat');
figure(8);
plot(sse(:,1),sse(:,2), '-ko')
hold on
plot(sse(:,1), sse(:,3), '-gx')
hold on
plot(sse(:,1),sse(:,4), '-r+');

purity = csvread('Overlapping_Purity.dat');
figure(9);
plot(purity(:,1),purity(:,2), '-ko');
hold on
plot(purity(:,1),purity(:,3), '-go');
hold on
plot(purity(:,1),purity(:,4), '-ro');
hold on

kd = csvread('Overlapping_KD.dat');
figure(10);
plot(kd(:,1),kd(:,2), '-o');

runtime = csvread('Overlapping_runtime.dat');
figure(11);
plot(runtime(:,1),runtime(:,2), '-ko');
hold on
plot(runtime(:,1),runtime(:,3), '-go');
hold on
plot(runtime(:,1),runtime(:,4), '-ro');
hold on

seeds = csvread('Overlapping_seeds.dat');
centroid1 = csvread('Overlapping_centroid_1.dat');
centroid2 = csvread('Overlapping_centroid_2.dat');
centroid3 = csvread('Overlapping_centroid_3.dat');

figure(12);
plot(seeds(:,1),seeds(:,2),'g.',centroid1(:,1),centroid1(:,2),'k.',centroid1(:,1),centroid1(:,2),'kx');

figure(13);
plot(seeds(:,1),seeds(:,2),'g.',centroid2(:,1),centroid2(:,2),'k.',centroid2(:,1),centroid2(:,2),'kx');

figure(14);
plot(seeds(:,1),seeds(:,2),'g.',centroid3(:,1),centroid3(:,2),'k.',centroid3(:,1),centroid3(:,2),'kx');


%-----------------------------
%Separate
sse = csvread('Separate_SSE.dat');
figure(15);
plot(sse(:,1),sse(:,2), '-ko')
hold on
plot(sse(:,1), sse(:,3), '-gx')
hold on
plot(sse(:,1),sse(:,4), '-r+');

purity = csvread('Separate_Purity.dat');
figure(16);
plot(purity(:,1),purity(:,2), '-ko');
hold on
plot(purity(:,1),purity(:,3), '-go');
hold on
plot(purity(:,1),purity(:,4), '-ro');
hold on

kd = csvread('Separate_KD.dat');
figure(17);
plot(kd(:,1),kd(:,2), '-o');

runtime = csvread('Separate_runtime.dat');
figure(18);
plot(runtime(:,1),runtime(:,2), '-ko');
hold on
plot(runtime(:,1),runtime(:,3), '-go');
hold on
plot(runtime(:,1),runtime(:,4), '-ro');
hold on

seeds = csvread('Separate_seeds.dat');
centroid1 = csvread('Separate_centroid_1.dat');
centroid2 = csvread('Separate_centroid_2.dat');
centroid3 = csvread('Separate_centroid_3.dat');

figure(19);
plot(seeds(:,1),seeds(:,2),'g.',centroid1(:,1),centroid1(:,2),'k.',centroid1(:,1),centroid1(:,2),'kx');

figure(20);
plot(seeds(:,1),seeds(:,2),'g.',centroid2(:,1),centroid2(:,2),'k.',centroid2(:,1),centroid2(:,2),'kx');

figure(21);
plot(seeds(:,1),seeds(:,2),'g.',centroid3(:,1),centroid3(:,2),'k.',centroid3(:,1),centroid3(:,2),'kx');



        
        
