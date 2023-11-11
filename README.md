# MySQL EXCALIDRAW

## Primeiros Passos 

## Operadores Aritméticos

- Conceitos:

Os operadores **aritméticos** são as ferramentas responsáveis pelas operações e cálculos matemáticos simples obtidos com a T-SQL. Desta forma, é possível efetuar as **quatro operações matemáticas básicas** mais a operação para obter o **resto da divisão:**

| Operação         | Sinal |
|------------------|-------|
| Adição           | +     |
| Subtração        | -     |
| Multiplicação    | *     |
| Divisão          | /     |
| Resto da divisão | %     |

- Prática Adição:

A empresa deseja fazer uma simulação de aumento de salário em R$100,00 sobre o salário de cada funcionário. Desta forma, se o comando abaixo for executado, será exibido o nome do funcionário e o valor do salário acrescido de R$100,00. Porém, a **tabela Funcionarios** não sofrerá a alteração física dos seus dados:

```
SELECT nome_completo, salario + 100 FROM Funcionarios;
```

> *Outro exemplo é também a execução do comando:*  
> ```
> SELECT nome_completo, salario, salario + 100 FROM Funcionarios;
> ```

- Prática Multiplicação:

A empresa deseja fazer uma simução de aumento de salário em 20% sobre o salário atual de cada funcionário. Desta for,a, se o comando abaixo for executado, será exibido o nome do funcionário e o valor do salário acrescido de 20%, da seguinte forma:

```
SELECT nome_completo, salario * 1.20 FROM Funcionarios;
```

- Conceitos:

Os operadores aritméticos possibilitam realizar diversos cálculos matemáticos. Além de operações simples que envolvem dois termos para um determinado cálculo, é possível definir algumas expressões aritméticas, como 2 + 3 * 5 que retorna como resultado o valor 17.

```
SELECT 2 + 3 * 5;
```

> *Primeiramente foi feita a multiplicação de 3 por 5, depois a soma de 2. Caso queira mudar a ordem de procedência dos operadores, é necessário usar parêntereses. Assim, (2 + 3) * 5 resultará no valor 25.*

# Operadores de Comparação

- Conceitos:

Os operadores de **comparação**, também conhecidos como operadores **relacionais**, são ferramentas utilizadas nas condições em que há necessidade de comparação entre dois valores e assim extrair uma variedade de consultas de uma determinada tabela. Um operador relacional pode ser um dos seguintes tipos:

| Operador | Descrição        |
|----------|------------------|
| >        | Maior que        |
| <        | Menor que        |
| =        | Igual a          |
| <>       | Diferente de     |
| >=       | Maior ou igual a |
| <=       | Menor ou igual a |
| <=>      | Igual para NULL  |

- Conceitos:

A definição de uma condição usa dois termos, normalmente representados por um campo (coluna) da tabela, um valor de verificação e mais um operador relacional. Alguns exemplos de consultas que podem ser realizadas com operadores aritméticos (ou operadores relacionais):

```
SELECT * FROM Funcionarios WHERE departamento = '05';
SELECT * FROM Funcionarios WHERE funcao = 'Vendedor';
SELECT * FROM Funcionarios WHERE salario <= 1700;
```

# Operadores Lógicos

- Conceitos:

Os operadores **lógicos**, também conhecidos como operadores **booleanos**, são ferramentas utilizadas para trabalhar com o relacionamento de duas ou mais condições (critérios de pesquisa) ao mesmo tempo e realizar testes múltiplos para obter consultas mais elaboradas. Um operador lógico pode ser:

| Operador | Descrição             |
|----------|-----------------------|
| AND      | Operador de conjunção |
| OR       | Operador de disjunção |
| NOT      | Operador de negação   |

- Conceitos:

Os operadores **lógicos AND** e **OR**, utilizados para conectar critérios de pesqusia a cláusulas estabelecidas com o argumento WHERE. O operador lógico **NOT** intervert o resultado de uma critério de pesquisa.

> - O operador do tipo **AND** é utilizado quando dois ou mais relacionamentos lógicos de uma determinada condição necessitam ser verdadeiros.  
> - O operador do tipo **OR** é utilizado quando pelo menos um dos relacionamentos lógicos (quando houver mais de um relacionamento) de uma condição necessita ser verdadeiro.

- Conceitos:

A tabela verdade para esses tipos de operadores:

### Tabela Verdade - Operador AND  

| Condição A | Condição B | Resultado |
|------------|------------|-----------|
| Falsa      | Falsa      | FALSO     |
| Verdadeira | Falsa      | FALSO     |
| Falsa      | Verdadeira | FALSO     |
| Verdadeira | Verdadeira | VERDADEIRO|

### Tabela Verdade - Operador OR  

| Condição A | Condição B | Resultado |
|------------|------------|-----------|
| Falsa      | Falsa      | FALSO     |
| Verdadeira | Falsa      | VERDADEIRO|
| Falsa      | Verdadeira | VERDADEIRO|
| Verdadeira | Verdadeira | VERDADEIRO|

 ```
 SELECT * FROM Funcionarios WHERE (departamento = '03') AND (funcao = 'Programador');
 SELECT * FROM Funcionarios WHERE (departamento = '03') OR (departamento = '05');
 ```
- Conceitos:

O operador **lógico** do tipo **NOT** é utilizados quando é preciso estabelecer que uma determinada condição deva não ser verdadeira ou deva não ser falsa. Ou seja, o operador NOT inverte o estado lógico de uma condição. A tabela verdade e um exemplo de comando para esse operador, podem ser assim descritos:

### Tabela Verdade - Operador NOT  

| Condição      | Resultado     |
|---------------|---------------|
| Falsa         | VERDADEIRO    |
| Verdadeira    | FALSO         |

```
SELECT * FROM Funcionarios WHERE NOT (funcao = 'Vendedor');
```

- Conceitos:

O operador **lógico** do tipo **XOR** (que efetua avaliação lógico de um critério de pesquisa como disjunção exclusiva) é utilizado quando se necessita que uma das condições seja falsa para obter-se um resultado lógico verdadeiro; caso contrário, se o valor lógico das condições for falso ou verdadeiro, o valor do resultado lógico retornado será falso. Eis a tabela verdade para esse operador:

### Tabela Verdade - Disjunção Exclusiva

| Condição A | Condição B | Resultado |
|------------|------------|-----------|
| Falsa      | Falsa      | FALSO     |
| Verdadeira | Falsa      | VERDADEIRO|
| Falsa      | Verdadeira | VERDADEIRO|
| Verdadeira | Verdadeira | FALSO     |

- Conceitos:

O SGDB MySQL não possui este recurso. Mas isso não impede fazer uso deste tipo de critério de pesquisa, uma que a disjunção exclusiva pode ser obtida por meio da expressão lógica:

> - (<Condição A> AND (NOT <Condição B>)) OR ((NOT <Condição A>) AND <Condição B>);

- Conceitos:

Para um teste prático imagine a necessidade de apresentar uma listagem dos registros de todos os funcionários do departamento 3 que não ocupam o cargo de **Programador** e de todos os funcionários que ocupam o cargo de **Programador** que não sejam do departamento 3. Para isso, usamos a seguinte instrução:

```
SELECT * FROM Funcionários WHERE (departamento = '03' AND (NOT funcao = 'Programador')) OR ((NOT departamento = '03') AND funcao = 'Programador');
```

# Operadores Auxiliares

- Conceitos:

A linguagem de consulta estruturada SQL possui alguns outros operadores auxiliares que facilitam a definição de condições a serem utilziadas com os comandos SELECT, UPDATE e DELETE, quando for utilizado o argumento WHERE. Podemos citar alguns desses operadores (os mais comuns):

| Operador | Descrição                                   |
|----------|---------------------------------------------|
| IS NULL  | Verifica se um campo é vazio                |
| BETWEEN  | Verifica um valor numa faixa de valores     |
| IN       | Verifica se um valor existe na tabela       |
| LIKE     | Verifica um valor buscando seus semelhantes |

### IS NULL

Este operador é utilizado quando há necessidade de verificar se um determinado campo da tabela possui registrado o valor NULL, ou seja, se um determinado campo está vazio.

Por exemplo: Pretende-se fazer a inserção de um novo campo na tabela **Funcionarios** para registrar o número de filhos de cada funcionário. Os funcionários que não tiverem filhos terão nesse campo o valor NULL, uma vez que estará vazio. Desta forma serão realizados os seguintes comandos:

```
ALTER TABLE  Funcionarios ADD filhos SMALLINT;
ALTER TABLE morto ADD filhos SMALLINT;
```

Para visualizar o novo campo, pode-se realizar os seguintes comandos:

```
SELECT nome_completo, filhos FROM Funcionarios;
SELECT nome_completo, filhos FROM morto;
```

Em seguida, é necessário definir para alguns registros de funcionários e número de filhos. Desta forma pode-se realizar os seguintes comandos:

```
UPDATE Funcionarios SET filhos = 1 WHERE codigo_funcionario = 2;
UPDATE Funcionarios SET filhos = 3 WHERE codigo_funcionario = 3;
UPDATE Funcionarios SET filhos = 2 WHERE codigo_funcionario = 5;
UPDATE Funcionarios SET filhos = 1 WHERE codigo_funcionario = 9;
UPDATE Funcionarios SET filhos = 4 WHERE codigo_funcionario = 1;
UPDATE Funcionarios SET filhos = 3 WHERE codigo_funcionario = 10;
```

Por fim, faça uma consulta apresentado o código, o nome e o número de filhos de todos os funcionários utilizando o comando:

```
SELECT codigo_funcionario, nome_completo, filhos FROM Funcionarios;
```

... E, em seguida, faça a mesma consulta exibindo somente os funcionários cujo campo **filho** estejam sinalizados como **NULL** (Ou seja, que não tenham filhos) utilizando o comando:

```
SELECT codigo_funcionario, nome_completo, filhos FROM Funcionarios WHERE filhos IS NULL;
```

Se a intenção é fazer a mesma consulta exibindo agora os funcionários cujo campo **filho não** estejam sinalizados como **NULL** (Ou seja, que tenham filhos) utiliza-se o operador lógico **NOT** no comando:

```
SELECT codigo_funcionario, nome_completo, filhos FROM Funcionarios WHERE NOT  filhos IS NULL;
```

### BETWEEN

Este operador permite definir uma faixa de valores para a cláusula **WHERE** em uma condição. Desta forma, é possível extrair consultas de registros situados em uma faixa de valores.

Por exemplo: Considere a necessidade de obter uma consulta de todos os registros de funcionários apresentando nome e número de filhos que recebem salário entre 1700 e 2000. Assim sendo, será realizado o seguinte comando:

```
SELECT nome_completo, filhos FROM Funcionarios WHERE salario BETWEEN 1700 AND 2000;
```

sE A INTENÇÃO É FAZER A MESMA CONSULTA EXIBINDO AGORA OS NOMES E SALÁRIOS DOS REGISTROS DOS FUNCIONÁRIOS QUE GANHAM ABAIXO DE 1700 E ACIMA DE 2000 (Ou seja, que não estejam na faixa de valores entre 1700 e 2000) utiliza-se também o operador lógico **NOT** no comando:

```
SELECT nome_completo, salario FROM Funcionarios WHERE salario NOT BETWEEN 1700 AND 2000;
```

### IN

Este operador permite fazer a busca de um valor específico dentro de uma lista de valores definidos, retornando **TRUE** caso o valor específico esteja na lista. Os valores da lista devem estar entre apóstrofos.

Por exemplo: Apresente uma consulta dos nomes e departamentos dos registros de funcionários cujo **departamento** seja 2 ou 3. Ou seja, dos funcionários locados no departamento 2 ou 3. Assim sendo, será realizado o seguinte comando:

```
SELECT nome_completo, departamento FROM Funcionarios WHERE departamento IN ('02', '03');
```

Da mesma forma que os demais, se a intenção é fazer a mesma consulta exibindo os nomes e os departamentos dos registros do funcionários cujo campo **departamento** seja diferente de 2 e 3 (Ou seja, que não estejam locados nos departamentos 2 e 3) utiliza-se também o operador lógico **NOT** no comando:

```
SELECT nome_completo, departamento FROM Funcionarios WHERE departamento NOT IN ('02', '03');
```

# LIKE

Este operador é usado para verificar e comparar sequências de caracteres dentro de um determinado campo, sendo utilizado com a cláusula **WHERE**.

Este operador aceita o uso de operadores curingas, aumentando assim sua capacidade de operação. Neste sentido, são aceitos como operadores curingas os símbolos de porcentagem (%) que representa zero, um ou vários caracteres e underline (_) que representa sempre um único caractere.

Desta forma, pode-se usar as seguintes referências (STEPHENS & PLEW, 2003):

| Referência                 | Operação                                                                   |
|----------------------------|----------------------------------------------------------------------------|
| WHERE salario LIKE '11%'   | Encontra valores que começam com 11                                        |
| WHERE salario LIKE '%8%'   | Encontra valores que tenham 8 em qualquer posição                          |
| WHERE salario LIKE '_0%'   | Encontra valores que tenham 0 na segunda posição                           |
| WHERE salario LIKE '1_%_%' | Encontra valores que começam com 1 e tenham três caracteres de comprimento |
| WHERE salario LIKE '%6'    | Encontra qualquer valor que termine com 6                                  |
| WHERE salario LIKE '_1%6'  | Encontra qualquer valor que tenha 1 na segunda posição e que termine com 6 |

Por exemplo: Apresente uma consulta dos registros de todos os funcionários cujo nome comece com a letra **A**, utilizando o comando:

```
SELECT nome_completo FROM Funcionarios WHERE nome_completo LIKE 'A%';
```

Ou, apresente uma consulta dos registros de tdos os funcinários que possuam a letra **A** na segunda letra de seus nomes, utilizando o comando:

```
SELECT nome_completo FROM Funcionarios WHERE nome_completo LIKE '_A%';
```

Da mesma forma que os demais, o operador lógico **NOT** procura negar a busca de alguma sequência de caracter.

Por exemplo: Podemos imaginar a situação de precisar consultar todos os registros da tabela **Funcionarios** com exceção dos registros em que o campo **nome_completo** contenha a sequência de caracteres **AN**. Assim, utiliza-se também o operador lógico **NOT** no comando:

```
SELECT nome_completo FROM Funcionarios WHERE nome_completo NOT LIKE '%AN%'; 
```

- Prática:

Utilize o operador **LIKE** para fazer as seguintes atividades:

> Aparesente uma consulta dos registros de todos os funcionários que possuam a sequência de caracteres **AN** em qualquer posição de seu nome;  
> Apresente uma consulta dos registros de todos os funcionários com salário cujo valor termine com o valor/caracter **6**;  
> Apresente uma consulta dos registros de todos of funcionários com salário cujo valor termine com o valor/caracter **2**, mas que tenha como segundo valor/caracter do campo o valor **5**;

- Respostas:

```{r, echo=FALSE}
print("SELECT nome_completo FROM Funcionarios WHERE nome_completo LIKE '%AN%';")
print("SELECT nome_completo, salario FROM Funcionarios WHERE salario LIKE '%6";")
print("SELECT nome_completo, salario FROM Funcionarios WHERE salario LIKE '_5%2';")
```