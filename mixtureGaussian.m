%TODO - take random samples from the total dataset for MNIST
%TODO - generate true labels for artificial data

% seeds = loadMNISTImages('/Users/Rukmani/Masters/Sem3/FSL/Project/global_k_means/train-images-idx3-ubyte');
% seeds = seeds ./ (ones(size(seeds))*255);
% labels = loadMNISTLabels('/Users/Rukmani/Masters/Sem3/FSL/Project/global_k_means/train-labels-idx1-ubyte');
% seeds = [labels seeds'];
% input1 = [];
% for i = 0:9
%     mat = seeds(seeds(:,1)==i,:);
%     
%     input1 = [input1; mat(1:500,:)];
% end
% size(input1)
% kmeansMain(input1(:,2:785),input1(:,1),'MNIST');
% 
% kmeansMain(meas,findgroups(species),'Iris');

Mu = [1 -3;-3 -5;3 -6];
Sigma = cat(3,[1 0;0 1],[2 0;0 .5],[1 0;0 1]);
P = ones(1,3)/3;
gm = gmdistribution(Mu,Sigma,P);
[seeds labels] = random(gm,5000);
kmeansMain(seeds,labels,'Overlapping');
% 
Mu = [-5 0;1 6;4 -5];
Sigma = cat(3,[1 0;0 1],[2 0;0 .5],[1 0;0 1]);
P = ones(1,3)/3;
gm = gmdistribution(Mu,Sigma,P);
[seeds labels] = random(gm,5000);
%csvwrite(strcat('Separate_mixture_seeds.dat'),seeds);
%csvwrite(strcat('Separate_mixture_labels.dat'),labels);
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

