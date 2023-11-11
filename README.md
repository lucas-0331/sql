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

