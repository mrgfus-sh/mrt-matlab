% This tool is developed for magnetic resonance thermometry
% All right reserved

clear; close all; close all hidden;

config(pwd);

if strcmp(params.TaskStr,"Configuration") && params.Status
    UIFigureCore();
else
    return;
end