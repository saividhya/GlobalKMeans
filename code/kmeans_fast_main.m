seeds = csvread('data/MNIST_seeds.dat');
labels = csvread('data/MNIST_labels.dat');
kmeansMain_kdbuckets(seeds,labels,'MNIST');

seeds = csvread('data/Overlapping_seeds.dat');
labels = csvread('data/Overlapping_labels.dat');
kmeansMain_kdbuckets(seeds,labels,'Overlapping');

seeds = csvread('data/Separate_seeds.dat');
labels = csvread('data/Separate_labels.dat');
kmeansMain_kdbuckets(seeds,labels,'Separate');
