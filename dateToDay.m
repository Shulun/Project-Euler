function w = dateToDay(m,d,y)
% Convert a date to a day in 
% a week. 

% Date that divides Julian and
% Gregorian Calendars
dateDiv = datenum(1582,10,5);
% Entered date
dateEnt = datenum(y,m,d);

% Gregorian Calendar
if dateEnt > dateDiv
    if m-2 <= 0
        y = y-1;
    end
    mon = mod((m-2),12);
    if m-2 == 0
        mon = 12;
    end
    val = d+floor(2.6*mon-0.2)+5*mod(y,4)...
          +4*mod(y,100)+6*mod(y,400);
    w = mod(val,7);
end

% Julian Calendar
if dateEnt < dateDiv
    if m-2 <= 0
        y = y-1;
    end
    mon = mod((m-2),12);
    if m-2 == 0
        mon = 12;
    end
    val = d+floor(2.6*mon-2.2)+5*mod(y,4)...
          +3*mod(y,7);
    w = mod(val,7);
end

