function Preds = K_nn (TestImage, TrainingImages,TrainingLabels,k,NumberOfGesture)
% detect the size of training image
[Height,Width]=size(TrainingImages);
testimage = double(reshape(TestImage,1,3600));

% calculating Euclidean distance of testimage and each training image
Dist=pdist2(testimage,TrainingImages);

% weight of polling
Weights = zeros(1,NumberOfGesture);

% recognition and prediction
for i=1:k
    [u,v]=min(Dist(1,1:Height-k+1));
    Weights(1,TrainingLabels(v,1))=Weights(1,TrainingLabels(v,1))+1/u;
    temp=TrainingLabels(v,1);
    TrainingLabels(v,1)=TrainingLabels(Height-k+1,1);
    TrainingLabels(Height-k+1,1)=temp;
    temp=Dist(1,v);
    Dist(1,v)=Dist(1,Height-k+1);
    Dist(1,Height-k+1)=temp;
end

% return prediction
[u,Preds] = max(Weights);

end