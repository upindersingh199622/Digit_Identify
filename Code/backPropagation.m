function [weight1, weight2, bias1, bias2]=backPropagation(trainSet,trainclassLabel,neurons,momentum,epochCount,datasetSize,learningRate)

weight1 = randn(neurons,784); 
weight2 = randn(10,neurons); 
bias1 = randn(neurons,1); 
bias2 = randn(10,1);
dweight1 = zeros(neurons,784);
dweight2 = zeros(10,neurons); 
dbias1 = zeros(neurons,1); 
dbias2 = zeros(10,1);

for j=1:epochCount
    for i=1:datasetSize
        arr = [0,0,0,0,0,0,0,0,0,0];
        temp = trainclassLabel(i) + 1;
        arr(temp) = 1;
        image = trainSet(i,:)';
        weight1x = weight1; 
        weight2x = weight2; 
        bias1x = bias1; 
        bias2x = bias2;
        [weight1 ,weight2, bias1, bias2] = singleton(image,arr',weight1,weight2,bias1,bias2,learningRate);
    end
    %disp(j)
end
