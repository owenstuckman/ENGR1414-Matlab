% Cycling goal tracker %
% Written by Owen Stuckman 9/19/2024 %

clc
clear

% init vectors and vars%
date = [];
miles = [];
runCount = 1;
sum = 0;
indexHund = 0;

% infinite loop %
while true

    % ask for input of date and miles %
    newDate = input("\nEnter date in MMDD format: \n");
    newMiles = input("\nPlease enter the miles cycled on the entered date: \n");
    
    % store to vector %
    date(runCount) = newDate;
    miles(runCount) = newMiles;

    % ask to run again %
    runAgain = input("\nWould you like to enter another day? (Y/N) \n");
    
    % not run again? %
    if runAgain == "N"
        % break out of infinite loop %
        break
    end
    % increment run count for vectors %
    runCount = runCount + 1;
end

foundHund = false;

% calculate sum of miles %
for i = 1:length(miles)
    sum = miles(i) + sum;
    if sum > 100 && foundHund == false
        indexHund = i;
        foundHund = true;
    end
end

% Display %
disp(newline);
disp("Total numbers of miles cycled:")
disp(sum);

% if over 100, report day acheived 100 %
if indexHund ~= 0
    disp("Date ")
    disp(date(i));
end