%% PS4000AConfig Configure path information
% Configures paths according to platforms and loads information from
% prototype files for PicoScope 4000 Series Oscilloscopes using the 'A' API
% functions. The folder that this file is located in must be added to the
% MATLAB path.
%
% Platform Specific Information:-
%
% Microsoft Windows: Download the Software Development Kit installer from
% the <a href="matlab: web('https://www.picotech.com/downloads')">Pico Technology Download software and manuals for oscilloscopes and data loggers</a> page.
% 
% Linux: Follow the instructions to install the libps4000a and libpswrappers
% packages from the <a href="matlab:
% web('https://www.picotech.com/downloads/linux')">Pico Technology Linux Software & Drivers for Oscilloscopes and Data Loggers</a> page.
%
% Apple Mac OS X: Follow the instructions to install the PicoScope 6
% application from the <a href="matlab: web('https://www.picotech.com/downloads')">Pico Technology Download software and manuals for oscilloscopes and data loggers</a> page.
% Optionally, create a 'maci64' folder in the same directory as this file
% and copy the following files into it:
%
% * libps4000a.dylib and any other libps4000a library files
% * libps4000aWrap.dylib and any other libps4000aWrap library files
% * libpicoipp.dylib and any other libpicoipp library files
% * libiomp5.dylib 
%
% Contact our Technical Support team via the <a href="matlab: web('https://www.picotech.com/tech-support/')">Technical Enquiries form</a> for further assistance.
%
% Run this script in the MATLAB environment prior to connecting to the 
% device.
%
% This file can be edited to suit application requirements.
%
% Reference page in Help browser
%   doc PS4000aConfig

%% Set Path to Shared Libraries
% Set paths to shared library files according to the operating system and
% architecture.

% Identify working directory
ps4000aConfigInfo.workingDir = pwd;

% Find file name
ps4000aConfigInfo.configFileName = mfilename('fullpath');

% Only require the path to the config file
[ps4000aConfigInfo.pathStr] = fileparts(ps4000aConfigInfo.configFileName);

% Identify architecture e.g. 'win64'
ps4000aConfigInfo.archStr = computer('arch');

try

    addpath(strcat(ps4000aConfigInfo.pathStr, '/', ps4000aConfigInfo.archStr, '/'));
    
catch err
    
    error('PS4000aConfig:OperatingSystemNotSupported', 'Operating system not supported - please contact support@picotech.com');
    
end

% Set the path according to operating system.

% Ensure path to drivers and supporting files are set correctly
if(ismac())
    
    % Libraries (including wrapper libraries) are stored in the PicoScope
    % 6 App folder. Add locations of library files to environment variable.
    
    setenv('DYLD_LIBRARY_PATH', '/Applications/PicoScope6.app/Contents/Resources/lib');
    
    if(strfind(getenv('DYLD_LIBRARY_PATH'), '/Applications/PicoScope6.app/Contents/Resources/lib'))
       
        addpath('/Applications/PicoScope6.app/Contents/Resources/lib');
        
    else
        
        warning('PS4000aConfig:LibraryPathNotFound','Locations of libraries not found in DYLD_LIBRARY_PATH');
        
    end
    
elseif(isunix)
        
    addpath('/opt/picoscope/lib/'); %Edit to specify location of .so files or place .so files in same directory
        
elseif(ispc)
    
    % Microsoft Windows operating system
    
    % Set path to dll files if the Pico Technology SDK Installer has been
    % used or place dll files in the same folder. Detect if 32-bit version
    % of MATLAB on 64-bit Microsoft Windows.
    if(strcmp(ps4000aConfigInfo.archStr, 'win32') && exist('C:\Program Files (x86)\', 'dir') == 7)
       
        try 
            
            addpath('C:\Program Files (x86)\Pico Technology\SDK\lib\');
            ps4000aConfigInfo.winSDKInstallPath = 'C:\Program Files (x86)\Pico Technology\SDK';
            %TODO: Add path to thunk libraries
        catch err
           
            warning('PS4000aConfig:DirectoryNotFound', ['Folder C:\Program Files (x86)\Pico Technology\SDK\lib\ not found. '...
                'Please ensure that the location of the library files are on the MATLAB path.']);
            
        end
        
    else
        
        % 32-bit MATLAB on 32-bit Windows or 64-bit MATLAB on 64-bit
        % Windows operating systems
        try 
        
            addpath('C:\Program Files\Pico Technology\SDK\lib\');
            ps4000aConfigInfo.winSDKInstallPath = 'C:\Program Files\Pico Technology\SDK';
            
        catch err
           
            warning('PS4000aConfig:DirectoryNotFound', ['Folder C:\Program Files\Pico Technology\SDK\lib\ not found. '...
                'Please ensure that the location of the library files are on the MATLAB path.']);
            
        end
        
    end
    
else
    
    error('PS4000aConfig:OperatingSystemNotSupported', 'Operating system not supported - please contact support@picotech.com');
    
end

%% Set Path for PicoScope Support Toolbox Files if Not Installed
% Set MATLAB Path to include location of PicoScope Support Toolbox
% Functions and Classes if the Toolbox has not been installed. Installation
% of the toolbox is only supported in MATLAB 2014b and later versions.

% Check if PicoScope Support Toolbox is installed - using code based on
% <http://stackoverflow.com/questions/6926021/how-to-check-if-matlab-toolbox-installed-in-matlab How to check if matlab toolbox installed in matlab>

ps4000aConfigInfo.psTbxName = 'PicoScope Support Toolbox';
ps4000aConfigInfo.v = ver; % Find installed toolbox information

if(~any(strcmp(ps4000aConfigInfo.psTbxName, {ps4000aConfigInfo.v.Name})))
   
    warning('PS4000aConfig:PSTbxNotFound', 'PicoScope Support Toolbox not found, searching for folder.');
    
    % If the PicoScope Support Toolbox has not been installed, check to see
    % if the folder is on the MATLAB path, having been downloaded via zip
    % file or copied from the Microsoft Windows Pico SDK installer
    % directory.
    
    ps4000aConfigInfo.psTbxFound = strfind(path, ps4000aConfigInfo.psTbxName);
    
    if(isempty(ps4000aConfigInfo.psTbxFound) && ispc())
        
        % Check if the folder is present in the relevant SDK installation
        % directory on Windows platforms (if the SDK installer has been
        % used).
        
        % Obtain the folder name
        ps4000aConfigInfo.psTbxFolderName = fullfile(ps4000aConfigInfo.winSDKInstallPath, 'MATLAB' , ps4000aConfigInfo.psTbxName);

        % If it is present in the SDK directory, add the PicoScope Support
        % Toolbox folder and sub-folders to the MATLAB path.
        if(exist(ps4000aConfigInfo.psTbxFolderName, 'dir') == 7)

            addpath(genpath(ps4000aConfigInfo.psTbxFolderName));

        end
            
    else
        
        warning('PS6000Config:PSTbxDirNotFound', 'PicoScope Support Toolbox directory not found.');
            
    end
    
end

% Change back to the folder where the script was called from.
cd(ps4000aConfigInfo.workingDir);

%% Load Enums and Structures

% Load in enumerations and structure information - DO NOT EDIT THIS SECTION
[ps4000aMethodinfo, ps4000aStructs, ps4000aEnuminfo, ps4000aThunkLibName] = ps4000aMFile; 

