max_range = 300; % m
range_res = 1; % m, range resolution
c = 3e8; % m/s, speed of light


% Find the Bsweep of chirp for given resolution
% IDK why, but apprently range_res = c / (2 * Bsweep)
Bsweep = c / (2 * range_res); % Hz


% Note : The sweep time can be computed based on the time needed for the
% signal to travel the maximum range. In general, for an FMCW radar system,
% the sweep time should be at least 5 to 6 times the round trip time.
% This example uses a factor of 5.5:
Tchirp = 5.5 * 2*max_range / c; % s, length of time interval of a chirp


% define the frequency shifts 
dfs = [0 1.1 13 24] * 10^6; % target beat freqs in Hz (MHz inside the brackets)

% Display the calculated range

ranges = c * Tchirp * dfs / (2 * Bsweep);

disp(ranges);