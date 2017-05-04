function numOfGroups = comesAt(time)
%% description

%% binomial distribution
load('data.mat');
% N be loaded
P = customerFreq(time);
if P>1,
    P = 1;
end;
numOfGroups = binornd(N, P);

end