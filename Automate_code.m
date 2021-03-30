dHole = DetectedHole(1,:);
gHole = GivenHole(1,:);

%MinDistance = [];
WrongHole = 0;
CorrectHole = 0;

for i = 1:size(dHole,1)
    dpoint = dHole(1,:);
    Distance = [];
    for j = 1:size(gHole,1)
        gpoint = gHole(j,:);
        Distance(j) = sqrt((dpoint(1)-gpoint(1))^2 +(dpoint(1)-gpoint(1))^2);
        disp(dpoint(1));
    end
    minDist = min(Distance)* 0.075;
    %MinDistance(i) = minDist;
    
    if minDist>0.3
        WrongHole = WrongHole + 1;
    else
        CorrectHole = CorrectHole + 1;
    end
end
figure; 
plot(histogram(MinDistance,10),[]);
title('Histogram of Hole psotion errors between found holes and given holes')
xlabel('Positional errors (mm)') 
ylabel('Count') 
