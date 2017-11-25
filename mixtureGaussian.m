%TODO - take random samples from the total dataset for MNIST
%TODO - generate true labels for artificial data

seeds = loadMNISTImages('/Users/Rukmani/Masters/Sem3/FSL/Project/global_k_means/train-images-idx3-ubyte');
seeds = seeds ./ (ones(size(seeds))*255);
labels = loadMNISTLabels('/Users/Rukmani/Masters/Sem3/FSL/Project/global_k_means/train-labels-idx1-ubyte');
kmeansMain(seeds',labels,'MNIST');

kmeansMain(meas,findgroups(species),'Iris');

Mu = [1 -3;-3 -5;3 -6];
Sigma = cat(3,[1 0;0 1],[2 0;0 .5],[1 0;0 1]);
P = ones(1,3)/3;
gm = gmdistribution(Mu,Sigma,P);
seeds = random(gm,5000);
kmeansMain(seeds,labels,'Overlapping');

Mu = [-5 0;1 6;4 -5];
Sigma = cat(3,[1 0;0 1],[2 0;0 .5],[1 0;0 1]);
P = ones(1,3)/3;
gm = gmdistribution(Mu,Sigma,P);
seeds = random(gm,5000);
kmeansMain(seeds,labels,'Separate');


% gmPDF = @(x,y)pdf(gm,[x y]);
% 
% figure;
% ezcontour(gmPDF,[-10 10],[-10 10]);
% hold on
% X = random(gm,5000);
% scatter(X(:,1),X(:,2),10,'.')
% title('GMM - PDF Contours and Simulated Data');

% Draw random samples from the distribution
% myDataSample = myMixtureDistribution.random(800);

