CREATE TRIGGER after_insert AFTER INSERT ON Clientes FOR EACH ROW INSERT INTO Auditoria (mensagem) VALUES ('inserido em ');
 
CREATE TRIGGER before_insert BEFORE DELETE ON Clientes FOR EACH ROW INSERT INTO Auditoria (mensagem) VALUES ('Tentativa de exclusão ');

CREATE TRIGGER after_update AFTER UPDATE ON Clientes FOR EACH ROW INSERT INTO Auditoria (mensagem) VALUES (OLD.nome, NEW.nome);