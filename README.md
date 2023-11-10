# MySQL

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

A empresa deseja fazer uma simulação de aumento de salário em R$100,00 sobre o salário de cada funcionário. Desta forma, se o comando abaixo for executado, será exibido o nome do funcionário e o valor do salário acrescido de R$100,00. Porém, a ** tabela cadfun** não sofrerá a alteração física dos seus dados:

```
SELECT nome, salario + 100 FROM cadfun;
```

> *Outro exemplo é também a execução do comando:*
> ```SELECT nome, salario, salario + FROM cadfun;```

- Prática Multiplicação:

A empresa deseja fazer uma simução de aumento de salário em 20% sobre o salário atual de cada funcionário. Desta for,a, se o comando abaixo for executado, será exibido o nome do funcionário e o valor do salário acrescido de 20%, da seguinte forma:

```
SELECT nome, salario * 1.20 FROM cadfun;
```

- Conceitos:

Os operadores aritméticos possibilitam realizar diversos cálculos matemáticos. Além de operações simples que envolvem dois termos para um determinado cálculo, é possível definir algumas expressões aritméticas, como 2 + 3 * 5 que retorna como resultado o valor 17.

```
SELECT 2 + 3 * 5;
```

> *Primeiramente foi feita a multiplicação de 3 por 5, depois a soma de 2. Caso queira mudar a ordem de procedência dos operadores, é necessário usar parêntereses. Assim, (2 + 3) * 5 resultará no valor 25.*