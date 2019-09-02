/*
Exercícios do curso de MySQL / Agosto de 2019.

1)Uma lista com o nome de todas as gafanhotas.
2)Uma lista com os dados de todos que nasceram entre 01/01/2000 e 31/12/2015.
3)Uma lista com o nome de todos os homens que são programadores.
4)Uma lista com os dados de todas as mulheres que nasceram no Brasil e o nme começa com "J".
5)Uma lista com o nome e a nacionalidade de todos os homens que tem "Silva" no nome, não nasceram no Brasil e pesam menos de 100kg.
6)Qual é a maior altura de homens que moram no Brasil?
7)Qual é a média de peso dos gafanhotos cadastrados?
8)Qual é o menor peso entre mulheres que nasceram fora do Brasil e entre 01/01/1990 e 31/12/2000?
9)Quantas mulheres têm mais de 1,90m de altura?
*/
use cadastro;

# 1)Uma lista com o nome de todas as gafanhotas.
SELECT 
    nome
FROM
    gafanhotos
WHERE
    sexo = 'F';

#===================================================================================================

# 2)Uma lista com os dados de todos que nasceram entre 01/01/2000 e 31/12/2015.
SELECT 
    *
FROM
    gafanhotos
WHERE
    nascimento BETWEEN '2000-01-01' AND '2015-12-31';

#===================================================================================================

# 3)Uma lista com o nome de todos os homens que são programadores.
SELECT 
    nome, profissao
FROM
    gafanhotos
WHERE
    sexo = 'M' AND profissao = 'programador';

#===================================================================================================

# 4)Uma lista com os dados de todas as mulheres que nasceram no Brasil e o nome começa com "J".
SELECT 
    *
FROM
    gafanhotos
WHERE
    sexo = 'F' AND nacionalidade = 'Brasil'
        AND nome LIKE 'J%';

#===================================================================================================

# 5)Uma lista com o nome e a nacionalidade de todos os homens que tem "Silva" no nome,
# não nasceram no Brasil e pesam menos de 100kg.
SELECT 
    nome, nacionalidade, peso
FROM
    gafanhotos
WHERE
    sexo = 'M' AND nome LIKE '%Silva%'
        AND nacionalidade != 'Brasil'
        AND peso < '100';

#===================================================================================================

# 6)Qual é a maior altura de homens que moram no Brasil?
SELECT 
    MAX(altura)
FROM
    gafanhotos
WHERE
    nacionalidade = 'Brasil' AND sexo = 'M';
    
#===================================================================================================

# 7)Qual é a média de peso dos gafanhotos cadastrados?
SELECT 
    AVG(peso)
FROM
    gafanhotos;

#===================================================================================================

# 8)Qual é o menor peso entre mulheres que nasceram fora do Brasil e entre 01/01/1990 e 31/12/2000?
SELECT 
    MIN(peso)
FROM
    gafanhotos
WHERE
    sexo = 'F' AND nacionalidade != 'Brasil'
        AND nascimento BETWEEN '1990-01-01' AND '2000-12-31';
        
#===================================================================================================

# 9)Quantas mulheres têm mais de 1,90m de altura?

SELECT 
    COUNT(*)
FROM
    gafanhotos
WHERE
    sexo = 'F' AND altura > 1.90;
    
#===================================================================================================
    
    
    

    

        
        
        





