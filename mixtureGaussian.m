k=input('Enter value of k: ');
Mu = [1 -3;-3 -5;3 -6];
Sigma = cat(3,[1 0;0 1],[2 0;0 .5],[1 0;0 1]);
P = ones(1,3)/3;
gm = gmdistribution(Mu,Sigma,P);
% gmPDF = @(x,y)pdf(gm,[x y]);

% figure(1);
% ezcontour(gmPDF,[-10 10],[-10 10]);
% hold on
X1 = random(gm,5000);
% scatter(X1(:,1),X1(:,2),10,'.')
% title('GMM - PDF Contours and Simulated Data');

kmeansClustering(X1,k);
globalKmeansClustering(X1,k);
fastKmeansClustering_kd(X1,k,10);

% Mu = [-5 0;1 6;4 -5];
% Sigma = cat(3,[1 0;0 1],[2 0;0 .5],[1 0;0 1]);
% P = ones(1,3)/3;
% gm = gmdistribution(Mu,Sigma,P);
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

