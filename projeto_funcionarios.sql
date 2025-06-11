--questao 01
create table funcionarios (
  id int PRIMARY key,
  nome VARCHAR(100),
  departamento VARCHAR(100),
  salario float
);
insert into funcionarios (
  id,
  nome,
  departamento,
  salario)
  VALUES 
  ('1', 'Eitor Vieira', 'Financeiro', '4959.22'),
  ('2', 'Daniel Campos', 'Vendas', '3884.44'),
  ('3', 'Luiza Dias ', 'TI', '8205.78'),
  ('4', 'Davi Lucas Moraes ', 'Financeiro', '8437.02'),
  ('5', 'Pietro Cavalcanti ', 'TI', '4946.88'),
  ('6', 'Evelyn da Mata ', 'Vendas', '5278.88'),
  ('7', 'Isabella Rocha ', 'Marketing', '4006.03'),
  ('8', 'Sra. Manuela Azevedo ', 'Vendas', '6101.88'),
  ('9', 'Brenda Cardoso ', 'TI', '8853.34'),
  ('10', 'Danilo Souza ', 'TI', '8242.14');
  
  --questao 02
  SELECT * FROM funcionarios;
  
  --questao 03
  SELECT nome FROM funcionarios WHERE departamento = 'Vendas';
  
  --questao 04
  SELECT * from funcionarios where salario > 5000.00;
  
  --questao 05
  SELECT DISTINCT departamento FROM funcionarios;
  
  --questao 06
  UPDATE funcionarios set salario = 7500.00
  where departamento = 'TI';
  
  --questao 07
  delete from funcionarios where salario < 4000;
  
  --questao 08
  SELECT nome, salario from funcionarios
  where departamento = 'Vendas' and salario >= 6000;
  
  --questao 09
  CREATE table projetos (
    id_projeto INT PRIMARY key,
    nome_projeto VARCHAR(100),
    id_gerente INT,
  FOREIGN KEY (id_gerente) REFERENCES funcionarios(id)
    );
    
    INSERT into projetos (
      id_projeto,
      nome_projeto,
      id_gerente
    )
    values
       ('123', 'Projeto Refresh', '1'),
      ('345', 'Projeto Verão', '2'),
      ('567', 'Projeto Super', '3');
      
      SELECT * from projetos;
      
      SELECT * FROM projetos WHERE id_gerente = 2;
      
   --questao 10
   drop TABLE funcionarios;