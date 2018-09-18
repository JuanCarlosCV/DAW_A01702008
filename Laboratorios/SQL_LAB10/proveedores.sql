BULK INSERT a1702008.a1702008.[Proveedores]
   FROM 'e:\wwwroot\a1702008\proveedores.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '0x0a'
      )


	  SELECT  * FROM Proveedores