︠2c9e0f9d-8ec8-4b9c-88b0-1ec71ffff0b6i︠
%md
# Matemática Discreta

## Exame 18-xan-2016

︡acf140d9-1717-4564-b4aa-1eae2047139f︡︡{"done":true,"md":"# Matemática Discreta\n\n## Exame 18-xan-2016"}
︠8935ba49-017d-4f39-b5ff-c1a45a4dadef︠

︠52621169-44a9-4393-8779-9c3f9c991af0i︠
%md
**Pregunta 1**

Unha lista dise que é palindrómica se ten lonxitude maior ca 0 e os seus elementos lidos de esquerda a dereita e de dereita a esquerda coinciden.

Exemplos: $[1,0,0,1], [2], [a,b,5,b,a], [10,5,10], \dots$


1. Constrúe con Sage todas as listas palindrómicas de lonxitude menor ou igual ca 4 cuxos elementos son números díxitos (nos exemplos anteriores, nin os elementos da terceira lista nin os da cuarta son díxitos).
2. Cantas hai?


︡3b033ce4-b520-4e3d-ab02-c26d04990ccc︡{"md":"**Pregunta 1**\n\nUnha lista dise que é palindrómica se ten lonxitude maior ca 0 e os seus elementos lidos de esquerda a dereita e de dereita a esquerda coinciden.\n\nExemplos: $[1,0,0,1], [2], [a,b,5,b,a], [10,5,10], \\dots$\n\n\n1. Constrúe con Sage todas as listas palindrómicas de lonxitude menor ou igual ca 4 cuxos elementos son números díxitos (nos exemplos anteriores, nin os elementos da terceira lista nin os da cuarta son díxitos).\n2. Cantas hai?\n\n\n"}︡
︠a8f38019-955e-47d6-9e4c-a78560dd25f8︠

︡6b14ae27-6203-4143-afd3-69f26e8a5631︡
︠a53a2617-e77f-48bc-9239-4fef6e73e086︠

︡5fe5516d-8934-4e7d-bfb1-6f38a7f14a8f︡
︠53342bf0-a4e7-486f-9d89-8b39ce32e954i︠
%md

**Pregunta 2** (Escolle unha das dúas opcións seguintes)



*opción A*

1. Define a función **pal_6** que colle unha lista *L* de 3 elementos e devolve a lista palindrómica **pal_6**(*L*) de lonxitude 6 que resulta de engadirlle a *L* pola dereita os seus elementos en orden contraria: **pal_6**([1,2,3]) = [1,2,3,3,2,1]

2. Define a función **pal_2n** que colle unha lista *L* de $n$ elementos e devolve a lista palindrómica **pal_2n**(*L*) de lonxitude $2\times n$ que resulta de engadirlle a *L* pola dereita os seus elementos en orden inversa.



*opción B*

1. Define a función **pal_x** que dado un número enteiro positivo $n$ nos fabrica todas as listas palindrómicas de lonxitude $n$ formadas con números díxitos.
︡0b214fa3-8006-4cc2-a399-e990d0f32d39︡︡{"done":true,"md":"\n**Pregunta 2** (Escolle unha das dúas opcións seguintes)\n\n\n\n*opción A*\n\n1. Define a función **pal_6** que colle unha lista *L* de 3 elementos e devolve a lista palindrómica **pal_6**(*L*) de lonxitude 6 que resulta de engadirlle a *L* pola dereita os seus elementos en orden contraria: **pal_6**([1,2,3]) = [1,2,3,3,2,1]\n\n2. Define a función **pal_2n** que colle unha lista *L* de $n$ elementos e devolve a lista palindrómica **pal_2n**(*L*) de lonxitude $2\\times n$ que resulta de engadirlle a *L* pola dereita os seus elementos en orden inversa.\n\n\n\n*opción B*\n\n1. Define a función **pal_x** que dado un número enteiro positivo $n$ nos fabrica todas as listas palindrómicas de lonxitude $n$ formadas con números díxitos."}
︠bfed518d-1dda-4965-b8da-bd909ce1b9fc︠
def pal_6()
︠710f2221-bf9b-4b0f-bc02-b34a269d899a︠

︠bd34a0e9-0912-4160-8320-fd9dec391e50︠
def pal_2n()
︠c7c54f3c-f8ef-4aab-9374-932de8035a95︠

︠b6ccd8f2-7eed-4ed7-a222-44e90287582d︠
def pal_x()
︠915c8bdf-54a4-4bbd-a598-b8c4522b29bf︠

︠85ce2f89-4059-4906-8d9d-0316bc03e63di︠
%md
**Pregunta 3**

1. Define a función **de_list_a_num** que colle unha lista de elementos números díxitos e devolve o número enteiro cuxas cifras, de esquerda a dereita, son os elementos da lista na mesma orde, tendo en conta que os ceros á esquerda nos números non se escriben, salvo que o número sexa 0: **de_list_a_num**([1,2,3]) = 123, **de_list_a_num**([0,0,2])= 2, **de_list_a_num**([0,0,0]) = 0.

2. Define a función **sum_d_cap** que dado un número $n$ nos devolve a suma de todos os números capicúa menores ou iguales ca $n$. (Un número dise que é capicúa se as súas cifras lidas de esquerda a dereita e de dereita a esquerda coinciden. Exemplos: $123321, 4, 808, \dots$)
︡f5fda9f9-1dd8-451b-bc90-13c3c267db69︡︡{"done":true,"md":"**Pregunta 3**\n\n1. Define a función **de_list_a_num** que colle unha lista de elementos números díxitos e devolve o número enteiro cuxas cifras, de esquerda a dereita, son os elementos da lista na mesma orde, tendo en conta que os ceros á esquerda nos números non se escriben, salvo que o número sexa 0: **de_list_a_num**([1,2,3]) = 123, **de_list_a_num**([0,0,2])= 2, **de_list_a_num**([0,0,0]) = 0.\n\n2. Define a función **sum_d_cap** que dado un número $n$ nos devolve a suma de todos os números capicúa menores ou iguales ca $n$. (Un número dise que é capicúa se as súas cifras lidas de esquerda a dereita e de dereita a esquerda coinciden. Exemplos: $123321, 4, 808, \\dots$)"}
︠75db2155-eb61-4824-ba75-02f8f583c9bd︠

︠9e9806f0-89aa-430e-8697-133942dee749︠
def de_list_a_num()
︠b695bf0e-d002-4f01-a29d-e5cb5f6f57ca︠

︠ce4555bc-d62b-4944-8819-60a96ca3d92a︠

︡49f58006-9cc8-425d-b89f-5cc803b63162︡︡{"done":true}
︠b20eda5a-2a1c-4ab8-8bc7-92bb1d7fbcb0︠
def sum_d_cap()
︠6ae495ec-e5a8-435f-89d4-1ce9da273a3c︠

︠680baf35-b86b-4a19-9824-4d5afffba104i︠
%html
<p>
    <b>Pregunta 4</b>
</p>
<p>

Define de <font color='blue'>modo recursivo</font> a función <b>bino</b> que para cada par de números enteiros non negativos, $(n,k)$, nos devolva 0, se $n \lt k$, e o coeficiente binomial, $\binom n k$, noutro caso.

</p>

︡fda453fb-d95a-43dc-842f-ac6e6cb90b20︡︡{"done":true,"html":"<p>\n    <b>Pregunta 4</b>\n</p>\n<p>\n\nDefine de <font color='blue'>modo recursivo</font> a función <b>bino</b> que para cada par de números enteiros non negativos, $(n,k)$, nos devolva 0, se $n \\lt k$, e o coeficiente binomial, $\\binom n k$, noutro caso.\n\n</p>"}
︠38085027-88a9-4c86-9b44-efc922ce1384︠
def bino()
︠a04d00df-2356-42f0-82d5-ddeb41c26854︠

︠a3f37ab3-e86f-483b-b75d-99f569ad7ca6︠
%md


**Axuda**
- O relativo a manexo de listas podes atopalo á final de **00_intro** e ao comezo de **01_funcións**

- Se precisas algo de combinatoria (_Permutations_, _Combinations_, etc.) **08_combinatoria**, **09_combinatoria_2**  e **10_combinatoria_3** é o lugar para consultalo

- Xa adiviñaches que **01_funcións** é a referencia para funcións, non si? Pero se precisas refrescar a sintaxe para iteracións e condicionais, eu miraría en **04_aritmetica-2**


- Buscas algo sobre algoritmos recursivos? Recoméndoche **11_recursion**

- Fixácheste nas facilidades que ofrece cloud? Mira as pestanas de arriba: Data | Control | Program | ...
︡b366b22f-bff6-47bb-804b-18be6e4b85a2︡︡{"done":true,"md":"\n\n**Axuda**\n- O relativo a manexo de listas podes atopalo á final de **00_intro** e ao comezo de **01_funcións**\n\n- Se precisas algo de combinatoria (_Permutations_, _Combinations_, etc.) **08_combinatoria**, **09_combinatoria_2**  e **10_combinatoria_3** é o lugar para consultalo\n\n- Xa adiviñaches que **01_funcións** é a referencia para funcións, non si? Pero se precisas refrescar a sintaxe para iteracións e condicionais, eu miraría en **04_aritmetica-2**\n\n\n- Buscas algo sobre algoritmos recursivos? Recoméndoche **11_recursion**\n\n- Fixácheste nas facilidades que ofrece cloud? Mira as pestanas de arriba: Data | Control | Program | ..."}
︠a6c7bbad-4183-4c81-92e0-8040b620798c︠
︠ae51ba51-11ca-4f07-8532-e37ddad643a3︠









