
BULK INSERT a1702008.a1702008.[Materiales]
   FROM 'e:\wwwroot\a1702008\materiales.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '0x0a'
      )
	  Select * From Materiales
BULK INSERT a1702008.a1702008.[Proveedores]
   FROM 'e:\wwwroot\a1702008\proveedores.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '0x0a'
      )
   Select * From Proveedores


   BULK INSERT a1702008.a1702008.[Proyectos]
   FROM 'e:\wwwroot\a1702008\proyectos.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '0x0a'
      )
	  SELECT  * FROM Proyectos

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