trainSize = 17905;
trainSet = zeros(trainSize,28,28);
trainSet = imageConvertion(trainSet,train0,5923,0);
trainSet = imageConvertion(trainSet,train3,6131,5923);
trainSet = imageConvertion(trainSet,train8,5851,6131);
testSize = 2964;
testSet = zeros(testSize,28,28);
testSet = imageConvertion(testSet,test0,980,0);
testSet = imageConvertion(testSet,test3,1010,980);
testSet = imageConvertion(testSet,test8,974,1010);
trainclassLabel(1:5923) = 0;
trainclassLabel(5924:12054) = 3; 
trainclassLabel(12055:17905) = 8;
testclassLabel(1:980) = 0;
testclassLabel(981:1991) = 3;
testclassLabel(1992:2964) = 8;
%%
for iteration = 1:3
neurons = 100;
epochCount = 15;
datasetSize = 17905; 
momentum = 0.6;
alpha = 0.5;

    [weight1, weight2, bias1, bias2] = backPropagation(trainSet,trainclassLabel,neurons,momentum,epochCount,datasetSize,alpha);
    res = Test(testSet,testclassLabel,weight1, weight2, bias1, bias2);
    disp(res)
    
    %plot(eta,res);
end
disp('accuracy')
ans = res/2964;
ans = ans*100;
disp(ans);