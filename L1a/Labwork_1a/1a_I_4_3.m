% (c)2021 Hien PHAN.
% Electricity bill
clc;
clear;


function price = Electricity(P)
    price_50 = 50*1484;
    price_100 = price_50 + (100-50)*1533;
    price_200 = price_100 + (200-100)*1786;
    price_300 = price_200 + (300-200)*2242;
    price_400 = price_300 + (400-300)*2503;
    if P<=50
        price = P*1484;
    elseif P<=100
        price = price_50 + (P-50)*1533;
    elseif P<=200
        price = price_100 + (P-100)*1786;
    elseif P<=300
        price = price_200 + (P-200)*2242;
    elseif P<=400
        price = price_300 + (P-300)*2503;
    else
        price = price_400 + (P-400)*2587;
    end
end

P = 200;
price_200 = Electricity(P)

P = 201;
price_201 = Electricity(P)

price_201 - price_200



