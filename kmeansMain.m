%load data
% seeds = loadMNISTImages(input('Enter path: '));
seeds = loadMNISTImages('/Users/Rukmani/Masters/Sem3/FSL/Project/global_k_means/train-images-idx3-ubyte');
seeds = seeds ./ (ones(size(seeds))*255);
k=input('Enter value of k: ');
% kmeansClustering(seeds',k);
globalKmeansClustering(seeds',k);
% fastKmeansClustering_kd(seeds',k,10);
%   test = loadMNISTImages('/Users/Rukmani/Masters/Sem3/FSL/Project/global_k_means/t10k-images-idx3-ubyte');
% 
%  [er, a, b]=kmeans(X, X, k,3,10,'FALSE');
%  er
