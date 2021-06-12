
% load image

A = imread('street2.jpg');
A = rgb2gray(A);

B = double(A);

% compute SVD

size(B)
r = rank(B)
[U,S,V] = svd(B);

% approximate image

ranks = [1 15 30 50 100 180 250 r];
l = length(ranks);

for i = 1:l
    
    % compute rank i approximation
    
    k = ranks(i);
    
    approxB = U(:,1:k)*S(1:k,1:k)*V(:,1:k)';
   
    approxA = uint8(approxB);
    
    % plot images
    
    figure(1)
    subplot(2,4,i)
    imshow(approxA);
    title(sprintf('rank %d approximation',k))
  

    
end


