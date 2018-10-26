select * from materiales 

select * from materiales 
where clave=1000

select clave,rfc,fecha from entregan 

select * from materiales,entregan 
where materiales.clave = entregan.clave 

select * from entregan,proyectos 
where entregan.numero < = proyectos.numero 

(select * from entregan where clave=1450) 
union 
(select * from entregan where clave=1300) 

select * from entregan where clave=1450 or  clave=1300

(select clave from entregan where numero=5001) 
intersect 
(select clave from entregan where numero=5018) 




   SELECT * FROM Entregan 
   WHERE Clave NOT IN (SELECT Clave FROM Entregan where clave= '1000') 

   select * from entregan,materiales 

   SELECT descripcion FROM materiales m, entregan e
where m.clave = e.clave AND e.fecha >= '01-JAN-2000' AND e.fecha < '01-JAN-2001'

set dateformat dmy
SELECT DISTINCT descripcion FROM materiales m, entregan e
where m.clave = e.clave AND e.fecha >= '01-JAN-2000' AND e.fecha < '01-JAN-2001'

set dateformat dmy
SELECT P.Numero, denominacion, fecha FROM Proyectos P, Entregan E
ORDER BY P.numero ASC, fecha DESC

SELECT * FROM Materiales where Descripcion LIKE 'Si%'

SELECT (Apellido + ', ' + Nombre) as Nombre FROM Personas; 
DECLARE @foo varchar(40); 
DECLARE @bar varchar(40); 
SET @foo = '¿Que resultado'; 
SET @bar = ' ¿¿¿??? ' 
SET @foo += ' obtienes?'; 
PRINT @foo + @bar; 

SELECT RFC FROM Entregan WHERE RFC LIKE '[A-D]%'; 
SELECT RFC FROM Entregan WHERE RFC LIKE '[^A]%'; 
SELECT Numero FROM Entregan WHERE Numero LIKE '___6'; 


SELECT Clave,RFC,Numero,Fecha,Cantidad 
FROM Entregan 
WHERE Numero Between 5000 and 5010; 


SELECT RFC,Cantidad, Fecha,Numero 
FROM [Entregan] 
WHERE [Numero] Between 5000 and 5010 AND 
Exists ( SELECT [RFC] 
FROM [Proveedores] 
WHERE RazonSocial LIKE 'La%' and [Entregan].[RFC] = [Proveedores].[RFC] ) 


SELECT TOP 2 * FROM Proyectos 

SELECT TOP Numero FROM Proyectos 
   ALTER TABLE materiales ADD PorcentajeImpuesto NUMERIC(6,2); 

   UPDATE materiales SET PorcentajeImpuesto = 2*clave/1000; 


   select SUM(Costo*(1+(PorcentajeImpuesto/100))*Cantidad) from materiales,entregan
where materiales.clave = entregan.clave

--Create view nombrevista (nombrecolumna1 , nombrecolumna2 ,..., nombrecolumna3 ) 
--as select... 
--select * from nombrevista 
Create view vistafechas as
SELECT descripcion FROM materiales m, entregan e
where m.clave = e.clave AND e.fecha >= '01-JAN-2000' AND e.fecha < '01-JAN-2001'

Select * From vistafechas


Create view  vistaclave as 
 SELECT * FROM Entregan 
   WHERE Clave NOT IN (SELECT Clave FROM Entregan where clave= '1000') 

   select * from vistaclave

   Create view vistaNofecha as
SELECT DISTINCT descripcion FROM materiales m, entregan e
where m.clave = e.clave AND e.fecha >= '01-JAN-2000' AND e.fecha < '01-JAN-2001'
   select * from vistaNofecha

   Create view busquedavista as
   
SELECT * FROM Materiales where Descripcion LIKE 'Si%'
   Select * from busquedavista

   create view vistaRFC as
   SELECT RFC FROM Entregan WHERE RFC LIKE '[A-D]%';
   
   select * from vistaRFC 
--  Materiales(Clave, Descripción, Costo) 
--Proveedores(RFC, RazonSocial) 
--Proyectos(Numero,Denominacion) 
--Entregan(Clave, RFC, Numero, Fecha, Cantidad) 


  -- Los materiales (clave y descripción) entregados al proyecto "México sin ti no estamos completos". 
  Select M.Clave, M.Descripcion 
  From Entregan E,Materiales M,Proyectos P
  Where  E.Clave = M.Clave AND E.Numero = P.Numero AND P.Denominacion = 'Mexico sin ti no estamos completos';
  Select * from Proyectos

     -- Los materiales (clave y descripción) que han sido proporcionados por el proveedor "Acme tools". 
	 Select M.Clave, M.Descripcion 
  From Entregan E,Materiales M,Proveedores P
  Where  E.Clave = M.Clave AND E.RFC = P.RFC AND P.RazonSocial = 'Acme tools';
  Select * from Proveedores


    --  El RFC de los proveedores que durante el 2000 entregaron en promedio cuando menos 300 materiales. 
	SELECT E.RFC
	From Entregan E,Proveedores P
	where E.RFC = P.RFC AND CANTIDAD > 300 AND (FECHA>='01-JAN-2000' AND FECHA <='31-DEC-2000');
	SELECT * 
	From Entregan E,Proveedores P
	where E.RFC = P.RFC
	  
     -- El Total entregado por cada material en el año 2000. 
	 SELECT DESCRIPCION, SUM(CANTIDAD) AS 'TOTAL'
	 FROM Materiales M,Entregan E
	 WHERE M.Clave = E.Clave AND(E.FECHA>='01-JAN-2000' AND E.FECHA <='31-DEC-2000')
	GROUP BY Descripcion

	SELECT * FROM  Materiales M,Entregan E
	 WHERE M.Clave = E.Clave AND (E.FECHA>='01-JAN-2000' AND E.FECHA <='31-DEC-2000')


      --La Clave del material más vendido durante el 2001. (se recomienda usar una vista intermedia para su solución) 
	  Create view vistadosmil as
SELECT m.clave,COUNT(m.CLAVE) as 'conteo' FROM materiales m, entregan e
where m.clave = e.clave AND e.fecha >= '01-JAN-2001' AND e.fecha < '31-DEC-2001' GROUP BY m.CLAVE;

select * from vistadosmil;
Select max(conteo) as 'Valor_maximo' From vistadosmil ;
	  
    
	--  Productos que contienen el patrón 'ub' en su nombre. 

	SELECT DESCRIPCION 
	FROM MATERIALES
	Where descripcion like 'ub%'
	
    --  Denominación y suma del total a pagar para todos los proyectos. 

	select P.denominacion, sum()
	from Materiales,Entregan,Proyectos 

    --  Denominación, RFC y RazonSocial de los proveedores que se suministran materiales al proyecto Televisa en acción que no se encuentran apoyando al proyecto Educando en Coahuila (Solo usando vistas). 

    --  Denominación, RFC y RazonSocial de los proveedores que se suministran materiales al proyecto Televisa en acción que no se encuentran apoyando al proyecto Educando en Coahuila (Sin usar vistas, utiliza not in, in o exists). 

     -- Costo de los materiales y los Materiales que son entregados al proyecto Televisa en acción cuyos proveedores también suministran materiales al proyecto Educando en Coahuila. 