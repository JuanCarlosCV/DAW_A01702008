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
