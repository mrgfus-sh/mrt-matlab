function [ ] = config( WD )
%config Configure paths and arguments here
%   wd: work directory

%% Add all paths
PathStringsCollection   = genpath(WD);
PathStrings             = regexp(PathStringsCollection,pathsep,"split");

end