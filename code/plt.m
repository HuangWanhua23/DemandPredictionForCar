clear; close all; clc;

load('./data/demand_10.mat');

time = 0 : 1/144 : 21 - 1/144;

totalDemand_time = sum(demand, 2);
figure;
plot(time, totalDemand_time);
xlabel('ʱ��');
ylabel('������');
title('����������ʱ��仯����');
set(gca, 'XLim', [-0.2, 21.1]);

day = 1 : 21;
totalRegionDemand_time = sum(reshape(totalDemand_time, 144, 21));
figure;
plot(day, totalRegionDemand_time);
xlabel('����');
ylabel('������');
title('ÿ���������������ڱ仯����');
set(gca, 'xtick', 1 : 21);
set(gca, 'xLim', [0, 22]);

oneDay = 11;
totalRegionDemand_11 = totalDemand_time(144 * (oneDay - 1) + 1 : 144 * oneDay);
figure;
plot(0 : 1/6 : 24 - 1/6, totalRegionDemand_11);
xlabel('Сʱ');
ylabel('������');
title('11������������ʱ��仯����');
set(gca, 'xtick', 0 : 24);
set(gca, 'xLim', [0, 24]);

oneDay = 1;
totalRegionDemand_1 = totalDemand_time(144 * (oneDay - 1) + 1 : 144 * oneDay);
figure;
plot(0 : 1/6 : 24 - 1/6, totalRegionDemand_1);
xlabel('Сʱ');
ylabel('������');
title('1������������ʱ��仯����');
set(gca, 'xtick', 0 : 24);
set(gca, 'xLim', [0, 24]);

regionDemand = sum(demand);
figure;
bar(1:66, regionDemand);
set(gca, 'xtick', 1 : 66);
xlabel('����ID');
ylabel('������');
title('��ͬ�������������');