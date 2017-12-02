%TODO - take random samples from the total dataset for MNIST
%TODO - generate true labels for artificial data

seeds = loadMNISTImages('train-images-idx3-ubyte');
seeds = seeds ./ (ones(size(seeds))*255);
labels = loadMNISTLabels('train-labels-idx1-ubyte');
seeds = [labels seeds'];

input1 = [];
for i = 0:9
    mat = seeds(seeds(:,1)==i,:);
    input1 = [input1; mat(1:500,:)];
end
[coeff,score,latent] = pca(input1(:,2:785));
input = score(:,1:10);
size(input)
kmeansMain(input,input1(:,1),'MNIST');

Mu = [1 -3;-3 -5;3 -6];
Sigma = cat(3,[1 0;0 1],[2 0;0 .5],[1 0;0 1]);
P = ones(1,3)/3;
gm = gmdistribution(Mu,Sigma,P);
[seeds labels] = random(gm,5000);
kmeansMain(seeds,labels,'Overlapping');

Mu = [-5 0;1 6;4 -5];
Sigma = cat(3,[1 0;0 1],[2 0;0 .5],[1 0;0 1]);
P = ones(1,3)/3;
gm = gmdistribution(Mu,Sigma,P);
[seeds labels] = random(gm,5000);
kmeansMain(seeds,labels,'Separate');

