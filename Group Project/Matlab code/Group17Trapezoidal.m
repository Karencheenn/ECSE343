%dimensions = [1, 2]; % 1-D, 2-D, and 3-D cases
n = 100000; % Number of subdivisions in each dimension
low = 0;
high = 1;
tol = 1e-3;
d =  3;

f = func6(d);
%f = @(x) func42(x);
f_builtin = func6_for_builtin(d);
%builtin_integral = integral(f_builtin,low,high);
%builtin_integral = integral2(f_builtin,low,high,low,high);
builtin_integral = integral3(f_builtin,low,high,low,high,low,high);
%[inte,num_eva] = multidimensionalTrapezoidal(f, d, n, low, high);

% abs_diff = abs(builtin_integral-inte);
% rel_error = (abs_diff)/abs(builtin_integral);
% disp(inte)
% disp(rel_error)


%integral = multidimensionalTrapezoidal(f, d, n, low, high);

% disp(integral);
% disp(builtin_integral);
num_evaluation = [];
error = [];
tic
for n = 1:100
    [inte,num_eva] = multidimensionalTrapezoidal(f, d, n, low, high);
     %disp(integral);
     abs_diff = abs(builtin_integral-inte);
     rel_error = (abs_diff)/abs(builtin_integral);
 
     num_evaluation = [num_evaluation, num_eva];
     error = [error, rel_error];

     if((rel_error)<tol)
         break
    end
end
toc
figure
semilogy(num_evaluation, error, 'DisplayName', 'Error Margin')
hold on;
yline(tol, 'r--', 'DisplayName', 'Tolerance Threshold'); % Adds a tolerance threshold line
hold off;
xlabel('Number of Function evaluation (n)')
ylabel('Error (Log Scale)')
title('Convergence of Multidimensional Trapezoidal Approximation Error with Increasing Subdivisions');
legend('show'); % Show legend if you have multiple curves or have added the tolerance line

grid on
grid minor



function [inte,num] = multidimensionalTrapezoidal(f, d, n, low, high)


    % calculate the step size 
    h = (high - low) / n;
    % generate the points for each dimensions
    pts = linspace(low, high, n + 1);
% initialize the parameters to use
    edgeWeights = 0.5 * ones(1, d);
    interiorWeight = 1;
    sum = 0;
    num = 0;
    for idx = 1:n^d
% Compute the multidimensional index
        [ind{1:d}] = ind2sub(repmat(n + 1, 1, d), idx);
        x = zeros(1, d);
        weight = interiorWeight;
        for dim = 1:d
            x(dim) = pts(ind{dim});
% Adjust weight for edge points
            if ind{dim} == 1 || ind{dim} == n + 1
                weight = weight * edgeWeights(dim);
            end
        end
    % Integrate the value by sum the previous integral and the function
    % value * weight at that point
    sum = sum + weight * f(x);
    num = num+1;
    end
% Adjust the final sum to account for the step size in each dimension
inte = sum * h^d;
end