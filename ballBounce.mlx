% This simulation shows how a ball bounces over given parameters


totalDis = 1 ;
disMoved = 0;
g = 9.81;  % Gravitational Constant
dt = 0.001;  
t = 0;
v = 0;
C = 0.8;  % Restitutional Constant

times = 0:dt:5 ;
[r,c] = size(times);
displacements = zeros(c,1);

for i = 1:c 
    displacements(i) = totalDis;

    disMoved = v*dt + g*(dt.^2);
    v = v + g*dt;

    totalDis = totalDis - disMoved; 
    if totalDis < 0.01 && v > 0
        v = (v)*-0.8 ;

    end
    %plot(totalDis,t,"r--")
end

plot(times, displacements,"r--")

xlabel("Time/s")
ylabel("Displacement/s")
title("Ball Bounce Graph")
