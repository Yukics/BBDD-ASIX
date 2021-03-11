use SQL1NORMALDATES;

select day(last_day(curdate() - interval 3 month)) as last_day_of_3_months_ago;