BULK INSERT a1702008.a1702008.[Proyectos]
   FROM 'e:\wwwroot\a1702008\proyectos.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '0x0a'
      )



	  SELECT  * FROM Proyectos