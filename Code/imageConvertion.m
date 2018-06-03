function[imageSet] = imageConvertion(imageSet,digit,size,lastSize)
%this module helps us to make a big and compact dataset
%we will take the matrices provided to us in the database
%convert/preprocess our data into gray scale format and
%then, we shall add all the digits in a bigger matrix
%using this, we can test and train all the digits at once
%Binarization and Noise Cleaning
for i=1:size
I=digit(i,:);
level = graythresh(I); %find threshold value
BW = im2bw(I,level);
BW2 = bwmorph(BW,'clean',1); %clean noise
imageSet(i+lastSize,:,:)=reshape(BW2,28,28);
end