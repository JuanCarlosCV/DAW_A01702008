
     SET DATEFORMAT dmy
BULK INSERT a1702008.a1702008.[Entregan]
	
   FROM 'e:\wwwroot\a1702008\entregan.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '0x0a'
      )

	  SELECT  * FROM Entregan