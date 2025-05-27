
# Sistema de Apuração Eleitoral

Este projeto representa um sistema simplificado de apuração eleitoral municipal utilizando modelagem de banco de dados.

## Estrutura do Projeto

O projeto está dividido em três partes principais:

### 1. Modelo Conceitual (DER)
- Representado na imagem `modelo_conceitual.png`.
- Mostra as entidades: Localidade, Zona Eleitoral, Seção, Eleitor, Candidato, Partido e Voto.
- Também apresenta os relacionamentos entre essas entidades.

### 2. Modelo Lógico
- Incluído no arquivo `modelos_apuracao_eleitoral.sql`.
- Define as tabelas, chaves primárias, chaves estrangeiras e relacionamentos de forma abstrata.
- Não possui configurações específicas do SGBD.

### 3. Modelo Físico (MySQL)
- Também incluído no `modelos_apuracao_eleitoral.sql`.
- Apresenta os mesmos dados do modelo lógico, mas adaptado ao MySQL com:
  - Tipos de dados definidos (`VARCHAR`, `INT`, etc.)
  - Restrições como `NOT NULL`, `AUTO_INCREMENT`, `UNIQUE`, `DEFAULT`
  - Relacionamentos implementados com `FOREIGN KEY`

## Como usar

1. Abra o arquivo `modelos_apuracao_eleitoral.sql` em um SGBD MySQL.
2. Execute os comandos para criar o banco de dados com as tabelas e seus relacionamentos.
3. Consulte a imagem `modelo_conceitual.png` para visualizar o DER.

## Autor

Trabalho acadêmico desenvolvido para a disciplina de Banco de Dados.
