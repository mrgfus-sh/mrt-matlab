function [ ] = config( WD )
%config Configure paths and arguments here
%   WD: work directory

%Create parameters
params          = struct;
params.MR       = struct;
params.FUS      = struct;
params.TaskStr  = "";
params.Status   = 0;

assignin("base","params",params);

%Start here
params.TaskStr = "Configuration";

%Get MATLAB version
MATLAB  = version("-release");
fprintf("The MATLAB platform is %s ...\n",MATLAB);
if MATLAB >= "2016a"
    %
else
    fprintf("The MATLAB version less than 2016a was not supported ...\n");
    params.Status = 0;
    assignin("base","params",params);

    return;
end

%Add working paths and remove the invalid
PathChain   = genpath(WD);
PathCell    = strsplit(PathChain,pathsep);

%Add paths to search
%Remove github-associated paths, if applicable
for iPathCell = 1:numel(PathCell)
    TFBool = contains( PathCell{iPathCell},".git" );
    if TFBool == true
        %Ignore paths used by github
    else
        PathStr = PathCell{iPathCell};
        addpath( PathStr );
    end
end

%Configuration finished
params.WorkPath         = WD;
params.MATLABVersion    = MATLAB;
params.Status           = 1;

assignin("base","params",params);

end