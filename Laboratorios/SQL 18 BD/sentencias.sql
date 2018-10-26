
--1
SELECT SUM(Costo*(1+(PorcentajeImpuesto/100))*Cantidad) AS 'Ventas 97' from materiales,entregan
where materiales.clave = entregan.clave AND fecha BETWEEN '01-JAN-1997' AND '31-DEC-1997'
--2
SELECT RazonSocial, COUNT(Cantidad) AS 'Cantidad de Entregas', SUM(Costo*(1+(PorcentajeImpuesto/100))*Cantidad) AS 'VentasDelProveedor'
FROM Proveedores P, Entregan E, Materiales M
WHERE M.clave = E.clave AND E.RFC = P.RFC
GROUP BY RazonSocial

--3

SELECT M.Clave, Descripcion, CAST(SUM(Cantidad) AS INT) AS 'Vendidos',
	CAST(MIN(Cantidad) AS INT) AS 'Min entr',
	CAST(MAX(Cantidad) AS INT) AS 'Max entr',
	SUM(Costo*(1+(PorcentajeImpuesto/100))*Cantidad) AS 'Ventas Del Producto'
FROM Materiales M, Entregan E
WHERE M.clave = E.clave
GROUP BY M.Clave, M.Descripcion
HAVING AVG(Cantidad) > 400

--4
SELECT RazonSocial, AVG(Cantidad) AS 'Prom entr', M.Clave, Descripcion
FROM Proveedores P, Materiales M, Entregan E
WHERE M.clave = E.clave AND E.RFC = P.RFC
GROUP BY P.RazonSocial, M.Clave, M.Descripcion
HAVING AVG(Cantidad) < 500
ORDER BY RazonSocial ASC
--5
(SELECT RazonSocial, AVG(Cantidad) AS 'Prom entr', M.Clave, Descripcion
FROM Proveedores P, Materiales M, Entregan E
WHERE M.clave = E.clave AND E.RFC = P.RFC
GROUP BY P.RazonSocial, M.Clave, M.Descripcion
HAVING AVG(Cantidad) < 370)
UNION
(SELECT RazonSocial, AVG(Cantidad) AS 'Prom entr', M.Clave, Descripcion
FROM Proveedores P, Materiales M, Entregan E
WHERE M.clave = E.clave AND E.RFC = P.RFC
GROUP BY P.RazonSocial, M.Clave, M.Descripcion
HAVING AVG(Cantidad) < 450)
ORDER BY RazonSocial ASC

---------------------------------
INSERT INTO Materiales VALUES(1510, 'Tornillo T10', 12.0, 0)
INSERT INTO Materiales VALUES(1520, 'Tornillo T12', 13.0, 0)
INSERT INTO Materiales VALUES(1530, 'Tornillo T16', 14.0, 0)
INSERT INTO Materiales VALUES(1540, 'Tornillo T20', 15.0, 0)
INSERT INTO Materiales VALUES(1550, 'Tornillo T22', 16.0, 0)

--1

SELECT Clave, Descripcion
FROM Materiales E
WHERE Clave NOT IN(
	SELECT Clave
	FROM Entregan
)
--2
SELECT RazonSocial, Denominacion
FROM Proveedores Pr, Entregan E, Proyectos P
WHERE Pr.RFC = E.RFC AND E.Numero = P.Numero
	AND (Denominacion = 'Vamos Mexico' OR Denominacion = 'Queretaro limpio')
GROUP BY RazonSocial, Denominacion

--3
SELECT M.Clave
FROM Materiales M, Proveedores Pr, Entregan E, Proyectos P
WHERE M.Clave = E.Clave AND Pr.RFC = E.RFC AND E.Numero = P.Numero
	AND (Denominacion != 'CIT Yucatan')
GROUP BY M.Clave

--4
SELECT RazonSocial, AVG(Cantidad) AS 'Prom entr'
FROM Proveedores Pr, Entregan E
WHERE Pr.RFC = E.RFC
GROUP BY RazonSocial
HAVING AVG(Cantidad) > (
	SELECT AVG(Cantidad)
	FROM Proveedores Pr, Entregan E
	WHERE Pr.RFC = 'AAAA800101   ' AND Pr.RFC = E.RFC)
--5


SELECT SUM(Cantidad)/COUNT(Cantidad)
FROM Proveedores Pr, Entregan E
WHERE Pr.RFC = 'CCCC800101' AND Pr.RFC = E.RFC

SELECT Pr.RFC, RazonSocial, Denominacion
FROM Proveedores Pr, Entregan E, Proyectos P
WHERE Pr.RFC = E.RFC AND E.Numero = P.Numero AND (Denominacion = 'Infonavit Durango')
	AND fecha BETWEEN '01-JAN-2000' AND '31-DEC-2000'
GROUP BY Pr.RFC, RazonSocial, Denominacion
HAVING COUNT(Cantidad) >(
	SELECT COUNT(Cantidad)
	FROM Proveedores Pr, Entregan E, Proyectos P
	WHERE Pr.RFC = E.RFC AND E.Numero = P.Numero AND (Denominacion = 'Infonavit Durango')
		AND fecha BETWEEN '01-JAN-2001' AND '31-DEC-2001'
)