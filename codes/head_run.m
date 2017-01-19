%USC EE511 project#1 3
% simulate tossing coin.generate a histogram how the head run length.
%Li Yicheng
%2017/1/12
%l.y.c.liyicheng@gmail.com

function head_run(eval_budget)
% usage: function head_run(eval_budget)
head_number = 0;
length = 0;
j = 1;
for i = 1 : eval_budget
    coin = rand(1) > 0.5;
    if coin > 0 %a head
        head_number = head_number + 1;
        length = length + 1; %add length
    else % a tail
        if length > 0
            record(j) = length;  %record the head run
            j = j + 1;
        end
        length = 0; %reset the length
    end
end

figure
histogram(record')
title('histogram for the outcome')
title('the histogram of the run length of head')
xlabel('run length')
ylabel('times')
