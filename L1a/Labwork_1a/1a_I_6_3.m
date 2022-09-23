% (c)2021 Hien PHAN.
% While loop - Doubling time of an investment
clc;
clear;

function time = InvestTime(InvestedMoney, Target, Rate)
    time = 0;
    while InvestedMoney < Target
        time
        InvestedMoney += InvestedMoney*Rate
        time += 1;
    end
 end
 
 InvestedMoney = 100
 Target = 2*InvestedMoney
 Rate = 0.1
 time = InvestTime(InvestedMoney, Target, Rate);
 fprintf('\nNumber of years needed\n to double\t the invested money: time = %d', time);
%disp (time);