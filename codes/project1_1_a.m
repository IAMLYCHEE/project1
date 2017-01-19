%USC EE511
%project#1  1.a
%Li Yicheng 
%2017/01/12
%l.y.c.liyicheng@gmail.com

% repeat the experiments 20 times
exp_20 = zeros(20,1);
for i = 1 : 20
    result  = rand(1,50);
    exp_20(i) = sum(result);%count the number of heads and store the amount
end
subplot(3,2,1)
histogram(exp_20,50,'BinLimits',[0,50])
title('20 times')
xlabel('number of heads')
ylabel('times')
% exp_20

% repeat the experiments 100 times
exp_100 = zeros(100,1);
for i = 1: 100
    result = rand(1,50);
    exp_100(i) = sum(result);%count the number of heads and store the amount
end
subplot(3,2,2)
histogram(exp_100,50,'BinLimits',[0,50])
title('100 times')
xlabel('number of heads')
ylabel('times')
% exp_100

% repeat the experiments 200 times
exp_200 = zeros(200,1);
for i = 1:200
    result = rand(1,50);
    exp_200(i) = sum(result); %count the number of heads and store the amount
end
subplot(3,2,3)
histogram(exp_200,50,'BinLimits',[0,50])
title('200 times')
xlabel('number of heads')
ylabel('times')


% repeat the experiments 1000 times
exp_1000 = zeros(1000,1);
for i = 1:1000
    result = rand(1,50);
    exp_1000(i) = sum(result); %count the number of heads and store the amount
end
subplot(3,2,4)
histogram(exp_1000,50,'BinLimits',[0,50])
title('1000 times')
xlabel('number of heads')
ylabel('times')

exp_2000 = zeros(2000,1);
for i = 1:2000
    result = rand(1,50);
    exp_2000(i) = sum(result); %count the number of heads and store the amount
end
subplot(3,2,5)
histogram(exp_2000,50,'BinLimits',[0,50])
title('2000 times')
xlabel('number of heads')
ylabel('times')

exp_100000 = zeros(100000,1);
for i = 1:100000
    result = rand(1,50);
    exp_100000(i) = sum(result); %count the number of heads and store the amount
end
subplot(3,2,6)
histogram(exp_100000,50,'BinLimits',[0,50])
title('100000 times')
xlabel('number of heads')
ylabel('times')
