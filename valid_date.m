%Comments about how this functions works and what is it, would be added soon

function x = valid_date(year,month,day)
if rem(year,4) == 0
    if rem(year,100) == 0
        if rem(year,400) == 0
            leap_year = true;
        else
            leap_year = false;
        end
    else
        leap_year = true;
    end
else
    leap_year = false;
end

if month == 2
    month_check = true;
    if leap_year == true
        if day <= 29
            day_check = true;
        else
            day_check = false;
        end
    else
        if day <= 28
            day_check = true;
        else
            day_check = false;
        end
    end
elseif month <= 12
    month_check = true;
    if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
        if day <= 31
            day_check = true;
        else
            day_check = false;
        end
    elseif month == 4 || month == 6 || month == 9 || month == 11
        if day > 30
            day_check = false;
        else
            day_check = true;
        end
    end
else
    month_check = false;
    day_check = false;
end

if month_check == true && day_check == true
    x = true;
else
    x = false;
end
    
        