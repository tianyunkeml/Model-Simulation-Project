function new_queue = clean_queue( old_queue )
old_queue(:,2)=old_queue(:,2)+1;
[leave,column]=find(old_queue>15);
old_queue(leave,:)=[];
new_queue=old_queue;

end

