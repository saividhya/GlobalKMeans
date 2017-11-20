%load data
%seeds = loadMNISTImages(input('Enter path: '));
%size(seeds)
% seeds = importdata(input('Enter path: '));
%Initialize k, N, 
k111 = load('fisheriris.mat');
k=input('Enter value of k: ');
% N=input('Enter value of N: ');
%Kmeans call
kmeansClustering(meas,k);
globalKmeansClustering(meas,k);
fastKmeansClustering(meas,k);
%test = loadMNISTImages('/Users/Rukmani/Masters/Sem3/FSL/Project/global_k_means/t10k-images-idx3-ubyte');

% [er, a, b]=kmeans(k111.meas, k111.meas, k,4,10,'FALSE');
%  er
% a
% b