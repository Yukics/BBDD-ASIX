use SQL1NORMALDATES;
select date_sub(now(), interval 205 minute ) as Minor3hour25min;

select date_sub(date_sub(now(), interval 3 hour), interval 25 minute ) as Minor3hour25min;