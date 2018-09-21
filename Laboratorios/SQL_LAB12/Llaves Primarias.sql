

INSERT INTO Materiales VALUES (1000,'XXX',1000)


  Delete from Materiales where Clave = 1000 and Costo = 1000 

    ALTER TABLE Materiales add constraint llaveMateriales PRIMARY KEY (Clave)
	  sp_helpconstraint materiales 

 ALTER TABLE Proveedores add constraint llaveProveedores PRIMARY KEY (RFC)
 sp_helpconstraint proveedores 

  ALTER TABLE Proyectos add constraint llaveProyectos PRIMARY KEY (Numero)

  sp_helpconstraint proyectos

  ALTER TABLE Entregan ADD CONSTRAINT llaveEntregan PRIMARY KEY  CLUSTERED( Clave , RFC, Numero,Fecha )  
  sp_helpconstraint entregan

   ALTER TABLE tableName drop constraint ConstraintName
