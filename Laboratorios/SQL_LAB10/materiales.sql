BULK INSERT a1702008.a1702008.[Materiales]
   FROM 'e:\wwwroot\a1702008\materiales.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '0x0a'
      )


	  SELECT  * FROM Materiales