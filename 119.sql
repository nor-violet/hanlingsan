#大区、经销商一个维度，时间一个维度

SELECT
	b.BEBUR,b.ZKNAM,a.ERDAT, SUM(a.LFIMGT) AS 'totallfimgt',
	SUM(a.NETWRT) AS 'totalnetwrt',
	SUM(a.ZINFYST) AS 'totalzi'
FROM
	tbsale a
INNER JOIN tbcustomerinf b ON a.KUNNR = b.KUNNR
WHERE a.erdat >='2012-01-01' and a.erdat <='2013-01-01'
GROUP BY
	b.VKBUR,b.KUNNR
ORDER BY totallfimgt desc
#LIMIT 10
