<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	/*
	CREATE TABLE `cash` (
   `cash_no` INT(11) NOT NULL AUTO_INCREMENT,
   `category` VARCHAR(20) NULL DEFAULT NULL,
   `cash_date` DATE NOT NULL,
   `cash_price` BIGINT(20) NOT NULL DEFAULT '0',
   PRIMARY KEY (`cash_no`) USING BTREE
	)
	
	SELECT category
		, COUNT(*)
		, SUM(cash_price)
		, avg(cash_price)
		, MAX(cash_price)
		, MIN(cash_price)
	FROM cash
	GROUP BY category;
	
	FROM cash 
	GROUP BY category;
	
	
	states.jsp
	전체 연도별 수입
	
	
	SELECT YEAR(cash_date) YEAR, SUM(cash_price) SUM
	FROM cash
	wherer category = '지출'
	GROUP BY YEAR(cash_date)
	ORDER BY YEAR(cash_date);
	
	
	전체 월별 수입
	전체 월별 지출
	statsByYear.jsp -> 연도 (MIN(year)~ MAX(year)) 페이징
	
	
	SELECT 
	FROM cash
	WHERE YEAR(cash_date) 2022
	GROUP BY MONTH(cash_date) ASC
	ORDER BY MONTH(cash_date) ASC;
	
	
	월별 수입(매개값 연도)
	
	
	SELECT MONTH(cash_date), SUM(cash_price)
	FROM cash
	WHERE YEAR(cash_date) = 2000 AND category = '지출' 
	GROUP BY MONTH(cash_date)
	ORDER BY MONTH(cash_date) ASC;
	
	 서브 쿼리 : 스칼라 쿼리 
	(SELECT MAX(YEAR(cash_date))FROM cash)minYear 
	, (SELECT MAX(YEAR(cash_date))FROM cash) maxYear
	FROM DUAL;
		
	*/

	
	
	/*
	INSERT INTO test(NAME, age) vlaues('', 10);
	INSERT INTO test(NAME, age) vlaues('', 10);
	INSERT INTO test(NAME, age) vlaues('', 10);
	INSERT INTO test(NAME, age) vlaues('', 10);
	INSERT INTO test(NAME, age) vlaues('', 10);
	INSERT INTO test(NAME, age) vlaues(null, NULL);
	
	SELECT * FROM test;
	SELECT COUNT(*) FROM test;  #6
	SELECT COUNT(mant) FROM test;  #5
	
	SELECT SUM(agd) FROM test; #vo /d?$
	SELECT AVG(age, 0 FROM test .ghepppsik{
	
	
	
	
	
	# GROUP BY 절에 함수 사용
	SELECT YEAR(rental_date), COUNT(*)
	FROM rental
	GROUP BY YEAR(rental_date); # group by 절에 함수 사용 가능
	# = group by extract(year from rental_date); year()함수와 같은 기능함수 year 대신 month, day 가능
	
	# group by 절에 두 개 이상의 컬럼 사용
	SELECT staff_id, COUNT(*) FROM rental 
	GROUP BY customer_id;
	
	SELECT staff_id, customer_id, COUNT(*) FROM rental 
	GROUP BY staff_id, customer_id;
	
	SELECT actor_id, COUNT(*)
	FROM film_actor
	GROUP BY actor_id;
	
	SELECT fa.actor_id, f.title, f.rating
	FROM film_actor fa
		INNER JOIN film f
		ON fa.film_id = f.film_id
	ORDER BY fa.actor_id;
	
	# 영화에 몇 번 출연?
	SELECT actor_id, COUNT(*)
	FROM film_actor
	GROUP BY actor_id;
	
	# 배우가 등급별 몇 번씩 출연
	SELECT actor_id, f.rating, COUNT(*)
	FROM film_actor fa INNER JOIN film f 
	ON fa.film_id = f.film_id
	GROUP BY fa.actor_id, f.rating;
	
	# 배우 이름은? 어떤 배우가 어떤 영화에 몇 번을 출연했는가
	SELECT
		a.actor_id
		, CONCAT(a.first_name, ' ', a.last_name)
		, t.rating
		, t.cnt 
	FROM actor a INNER JOIN (SELECT actor_id, f.rating rating, COUNT(*) cnt
									FROM film_actor fa INNER JOIN film f 
									ON fa.film_id = f.film_id
									GROUP BY fa.actor_id, f.rating) t 
	ORDER BY a.actor_id;
	
	
	# with rollup 옵션 : 그룹별 총합
	SELECT staff_id, COUNT(*) FROM rental
	GROUP BY staff_id;
	
	SELECT staff_id, COUNT(*), (SELECT COUNT(*) FROM rental) 총대여
	FROM rental 
	GROUP BY staff_id;
	
	SELECT IFNULL(staff_id, '합계'), COUNT(*) FROM rental
	GROUP BY staff_id WITH ROLLUP;
	
	SELECT staff_id, COUNT(*) (SELECT COUNT(*) FROM rental) 합계 
	FROM rental
	GROUP BY staff_id;
	
	SELECT staff_id, COUNT(*) FROM rental
	GROUP BY staff_id WITH ROLLUP;
	
	SELECT staff_id, customer_id, COUNT(*) FROM rental
	GROUP BY staff_id, customer_id WITH ROLLUP;
	*/











%>