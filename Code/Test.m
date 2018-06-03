function [res] = Test(testSet, testclassLabel, W1, W2, B1, B2)

res = 0;
for i=1:1984
    arr = [0,0,0,0,0,0,0,0,0,0];
    temp = testclassLabel(i) + 1;
    arr(temp) = 1;
    image = testSet(i,:)';
    out1 = feedForward(image,B1,W1);
    out2 = feedForward(out1,B2,W2);
    [va,ind] = max(out2);
    if (ind==temp)
        res = res + 1;
    end
end