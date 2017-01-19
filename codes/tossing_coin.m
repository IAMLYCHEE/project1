%USC EE511 project#1 1
% simulate tossing a fair coin evaluate budget times.count the number of heads. record the longesst run of heads .Generate a histogram for the Bernoulli outcomes.
%Li Yicheng
%2017/1/12
%l.y.c.liyicheng@gmail.com

function [head_number,longest_run] = tossing_coin(eval_budget,p_thre)
% usage: function [head_number,longest_run] = tossing_coin(eval_budget,p_thre)
%tossing eval_budget times
%Author : Li Yicheng 
result = zeros(eval_budget,1);
length = 0;
longest_run = 0;
head_number = 0;
tail_number = 0;
head_rela_fre = zeros(1,eval_budget);
tail_rela_fre = zeros(1,eval_budget);
for i = 1 : eval_budget
    coin = rand(1) < p_thre;
    if coin > 0 %a head
        head_number = head_number + 1;
        length = length + 1; %add length
        result(i) = 1;
        %the state now is a head
    else % a tail
        tail_number= tail_number + 1;
        result(i) = 0;
        if length > longest_run
            longest_run = length; %refresh the new longest run
        end
        length = 0; %reset the length
        %the state now is a tail
    end
        head_rela_fre(i) = head_number / i;
        tail_rela_fre(i) = tail_number / i;
end

disp('the longest run of heads:')
disp(int2str(longest_run))
disp('the number of heads:')
disp(int2str(head_number))

subplot(1,2,1)
plot(head_rela_fre)
hold on
plot(tail_rela_fre)
title('relative frequency of head and tail')
xlabel('toss number')
ylabel('relative frequency')
hold off

subplot(1,2,2)
histogram(result)
title('histogram to record the head number and the tail number')
xlabel('0: tail 1:head')
ylabel('times')
