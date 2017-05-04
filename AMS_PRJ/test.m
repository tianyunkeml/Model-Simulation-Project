data;
start = 61;
cnt_customer = zeros([60,1]);

for i = start: start + 59,
    cnt_customer(i - start + 1) = comesAt(i);
end;

figure;
histogram(cnt_customer);