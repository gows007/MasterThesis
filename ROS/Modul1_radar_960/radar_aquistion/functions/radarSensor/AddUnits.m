function str = AddUnits(vector, units)

unitDetect = floor(log10(vector)/3);
temp       = round(vector./10.^(3*unitDetect),10);
unitDetect = units(unitDetect + 4);
str = cell(1,length(unitDetect));
for i=1:length(temp)
    str{i} = [num2str(temp(i)) unitDetect{i}];
end