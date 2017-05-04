
N = 100;

customerFreq = zeros([600,1]);
amp_rate = 4;
for i = 1:600,
    switch ceil(i/60),
        case 1,
            customerFreq(i) = 0.00106 * amp_rate;
        case 2,
            customerFreq(i) = 0.0029 * amp_rate;
        case 3,
            customerFreq(i) = 0.00163 * amp_rate;
        case 4,
            customerFreq(i) = 0.00087 * amp_rate;
        case 5,
            customerFreq(i) = 0.00069 * amp_rate;
        case 6,
            customerFreq(i) = 0.00163 * amp_rate;
        case 7,
            customerFreq(i) = 0.00243 * amp_rate;
        case 8,
            customerFreq(i) = 0.0031 * amp_rate;
        case 9,
            customerFreq(i) = 0.00265 * amp_rate;
        case 10,
            customerFreq(i) = 0.00163 * amp_rate;
    end
end
clear i;

save('data.mat', 'N', 'customerFreq');
            
            