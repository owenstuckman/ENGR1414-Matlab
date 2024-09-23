% Script to calculate the volume of a soil stockpile %

clear 
clc

while true
    % input diameter %
    diameterSoil = input("\nPlease input a diamter: \n");
    
    % calculate area based on diameter %
    areaSoil = pi()/(4*(diameterSoil^2));
    
    % calculate volume %
    volumeSoil = (areaSoil*diameterSoil)/6;
    
    % display volume and area %
    disp(newline);
    disp("The volume in cubic meters is " + volumeSoil);
    
    % format % 
    disp(newline);

    % Rerun? %

    reRun = input("\nInput if you want to run again (Y/N): \n");
    if reRun == "N"
        disp(newline);
        break;
    end 
end