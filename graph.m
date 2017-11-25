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
% seeds1 = csvread('MNIST_seeds.dat');
% sse1 = csvread('MNIST_SSE.dat');
% plot(k,e, '-o')
% purity1 = csvread('MNIST_Purity.dat');
% plot(k,e, '-o')
% kd1 = csvread('MNIST_KD.dat');
% plot(k,e, '-o')
% runtime1 = csvread('MNIST_seeds.dat');
% plot(k,e, '-o')
% centroid11 = csvread('MNIST_seeds.dat');
% plot(seeds(:,1),seeds(:,2),'g.',centroid(:,1),centroid(:,2),'k.',centroid(:,1),centroid(:,2),'kx');
% centroid12 = csvread('MNIST_seeds.dat');
% plot(seeds(:,1),seeds(:,2),'g.',centroid(:,1),centroid(:,2),'k.',centroid(:,1),centroid(:,2),'kx');
% centroid13 = csvread('MNIST_seeds.dat');
% plot(seeds(:,1),seeds(:,2),'g.',centroid(:,1),centroid(:,2),'k.',centroid(:,1),centroid(:,2),'kx');
% 
% seeds2 = csvread('Overlapping_seeds.dat');
% sse2 = csvread('Overlapping_SSE.dat');
% purity2 = csvread('Overlapping_Purity.dat');
% kd2 = csvread('Overlapping_seeds.dat');
% runtime2 = csvread('Overlapping_seeds.dat');
% centroid21 = csvread('Overlapping_seeds.dat');
% centroid22 = csvread('Overlapping_seeds.dat');
% centroid23 = csvread('Overlapping_seeds.dat');

% seeds3 = csvread('Separate_seeds.dat');
% sse3 = csvread('Separate_SSE.dat');
% purity3 = csvread('Separate_Purity.dat');
% kd3 = csvread('Separate_seeds.dat');
% runtime3 = csvread('Separate_seeds.dat');
% centroid31 = csvread('Separate_seeds.dat');
% centroid32 = csvread('Separate_seeds.dat');
% centroid33 = csvread('Separate_seeds.dat');
figure(1);
seeds3 = csvread('Iris_seeds.dat');
sse3 = csvread('Iris_SSE.dat');
plot(sse3(:,1),sse3(:,2), '-o');
% purity3 = csvread('Separate_Purity.dat');
% kd3 = csvread('Separate_seeds.dat');
% runtime3 = csvread('Separate_seeds.dat');
figure(2);
centroid31 = csvread('Iris_centroid_1.dat');
plot(seeds3(:,1),seeds3(:,2),'g.',centroid31(:,1),centroid31(:,2),'k.',centroid31(:,1),centroid31(:,2),'kx');
% centroid32 = csvread('Separate_seeds.dat');
% centroid33 = csvread('Separate_seeds.dat');


%     csvwrite(strcat(method,'_.dat'),KDWriteToFile);
%     csvwrite(strcat(method,'_runtime.dat'),runtimeWriteToFile);
%     csvwrite(strcat(method,'_centroid_1.dat'), centroid_1);
%     csvwrite(strcat(method,'_centroid_2.dat'),centroid_2);
%     csvwrite(strcat(method,'_centroid_3.dat'),centroid_15);
%     
%     csvwrite(strcat(method,'_seeds.dat'),seeds);
%     csvwrite(strcat(method,'_SSE.dat'),errorWriteToFile);
%     csvwrite(strcat(method,'_Purity.dat'),purityWriteToFile);
%     csvwrite(strcat(method,'_KD.dat'),KDWriteToFile);
%     csvwrite(strcat(method,'_runtime.dat'),runtimeWriteToFile);
%     csvwrite(strcat(method,'_centroid_1.dat'), centroid_1);
%     csvwrite(strcat(method,'_centroid_2.dat'),centroid_2);
%     csvwrite(strcat(method,'_centroid_3.dat'),centroid_15);

% figure(1)
% title('Normal k means');
 plot(seeds(:,1),seeds(:,2),'g.',centroid(:,1),centroid(:,2),'k.',centroid(:,1),centroid(:,2),'kx');

        drawnow;

        
        
