function [p,s,q] = fillIn(p,s,q)
% p = current profit
% s = current seat
% q = current queue
% Return updated p,s,q

for i = 1:size(s,1)
    if s(i,2) == 0   % Check if there is any empty seat
        for j = 1:size(q,1)
            % Make sure j does not exceed the updated q
            if j <= size(q,1) 
                % Check if there is any group in the queue 
                % that can take the empty seat
                % The 3rd condition ensures only one group takes the table
                if q(j,1) ~= 0 && q(j,1) <= s(i,1) && s(i,2) == 0 
                    s(i,2) = q(j,1); % Fill in the table
                    p = p + 20*q(j,1); % Update the profit
                    q = q([1:j-1,j+1:end],:); % Update the queue
                end
            end
        end
    end
end

% Update eating time
for i = 1:size(s,1)
    if s(i,2) ~= 0 % If the table is not empty
        s(i,3) = s(i,3)+1;
    end
end

% Update waiting time
for i = 1:size(q,1)
    if q(i,1) ~= 0
        q(i,2) = q(i,2)+1;
    end
end
        

                 
                