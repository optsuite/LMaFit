% generate path
path(path,genpath(pwd))

% compile mex files if necessary
Amexfile = ['partXY.mex' lower(computer)];
%if ~exist(Amexfile,'file')
    cd Utilities;
    %%mex -O -largeArrayDims updateSval.c -lmwblas -output  updateSval
    %mex -O -largeArrayDims updateSval.c 
    %%mex -O -largeArrayDims partXY.c -lmwblas -output partXY
    %mex -O -largeArrayDims partXY.c
    
    % Build with the 64-bit API
    mex -O -largeArrayDims updateSval.c 
    mex -O -largeArrayDims partXY.c
    
    %%Build with the 32-bit API
    %mex -O -largeArrayDims  -compatibleArrayDims updateSval.c
    %mex -O -largeArrayDims  -compatibleArrayDims partXY.c
    
    cd ..;
%end

% you are all set
disp('Welcome to LMaFit')
