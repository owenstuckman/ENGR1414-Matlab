% Problem 3: Solar Cell Calculator %
% Made by Owen Stuckman : September 13, 2024 %

clear
clc

% Get user input
avgSolarRadiation = input("Average solar radiation in kWh/m2/day \n");

amtSolarPanels = input("\nQuantity of solar panels to install: \n");

% Calculate total energy produced
totEnergyProd = (1.67 * amtSolarPanels) * (.23) * (avgSolarRadiation) * (.75);

% Display total
disp(newline);
disp("in kWh")
disp(totEnergyProd);

