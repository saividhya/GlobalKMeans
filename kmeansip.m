seeds = csvread('Separate_mixture_seeds.dat');
labels = csvread('Separate_mixture_labels.dat');
kmeansMain(seeds,labels,'Separate');
