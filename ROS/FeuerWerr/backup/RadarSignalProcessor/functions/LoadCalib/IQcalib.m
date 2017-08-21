function [ calData ] = IQcalib( x )
%This function applies the IQ calibration. The IQ-calibration accounts for
%gain- and phase error, other influences like DC-component or masking of
%interfering signals must be applied before calling this function. 
%   
%   The IQ calibration for radar is described in "IQ and array calibration
%   for FMCW radar", Michael Ulrich and Bin Yang, International Radar
%   Symposium 2017. 
%   
%   Input arguments:
%       x       := the radar raw data
%
%   Output arguments:
%       calData := the calibrated data
%
%   (c) by Institute of Signal processing and System Theory
%       University of Stuttgart
%       Michael Ulrich
%   
%   v1.0: 2017-04-24:  created


%% IQ calibration, compare IRS publication
ratioOfMeans = sum(x(:).^2) / sum(4*real(x(:)).^2);
% ratioOfMeans = sum(x(:).^2) / sum((x(:)+conj(x(:))).^2);

lambda = sqrt(1-4*real(ratioOfMeans));
gamma = 2/lambda * imag(ratioOfMeans);

c = -gamma/sqrt(1-gamma^2);
d = 1/(lambda*sqrt(1-gamma^2));

calData = real(x) + 1j*(c*real(x) + d*imag(x));

end

