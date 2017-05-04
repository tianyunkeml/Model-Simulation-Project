function new_seat = clean_seat( old_seat )
global EATING_TIME;
[hight,width]=size(old_seat);
for i=1:hight
    if old_seat(i,2)~=0
        if old_seat(i,3)>EATING_TIME(old_seat(i,2));
            old_seat(i,2)=0;
            old_seat(i,3)=0;
        end
    end
end
new_seat=old_seat;

end

