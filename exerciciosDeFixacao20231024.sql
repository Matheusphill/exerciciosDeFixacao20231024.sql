CREATE TRIGGER after_insert AFTER INSERT ON Clientes FOR EACH ROW INSERT INTO Auditoria (mensagem) VALUES ('inserido em ');
 