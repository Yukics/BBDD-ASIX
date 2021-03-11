use SQL1NORMALDATES;

select date_format(last_day(curdate() - interval 3 month),'%M %d,%y') as last_day_of_3_months_ago;