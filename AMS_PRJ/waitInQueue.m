function [newQueue] = waitInQueue(numOfGroups, oldQueue)
%% description

%% set new queue space
[m, n] = size(oldQueue);
if (n ~= 2),
    error('queue should have 2 columns');
end
newQueue = [oldQueue; zeros([numOfGroups, n])];

%% define customers in a group, insert into queue
for i = 1: numOfGroups,
    peopleInGroup=randi(4);
    newQueue(m+i, :) = [peopleInGroup, 0];
end
    
end