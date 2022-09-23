function [ price ] = ex4_3( kWh )
    if 0 <= kWh && kWh <= 50 
        price = 1484 * kWh;
    elseif 50 < kWh && kWh <= 100
        price = ex4_3(50) + 1533 * kWh;
    elseif 100 < kWh && kWh <= 200
        price = ex4_3(100) + 1786 * kWh;
    elseif 200 < kWh && kWh < 300
        price = ex4_3(200) + 2242 * kWh;
    elseif 300 < kWh && kWh < 400
        price = ex4_3(300) + 2503 * kWh;
    elseif 400 < kWh
        price = ex4_3(400) + kWh;
    end
end