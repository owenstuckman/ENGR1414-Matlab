

riverLevel = input("\nInput River Level in Feet:\n");

if riverLevel >= 20
    disp("Major Flooding Present!");
elseif riverLevel >= 16
    disp("Moderate Flooding Present!");
elseif riverLevel >= 14
    disp("Flooding Present!");
else 
    disp("No Flooding Present!");
end

disp(newline);