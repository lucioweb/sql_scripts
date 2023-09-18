CREATE TABLE clientes (   
cliente_cod INT NOT NULL AUTO_INCREMENT,     
cliente_nome varchar(255) NOT NULL,     
cliente_sobrenome varchar(255) NOT NULL,    
cliente_sexo char (1),     
cliente_idt varchar(255) NOT NULL,      
cliente_cpf varchar (14) NOT NULL,     
cliente_data_nascimento DATE,
cliente_ts timestamp,    
PRIMARY KEY (cliente_cod) 
);

INSERT INTO clientes (cliente_nome, cliente_sobrenome, cliente_sexo, cliente_idt, cliente_cpf, cliente_data_nascimento, cliente_ts) VALUES
('PEDRO', 'LUCAS','M', '123456', '123456789-23', '2021-10-22', localtimestamp),
('MARCOS', 'MARCUS','M', '1325361', '09876543-54', '2021-11-22', localtimestamp),
('LUCIO', 'LEMOS','M', '89678123', '90128934-31', '1968-04-22', localtimestamp),
('SILVANA', 'LEMOS','F', '1325361', '09876543-54', '1968-06-17', localtimestamp),
('PAULO', 'PABLO','M', '89678123', '90128934-31', '2021-12-22', localtimestamp),
('ISAIAS', 'MANOEL','M', '19387134', '2222334134-24', '2021-09-22', localtimestamp);