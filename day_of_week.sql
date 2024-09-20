select 
	TO_CHAR(p.date_publication,
	'Day') as "День недели", -- День недели в виде названий
	SUM(p.nums_like) as "Общее количество лайков" -- Сумма по количеству лайков, зависящего от дня недели
from
	posts p
group by
	"День недели" -- Группировка по дням недели, чтобы можно было применть агрегирующую функцию sum
order by
	"Общее количество лайков" desc

/*	
	Вывод: при сравнение количество лайков в разрезе дней недели наибольшие показатели имеют Понедельник, Вторник и Среда. 	
	Таким образом, посты лучше всего делать преимущественно в понедельник, вторник или среду.
*/

/*	
	Общий вывод: таким образом больше всего на количество лайков влияет промежуток времени между постами. Затем время суток. Ну и на последнем месте день недели.
	Поэтому лучше всего делать посты утром в понедельник с промежутком больше недели и меньше месяца.
*/	