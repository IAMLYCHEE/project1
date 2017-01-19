%USC EE511 project#1 
%simulate tossing a fair coin and count the number of tosses until reaching a user-specified positive number of heads.
%Li Yicheng
%2017/1/12
%l.y.c.liyicheng@gmail.com

function num_tosses = toss_until(p_thre)
%usage: function num_tosses = toss_until(p_thre)
%Author: Li Yicheng
num_wanted = input('the number of heads you want:');
head_number = 0;
num_tosses = 0;
while (head_number < num_wanted)
    num_tosses = num_tosses + 1;
    if rand(1) > p_thre %a head occurs
        head_number = head_number + 1;
    end
end
