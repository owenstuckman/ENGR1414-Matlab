% Program calculates drug elimination from the body%
% Written by Owen Stuckman on September 13, 2024%

clc
clear

% Receive user input for variables to input into formula%

% C0 %
initConc = input("Input the initial concentration in milligrams(mg): \n");
% tsub1/2 %
estHalfLife = input("\nInput the estimated half life in hours(hrs): \n");
% t %
timePassed = input("\nInput the time that has passed in hours(hrs): \n");

% Calculate elimination rate and current concentration%

% k %
elimRate = log(2) / (estHalfLife);
% C(t) %
finalConc = initConc * exp((-1) * (elimRate) * (timePassed));

disp(newline);
disp("The current concentration of the drug in the body is: ")
disp("(for a given t in mg or hrs/mg)");
disp(finalConc);