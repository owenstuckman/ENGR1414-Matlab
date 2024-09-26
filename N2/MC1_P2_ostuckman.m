% Hazardous waste codes %
% Created by Owen Stuckman on 9/19 %

clc
clear 

% get first char inputed %
charBegin = input("Please input the letter at the beginning of the hazardous waste code: (in quotes) \n");

% check if equals D %
if charBegin == "D"
    % enter code num %
    numCode = input("\nPlease enter the number following the D in the code: \n");
    disp(newline);
    % switch based on numCode -> corresponding hazard description %
    switch numCode
        case 1
            disp("Ignitability");
        case 2 
            disp("Corrosivity");
        case 3 
            disp("Reactivity")
        case 4
            disp("Toxicity");
        otherwise 
            disp("Invalid or other types of hazardous waste.");
    end
else 
    disp(newline);
    disp("Invalid or unclassified code.");
end
