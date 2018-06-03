trainSize = 11982;
trainSet = zeros(trainSize,28,28);
trainSet = imageConvertion(trainSet,train3,6131,0);
trainSet = imageConvertion(trainSet,train8,5851,6131);
testSize = 1984;
testSet = zeros(testSize,28,28);
testSet = imageConvertion(testSet,test3,1010,0);
testSet = imageConvertion(testSet,test8,974,1010);