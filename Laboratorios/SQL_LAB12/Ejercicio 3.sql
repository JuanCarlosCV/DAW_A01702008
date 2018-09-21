

Select * FROM Entregan;

INSERT INTO Entregan VALUES (0,'XXX',0,'1-jan-02',0);

  Delete from Entregan where Clave = 0 

    ALTER TABLE entregan add constraint cfentreganclave 
  foreign key (clave) references materiales(clave); 

  ALTER TABLE entregan add constraint cfentreganrfc
  foreign key (RFC) references proveedores(RFC); 

  ALTER TABLE entregan add constraint cfentregannumero 
  foreign key (numero) references Proyectos(numero);
  
	sp_helpconstraint entregan
    sp_helpconstraint materiales
	sp_helpconstraint proveedores
	sp_helpconstraint proyectos  