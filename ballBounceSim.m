% Ball bouncing in single plane simulation

% Variables
radius = 0.1; % Radius of the ball
g = 9.81; % Gravitational Acceleration
restitution = 0.9; % Restitution Coefficient
dt = 0.01; % Time step (seconds)
total_time = 10; % Total simulation time (seconds)

y = 1; % Initial displacement (m)
vy = 0; % Velocity (m/s)


for t = 0:dt:total_time
    y = y + vy * dt;
    
    vy = vy - g * dt; 
    
    
    if y - radius < 0
        y = radius; 
        vy = -vy * restitution;
    end
    
    clf; 
    hold on;
    ylabel("Displacement /m");
    title("Ball Bounce Sim");
    axis equal;
    ylim([0 1.5]);
    viscircles([0, y], radius, 'Color', 'b'); 
    pause(dt);
end
