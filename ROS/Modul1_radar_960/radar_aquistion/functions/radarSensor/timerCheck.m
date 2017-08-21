t.Period = 1;
t.TimerFcn = {@streamData};
start(t);    



function streamData(hObj, eventdata)
disp('timey-wimey');
end