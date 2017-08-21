clear variables

allfiles=dir('.');

fileAvgCnt=0;

baseline=zeros(1000,1);
for actFile=1:size(allfiles,1)
    if strcmp(allfiles(actFile).name(1),'2')
        load(allfiles(actFile).name)
        
        baseline=baseline+mean(rawData,2);
        fileAvgCnt=fileAvgCnt+1;
    end
end


baseline=baseline/fileAvgCnt;

save('initCal','baseline');
