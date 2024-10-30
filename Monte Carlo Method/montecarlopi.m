function pi_estimate = montecarlopi(num_points)
    % Monte Carlo method to estimate the value of Pi
    % num_points: Number of random points to generate

    % Generate random points in the unit square
    x = rand(num_points, 1);
    y = rand(num_points, 1);

    % Calculate the distance from the origin
    distance = sqrt(x.^2 + y.^2);

    % Count the number of points inside the unit circle
    points_inside_circle = sum(distance <= 1);

    % Estimate Pi using the ratio of points inside the circle to total points
    pi_estimate = 4 * points_inside_circle / num_points;
end