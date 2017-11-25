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

%Iris

sse = csvread('Iris_SSE.dat');
figure(22);
plot(sse(:,1),sse(:,2), '-o');

purity = csvread('Iris_Purity.dat');
figure(23);
plot(purity(:,1),purity(:,2), '-o');

kd = csvread('Iris_seeds.dat');
figure(24);
plot(kd(:,1),kd(:,2), '-o');

runtime = csvread('Iris_seeds.dat');
figure(25);
plot(runtime(:,1),runtime(:,2), '-o');

seeds = csvread('Iris_seeds.dat');
centroid1 = csvread('Iris_centroid_1.dat');
centroid2 = csvread('Iris_centroid_2.dat');
centroid3 = csvread('Iris_centroid_3.dat');

figure(26);
plot(seeds(:,1),seeds(:,2),'g.',centroid1(:,1),centroid1(:,2),'k.',centroid1(:,1),centroid1(:,2),'kx');

figure(27);
plot(seeds(:,1),seeds(:,2),'g.',centroid2(:,1),centroid2(:,2),'k.',centroid2(:,1),centroid2(:,2),'kx');

figure(28);
plot(seeds(:,1),seeds(:,2),'g.',centroid3(:,1),centroid3(:,2),'k.',centroid3(:,1),centroid3(:,2),'kx');

%-----------------------------
%MINST dataset

sse1 = csvread('MNIST_SSE.dat');
figure(1);
plot(sse1(:,1),sse1(:,2), '-o');

purity1 = csvread('MNIST_Purity.dat');
figure(2);
plot(purity1(:,1),purity1(:,2), '-o');

kd1 = csvread('MNIST_KD.dat');
figure(3);
plot(kd1(:,1),kd1(:,2), '-o');

runtime1 = csvread('MNIST_runtime.dat');
figure(4);
plot(runtime1(:,1),runtime1(:,2), '-o');

seeds1 = csvread('MNIST_seeds.dat');
centroid11 = csvread('MNIST_centroid_1.dat');
centroid12 = csvread('MNIST_centroid_2.dat');
centroid13 = csvread('MNIST_centroid_3.dat');

figure(5);
plot(seeds1(:,1),seeds1(:,2),'g.',centroid11(:,1),centroid11(:,2),'k.',centroid11(:,1),centroid11(:,2),'kx');

figure(6);
plot(seeds1(:,1),seeds1(:,2),'g.',centroid12(:,1),centroid12(:,2),'k.',centroid12(:,1),centroid12(:,2),'kx');

figure(7);
plot(seeds1(:,1),seeds1(:,2),'g.',centroid13(:,1),centroid13(:,2),'k.',centroid13(:,1),centroid13(:,2),'kx');

%-----------------------------
%Overlapping Gaussian Mixture

sse2 = csvread('Overlapping_SSE.dat');
figure(8);
plot(sse2(:,1),sse2(:,2), '-o');

purity2 = csvread('Overlapping_Purity.dat');
figure(9);
plot(purity2(:,1),purity2(:,2), '-o');

kd2 = csvread('Overlapping_KD.dat');
figure(10);
plot(kd2(:,1),kd2(:,2), '-o');


runtime2 = csvread('Overlapping_runtime.dat');
figure(11);
plot(runtime2(:,1),runtime2(:,2), '-o');

seeds2 = csvread('Overlapping_seeds.dat');
centroid21 = csvread('Overlapping_centroid_1.dat');
centroid22 = csvread('Overlapping_centroid_2.dat');
centroid23 = csvread('Overlapping_centroid_3.dat');

figure(12);
plot(seeds2(:,1),seeds2(:,2),'g.',centroid21(:,1),centroid21(:,2),'k.',centroid21(:,1),centroid21(:,2),'kx');

figure(13);
plot(seeds2(:,1),seeds2(:,2),'g.',centroid22(:,1),centroid22(:,2),'k.',centroid22(:,1),centroid22(:,2),'kx');

figure(14);
plot(seeds2(:,1),seeds2(:,2),'g.',centroid23(:,1),centroid23(:,2),'k.',centroid23(:,1),centroid23(:,2),'kx');

%-----------------------------
%Overlapping Gaussian Mixture

sse3 = csvread('Separate_SSE.dat');
figure(15);
plot(sse3(:,1),sse3(:,2), '-o');

purity3 = csvread('Separate_Purity.dat');
figure(16);
plot(purity3(:,1),purity3(:,2), '-o');

kd3 = csvread('Separate_KD.dat');
figure(17);
plot(kd3(:,1),kd3(:,2), '-o');

runtime3 = csvread('Separate_runtime.dat');
figure(18);
plot(runtime3(:,1),runtime3(:,2), '-o');

seeds3 = csvread('Separate_seeds.dat');
centroid31 = csvread('Separate_centroid_1.dat');
centroid32 = csvread('Separate_centroid_2.dat');
centroid33 = csvread('Separate_centroid_3.dat');

figure(19);
plot(seeds3(:,1),seeds3(:,2),'g.',centroid31(:,1),centroid31(:,2),'k.',centroid31(:,1),centroid31(:,2),'kx');

figure(20);
plot(seeds3(:,1),seeds3(:,2),'g.',centroid32(:,1),centroid32(:,2),'k.',centroid32(:,1),centroid32(:,2),'kx');

figure(21);
plot(seeds3(:,1),seeds3(:,2),'g.',centroid33(:,1),centroid33(:,2),'k.',centroid33(:,1),centroid33(:,2),'kx');



        
        
