PicoScope 4000 Series MATLAB Generic Instrument Driver Beta Release Notes
=========================================================================

Driver Version: 1.1.26 Beta 19th August 2015

License
-------

The driver and supporting files in this zip file are subject to the License terms in the PicoScope 4000 Series (A API) Programmer's Guide which can be found in the User Manuals section of our Support pages:

https://www.picotech.com/download/manuals/ps4000apg-en-1.pdf

Installation
------------

For the underlying dlls required please download the PicoScope 4000 Series (A API) Software Development Kit from 

https://www.picotech.com/downloads

The following dlls will be required:

- ps4000a.dll
- PicoIpp.dll
- ps4000aWrap.dll 

The following dll files installed as part of the SDK are also required for 64-bit versions of MATLAB:

- ps4000a_thunk_pcwin64.dll
- ps4000aWrap_thunk_pcwin64.dll

The above files are located in the C:\Program Files\Pico Technology\SDK\src\MATLAB\ps4000a\win64 folder - if installing the files from this zip file, please copy them to the ps4000a/win64 folder.

MATLAB for Linux platforms will require the libps4000a and libpswrapper packages to be downloaded (please refer to https://www.picotech.com/downloads/linux). Please contact support@picotech.com for the 'thunk' libraries or obtain them from the C:\Program Files\Pico Technology\SDK\src\MATLAB\ps4000a\glnxa64 folder in the Windows SDK.

The PS4000aConfig file will add the location of these files to the MATLAB path otherwise, please add the location of the libraaries to the path (use the 'addpath' command if required).  

The mex -setup command will need to be run on your PC in order to setup a C compiler.

For 64-bit versions of MATLAB, the Microsoft Windows SDK 7.1 will need to be installed on your PC. Please see the following web page for further information:

http://www.mathworks.com/matlabcentral/answers/101105

Alternatively, ensure that a compatible 64-bit compiler has been installed.


The root folder of this zip file contains the following folders and files:

Functions 	- helper functions to convert data
ps4000a    	- Containing the instrument control driver (picotech_ps4000a_generic.mdd), architecture specific folders containing information extracted from 					the header files, PicoScope 4000 specific constants, a configuration file, an examples folder and a help folder.


PicoConstants.m - Constant values used for Pico devices - DO NOT EDIT
PicoStatus.m    - Status code definitions - DO NOT EDIT

The driver was created using MATLAB R2014b (32-bit for Windows) with Instrument Control Box v3.6.

The PS4000aConfig.m will setup relative paths to the Functions and root directory when run - ensure that this script is called before creating an icdevice object. Ensure that the ps4000a folder is added to the MATLAB path.

Supported Devices
-----------------

PicoScope 4225*
PicoScope 4425*
PicoScope 4824

* NOTE: Data acquisition is supported for these devices. To use features such as ConnectDetect(TM), the PicoScope 6 Automotive software should be used.

Functions & Properties
----------------------

The Instrument Control driver contains a number of functions and properties which can be used to configure the device and collect data. 

For functions beginning with 'ps4000a' e.g. ps4000aSetChannel, please refer to the corresponding underlying function in the main Programmer's guide for further information on parameters and function descriptions. 

New functions that simplify calls to the underlying driver e.g. setSigGenBuiltInSimple have also been included in the driver.

The resetDevice() function can be used to set the driver back to it's original state which includes all channels being set to a range of 5V.

For a list of base device functions provided by the instrument driver, create an instrument driver object e.g.:

ps4000aDeviceObj = icdevice('picotech_ps4000a_generic.mdd');

Next use the methods function to display a list of class and device specific methods e.g.

methods(ps4000aDeviceObj);

Some functionality is provided via group objects - please refer to the examples for further information.

Help text for some of the functions and properties can be found by using the 'instrhelp' function or in the Test and Measurement tool (tmtool) using the 'Show Help' button.

Examples Provided
-----------------

PS4000A_ID_Block_Example.m 		- Captures a block of data from a single channel and a simple trigger.

PS4000A_ID_Block_FFT_Example.m 		- Captures a block of data from a single channel and a simple trigger, then plots an FFT of the signal using an example from the MathWorks website.

PS4000A_ID_Block_Adv_Trigger_PWQ_Example - Captures a block of data from a single channel using a pulse width qualifier.

PS4000A_ID_Rapid_Block_Plot3D_Example.m  - Captures a rapid block of data using a simple trigger and plots the captures in 3D.

PS4000A_ID_Streaming_Example.m 		- Captures data on 2 channels using streaming mode without a trigger.

PS4000A_ID_Sig_Gen_Example.m 		- Shows different examples of using the in-built function generator with specific waveforms.

These scripts can be run from the MATLAB command window or editor.


Test and Measurement Tool
-------------------------

The driver can be used with the Test and Measurement Tool by typing 'tmtool' at the MATLAB command prompt. 

Ensure that the current directory is set to ps5000a and that the path to the 'Functions' and root directory is set as described above. The PS4000aConfig.m file MUST be run PRIOR to loading the driver.

Create a new device object, and load in the driver file. Click 'Connect' to make the connection to the scope and it should then be ready for data collection.

Variables from the MATLAB workspace can be passed as arguments using the following command:

evalin('base', 'variable_name')

where the variable name must be in quotes.

Ensure that the device is disconnected when finished to avoid a driver lockup.


Unsupported Features
--------------------

The following features are not provided in this release of the driver:

- Data collection using aggregation.

Known Issues
------------

* N/A

Contact
-------

Please send any questions, comments and feedback to support@picotech.com