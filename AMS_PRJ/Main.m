data;

global EATING_TIME;
max_repeat_time = 100;
profit_hist = zeros([11, max_repeat_time]);

for seat_4 = 0:10,
    EATING_TIME = [20 30 35 45];
    seatNum=seat_4+(40-seat_4*4)/2;
    queue_=[1 0];
    seat_=zeros(seatNum,3);
    seat_(:,1)=2;
    if seat_4>0
        for i=1:seat_4
            seat_(i,1)=4;
        end
        clear i;
    end
    for repeat_time = 1:max_repeat_time;
        profit_ = 0;
        for time_count=1:600
            numOfGroups=comesAt(time_count);
            queue_=waitInQueue(numOfGroups,queue_);
            queue_=clean_queue(queue_);
            [profit_,seat_,queue_]=fillIn(profit_,seat_,queue_);
            seat_=clean_seat(seat_);
        end
        clear time_count;
        profit_hist(seat_4+1, repeat_time) = profit_;
    end
end

surf(profit_hist);
mean_profit = mean(profit_hist, 2);
figure;
plot(0:10, mean_profit)
