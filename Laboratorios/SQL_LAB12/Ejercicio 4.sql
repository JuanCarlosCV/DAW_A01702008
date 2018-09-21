 INSERT INTO entregan values (1000, 'AAAA800101', 5000, GETDATE(), 0); 

 select * from Entregan

 Delete from Entregan where Clave = 1000 and Cantidad = 0
 
 
  ALTER TABLE entregan add constraint cantidad check (cantidad > 0) ;  