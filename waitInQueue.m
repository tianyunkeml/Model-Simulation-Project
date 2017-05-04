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
    dinnerTime = 0;
    peopleInGroup = randi(4);
    switch peopleInGroup,
        case 1,
            dinnerTime = 20;
        case 1,
            dinnerTime = 30;
        case 1,
            dinnerTime = 35;
        case 1,
            dinnerTime = 45;
    end
    newQueue(m+i, :) = [peopleInGroup, dinnerTime];
end
    
end