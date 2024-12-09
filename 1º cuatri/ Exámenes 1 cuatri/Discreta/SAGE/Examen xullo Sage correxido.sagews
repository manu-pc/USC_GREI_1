︠2c9e0f9d-8ec8-4b9c-88b0-1ec71ffff0b6i︠
%md
#Matemática Discreta

##Exame 1/7/2015

##Puntos (1.5 + 0.5) + [(1 + 1.5) ou 2.5]  + (1.5 + 2) + (2)

︡31a2d5a3-9e4c-4660-a96d-5f1896d21823︡{"md":"#Matemática Discreta\n\n##Exame 1/7/2015\n\n##Puntos (1.5 + 0.5) + [(1 + 1.5) ou 2.5]  + (1.5 + 2) + (2)\n\n"}︡
︠52621169-44a9-4393-8779-9c3f9c991af0i︠
%md
**Pregunta 1**

Unha lista dise que é palindrómica se ten lonxitude maior ca 0 e os seus elementos lidos de esquerda a dereita e de dereita a esquerda coinciden.

Exemplos: $[1,0,0,1], [2], [a,b,5,b,a], [10,5,10], \dots$


1. Constrúe con Sage todas as listas palindrómicas de lonxitude menor ou igual ca 4 cuxos elementos son números díxitos (nos exemplos anteriores, nin os elementos da terceira lista nin os da cuarta son díxitos).
2. Cantas hai?


︡3b033ce4-b520-4e3d-ab02-c26d04990ccc︡{"md":"**Pregunta 1**\n\nUnha lista dise que é palindrómica se ten lonxitude maior ca 0 e os seus elementos lidos de esquerda a dereita e de dereita a esquerda coinciden.\n\nExemplos: $[1,0,0,1], [2], [a,b,5,b,a], [10,5,10], \\dots$\n\n\n1. Constrúe con Sage todas as listas palindrómicas de lonxitude menor ou igual ca 4 cuxos elementos son números díxitos (nos exemplos anteriores, nin os elementos da terceira lista nin os da cuarta son díxitos).\n2. Cantas hai?\n\n\n"}︡
︠a8f38019-955e-47d6-9e4c-a78560dd25f8︠
p1=[[i] for i in range(10)]                                # listas palindrómicas de lonxitude 1
p2=[[i,i] for i in range(10)]                              # listas palindrómicas de lonxitude 2
p3=[[i,j,i] for i in range(10) for j in range(10) ]        # listas palindrómicas de lonxitude 3
p4=[[i,j,j,i] for i in range(10) for j in range(10) ]      # listas palindrómicas de lonxitude 4
p=p1+p2+p3+p4                                              # listas palindrómicas de lonxitude ≤ 4
len(p)
︡4c4cd4b8-3b19-4af3-8406-dc32d09840ce︡{"stdout":"220\n"}︡
︠a53a2617-e77f-48bc-9239-4fef6e73e086︠

︡5fe5516d-8934-4e7d-bfb1-6f38a7f14a8f︡
︠53342bf0-a4e7-486f-9d89-8b39ce32e954i︠
%md

**Pregunta 2** (Escolle unha das dúas opcións seguintes)



*opción A*

1. Define a función **p3p** que colle unha lista *L* de 3 elementos e devolve a lista palindrómica **p3p**(*L*) de lonxitude 6 que resulta de engadirlle a *L* pola dereita os seus elementos en orden contraria: **p3p**([1,2,3]) = [1,2,3,3,2,1]

2. Define a función **palin** que colle unha lista *L* de $n$ elementos e devolve a lista palindrómica **palin**(*L*) de lonxitude $2\times n$ que resulta de engadirlle a *L* pola dereita os seus elementos en orden inversa.



*opción B*

1. Define a función **palindro** que dado un número enteiro positivo $n$ nos fabrica todas as listas palindrómicas de lonxitude $n$ formadas con números díxitos.
︡0b214fa3-8006-4cc2-a399-e990d0f32d39︡{"md":"\n**Pregunta 2** (Escolle unha das dúas opcións seguintes)\n\n\n\n*opción A*\n\n1. Define a función **p3p** que colle unha lista *L* de 3 elementos e devolve a lista palindrómica **p3p**(*L*) de lonxitude 6 que resulta de engadirlle a *L* pola dereita os seus elementos en orden contraria: **p3p**([1,2,3]) = [1,2,3,3,2,1]\n\n2. Define a función **palin** que colle unha lista *L* de $n$ elementos e devolve a lista palindrómica **palin**(*L*) de lonxitude $2\\times n$ que resulta de engadirlle a *L* pola dereita os seus elementos en orden inversa.\n\n\n\n*opción B*\n\n1. Define a función **palindro** que dado un número enteiro positivo $n$ nos fabrica todas as listas palindrómicas de lonxitude $n$ formadas con números díxitos.\n"}︡
︠6f776e0c-dd2d-4d38-94c5-2f1e6d67a15d︠
####### opción A #######
︠bfed518d-1dda-4965-b8da-bd909ce1b9fc︠
def p3p(L):
    Linv=[L[2],L[1],L[0]]
    return L + Linv
︡d51a398b-4b6d-44a4-9eb9-bce6f4815f56︡
︠5869d0ae-e543-4d01-a80a-87bd9d8d362e︠
p3p([1,2,3])
︡af0c2a04-e415-410c-9dd2-5db948e6d59f︡{"stdout":"[1, 2, 3, 3, 2, 1]\n"}︡
︠bd34a0e9-0912-4160-8320-fd9dec391e50︠
def palin(L):
    n=len(L)
    Linv=[L[n-1-i] for i in range(n)]           # tamén se podería usar L[-i] en vez de L[n-1-i]
    return L+Linv
︡713e2017-f533-404c-baeb-fc76f50d436c︡
︠23b75499-5326-451e-895e-1b4f493f51ad︠
palin([1,2,3,4])
︡0e37e7e3-c5f9-42ba-8df3-69764a6c9a4d︡{"stdout":"[1, 2, 3, 4, 4, 3, 2, 1]\n"}︡
︠58c01763-302e-441e-a7dc-a31bd820877e︠
# outra posibilidade

def palin_2(L):
    M=L[:]
    M.reverse()
    return L+M
︠ae24d8f5-07c8-4011-b084-36216c64ecf4︠
palin_2([1,2,3,4])
︠2e8acf51-1272-4990-a946-80a37df2a906︠
# outra posibilidade

def palin_3(L):
    n=len(L)
    M=L
    for i in [n-1,n-2..0]:
       M.append(L[i])
    return M
︡3df782c4-b4b7-4e30-86e5-fd659eb3afed︡
︠a15bd129-456a-4f26-98fa-3b9f60a6cd27︠
palin_3([1,2,3,4])
︡c568c348-b066-4c63-b7f7-73a54a739040︡{"stdout":"[1, 2, 3, 4, 4, 3, 2, 1]\n"}︡
︠2d28ae7c-8e5a-4f9b-bccb-46957f2bc988︠
# outra posibilidade

def palin_4(L):
    M=L[:]
    for x in L:
        M.insert(0,x)
    return M
︡d07df1ae-bb18-4b10-a3a3-eb309242ca3e︡
︠531e7d8f-7ccb-488f-b5f2-a04a395f3c0c︠
palin_4([1,2,3,4])
︡585d4351-7134-48c7-85f1-61b35a85d91d︡{"stdout":"[4, 3, 2, 1, 1, 2, 3, 4]\n"}︡
︠ba7091a8-62a0-4dbd-96db-58ae8dbb736f︠
####### opción B #######
︠35ea7818-aba0-4e70-92b3-83eeb6357b8c︠
def vale(L):                                       # devolverá True se a lista L é palindrómica, False noutro caso
    n=len(L)
    test=True
    for i in range(n/2):                           # só temos que correr o bucle ata a metade
        test=test and L[i] == L[n-1-i]
    return test
︡7271ae7a-bb6c-45e3-8bc8-2a651e7a9db2︡
︠bc4bd3c6-d27f-4c27-bebb-6c4bb5029a9a︠
vale([1,2,1])
vale([1,2,3])
︡d9de68ad-7f1b-468b-8eba-76c2d0351e28︡{"stdout":"True\n"}︡{"stdout":"False\n"}︡
︠cd48ddbd-a645-4abe-b03c-d1fbdbbcd4d9︠
# unha versión máis "de informática" e menos "de lóxica" podería ser

def serve(L):                                      # devolverá True se a lista L é palindrómica, False noutro caso
    n=len(L)
    for i in range(n/2):                           # só temos que correr o bucle ata a metade
        if L[i] <> L[n-1-i]: return False          # abandona o bucle e devolve False
    return True
︡7e633db7-614a-4117-ac28-bfaee8eb6b07︡
︠a1a27cb6-7790-4af3-8fd8-853a0ea9a163︠
serve([1,2,1])
serve([1,2,3])
︡60b6dfee-6adc-41a9-b359-5f66dd31c98d︡{"stdout":"True\n"}︡{"stdout":"False\n"}︡
︠869b9878-342e-49b0-9a7a-b0d7d3a5d124︠
def palindro(n):
    listas=Permutations(range(10)*n,n).list()      # lista formada por todas as listas de lonxitude n feitas con díxitos
    return [x for x in listas if vale(x)]          # filtramos aquelas listas que son palindrómicas
︡66adcb97-1364-4c66-a597-93c69c98e96d︡
︠90720e19-2bd2-487d-a0b7-9e42cc1e97c4︠
palindro(3)
︡434bd00f-bfa8-4ad3-91c2-7eef1a2a8480︡{"stdout":"[[0, 0, 0], [0, 1, 0], [0, 2, 0], [0, 3, 0], [0, 4, 0], [0, 5, 0], [0, 6, 0], [0, 7, 0], [0, 8, 0], [0, 9, 0], [1, 0, 1], [1, 1, 1], [1, 2, 1], [1, 3, 1], [1, 4, 1], [1, 5, 1], [1, 6, 1], [1, 7, 1], [1, 8, 1], [1, 9, 1], [2, 0, 2], [2, 1, 2], [2, 2, 2], [2, 3, 2], [2, 4, 2], [2, 5, 2], [2, 6, 2], [2, 7, 2], [2, 8, 2], [2, 9, 2], [3, 0, 3], [3, 1, 3], [3, 2, 3], [3, 3, 3], [3, 4, 3], [3, 5, 3], [3, 6, 3], [3, 7, 3], [3, 8, 3], [3, 9, 3], [4, 0, 4], [4, 1, 4], [4, 2, 4], [4, 3, 4], [4, 4, 4], [4, 5, 4], [4, 6, 4], [4, 7, 4], [4, 8, 4], [4, 9, 4], [5, 0, 5], [5, 1, 5], [5, 2, 5], [5, 3, 5], [5, 4, 5], [5, 5, 5], [5, 6, 5], [5, 7, 5], [5, 8, 5], [5, 9, 5], [6, 0, 6], [6, 1, 6], [6, 2, 6], [6, 3, 6], [6, 4, 6], [6, 5, 6], [6, 6, 6], [6, 7, 6], [6, 8, 6], [6, 9, 6], [7, 0, 7], [7, 1, 7], [7, 2, 7], [7, 3, 7], [7, 4, 7], [7, 5, 7], [7, 6, 7], [7, 7, 7], [7, 8, 7], [7, 9, 7], [8, 0, 8], [8, 1, 8], [8, 2, 8], [8, 3, 8], [8, 4, 8], [8, 5, 8], [8, 6, 8], [8, 7, 8], [8, 8, 8], [8, 9, 8], [9, 0, 9], [9, 1, 9], [9, 2, 9], [9, 3, 9], [9, 4, 9], [9, 5, 9], [9, 6, 9], [9, 7, 9], [9, 8, 9], [9, 9, 9]]\n"}︡
︠ef2ed78b-db84-4920-a07c-228950a1d15f︠

︡3761d885-107f-47b5-8b5f-6ad0734d4978︡
︠85ce2f89-4059-4906-8d9d-0316bc03e63di︠
%md
**Pregunta 3**

1. Define a función **nu** que colle unha lista de elementos números díxitos e devolve o número enteiro cuxas cifras, de esquerda a dereita, son os elementos da lista na mesma orde, tendo en conta que os ceros á esquerda nos números non se escriben, salvo que o número sexa 0: **nu**([1,2,3]) = 123, **nu**([0,0,2])= 2, **nu**([0,0,0]) = 0.

2. Define a función **sumcap** que dado un número $n$ nos devolve a suma de todos os números capicúa menores ou iguales ca $n$. (Un número dise que é capicúa se as súas cifras lidas de esquerda a dereita e de dereita a esquerda coinciden. Exemplos: $123321, 4, 808, \dots$)
︡f5fda9f9-1dd8-451b-bc90-13c3c267db69︡{"md":"**Pregunta 3**\n\n1. Define a función **nu** que colle unha lista de elementos números díxitos e devolve o número enteiro cuxas cifras, de esquerda a dereita, son os elementos da lista na mesma orde, tendo en conta que os ceros á esquerda nos números non se escriben, salvo que o número sexa 0: **nu**([1,2,3]) = 123, **nu**([0,0,2])= 2, **nu**([0,0,0]) = 0.\n\n2. Define a función **sumcap** que dado un número $n$ nos devolve a suma de todos os números capicúa menores ou iguales ca $n$. (Un número dise que é capicúa se as súas cifras lidas de esquerda a dereita e de dereita a esquerda coinciden. Exemplos: $123321, 4, 808, \\dots$)\n"}︡
︠9e9806f0-89aa-430e-8697-133942dee749︠
def nu(L):
    n=len(L)
    numero=0
    for i in range(len(L)):
        numero+=L[i]*10^(n-1-i)
    return numero
︡7e702f14-e67c-4768-8326-a6bd95b40ae9︡
︠b20eda5a-2a1c-4ab8-8bc7-92bb1d7fbcb0︠
nu([1,2,3])
nu([0,0,2])
nu([0,0,0])
︡07f2d7e7-8f38-43c8-840f-d53c1059225b︡{"stdout":"123\n"}︡{"stdout":"2\n"}︡{"stdout":"0\n"}︡
︠1e9992ba-b76c-4ef2-8066-8b69e42316f7︠
##### para quen optou pola opción B

def sucap(n):
    lonxitude=n.ndigits()                              # o número de díxitos que forman n
    lis_pal=[]
    for i in [1..lonxitude]:
        lis_pal+=palindro(i)                           # imos engadindo todas as listas palindrómicas de lonxitude i (i <= número de díxitos de n)
        lis_cap=[ x for x in lis_pal if x[0]<>0]       # eliminamos aquelas listas que comezan por 0
    capicuas=[nu(x) for x in lis_cap if nu(x) <= n]    # filtramos aquelas listas que corresponden a números <= n, e convertímolas en números
    return sum(capicuas)                               # sumamos todos eses números
︡d6308f92-05e6-44d0-a73a-59addc7dc090︡
︠94b8c270-38c9-471b-96e2-bc3745fa12a1︠
sucap(9)
sucap(10)
sucap(11)
sucap(1000)
︡5efb0e5e-8808-42c7-ba19-43fac4ceaad2︡{"stdout":"45\n"}︡{"stdout":"45\n"}︡{"stdout":"56\n"}︡{"stdout":"50040\n"}︡
︠7c6fb04c-6237-48fd-a4d4-755ede994b93︠

︠bcd6a3f0-3f90-4908-9f9b-2f85ddf44108︠
##### para quen optou pola opción A e/ou definiu algo parecido a "vale"

def e_pal(L):
    n=floor(len(L)/2)
    L_2=[L[i] for i in range(n)]           # quedámonos coa mitade da lista
    M=palin(L_2)                           # duplicamos esta mitade en orde inversa para facer un palíndromo
    if len(L)%2<>0:
        M.insert(n,L[n])                   # se n é impar, insertamos o termo medio de L, e seguirá sendo palindrómica
    test =  L == M                         # comparamos esta lista coa orixinal
    return test
︡91874b4e-846b-4fe6-a0bb-7bb3e0904d87︡
︠89ad6d12-002f-4cc0-9a0a-eea0f38bf276︠
e_pal([1,2,3,2,1])
e_pal([1,2,3,1])

︡25e5202a-92c3-4ea5-b5a9-411ddd6cb7cf︡{"stdout":"True\n"}︡{"stdout":"False\n"}︡
︠3a229434-278f-4a5c-888f-642975ca6c22︠

def sucap_vale(n):
    suma=0
    for x in [1..n]:                    # imos mirando todos os números entre 1 e n, incluídos
        if vale(x.digits()):            # se a lista das súas cifras é palindrómica, sumámolo
            suma+=x
    return suma
︡e60514ee-2ff7-47f7-871d-ecee8d3e1abf︡

︠62f74cde-2bd5-4044-87fc-0aa38912af12︠
sucap_vale(9)
sucap_vale(10)
sucap_vale(11)
sucap_vale(1000)
︡adb7dca8-f41b-42be-bf27-8e7f323e74f7︡{"stdout":"45\n"}︡{"stdout":"45\n"}︡{"stdout":"56\n"}︡{"stdout":"50040\n"}︡
︠15eff5e9-58d1-4833-874a-0f3b23f6c811︠
def sucap_e_pal(n):
    suma=0
    for x in [1..n]:
        if e_pal(x.digits()):
            suma+=x
    return suma
︡d1c953b4-5983-4967-8cb5-671ad583ea39︡
︠b554445b-3883-4c89-b482-f26317c42649︠
sucap_e_pal(9)
sucap_e_pal(10)
sucap_e_pal(11)
sucap_e_pal(1000)
︡3af58d40-3ccc-47f8-9eab-7b4605cdf3a0︡{"stdout":"45\n"}︡{"stdout":"45\n"}︡{"stdout":"56\n"}︡{"stdout":"50040\n"}︡
︠b06f25d9-4953-4fa2-9a0f-9fc5a833ae27i︠
%md
Naturalmente, podiamos facer un procedemento para mirar directamente se un número é capicúa ou non, sen necesidade de pasar pola lista das súas cifras.
︡632983f2-cd6c-4c75-882a-078d99ad579b︡{"md":"Naturalmente, podiamos facer un procedemento para mirar directamente se un número é capicúa ou non, sen necesidade de pasar pola lista das súas cifras.\n"}︡
︠5b26671a-1f05-4e5f-bfd6-965eaa3bbd1e︠
def capicua(n):
    d=n.ndigits()
    for k in range(d/2):
        if n//(10^k)%10 <> n//(10^(d-1-k))%10: return False
    return True
︡d3aa447a-f4f8-4d18-bd8f-015671e96a61︡
︠de4e8439-24d9-4049-906b-a0dd2c4bbca8︠
capicua(4)
capicua(42)
capicua(141)
︡f59daf9c-095c-459e-9b97-829003dfec51︡{"stdout":"True\n"}︡{"stdout":"False\n"}︡{"stdout":"True\n"}︡
︠62e44fea-4aa0-437a-82e9-98dd283a822e︠
def sucapicuas(n):
    return sum([x for x in [1..n] if capicua(x)])
︡6e2cd8af-f77b-4ea9-9e2d-043145d9ec41︡
︠4f7f88d0-2079-4e7c-b6f1-e2d2762f0e82︠
sucapicuas(1000)
︡0ad2888d-0ffe-41e5-9425-d9613c6976c9︡{"stdout":"50040\n"}︡
︠680baf35-b86b-4a19-9824-4d5afffba104i︠
%md
**Pregunta 4**
Define de modo recursivo a función **power2** que para cada par de números enteiros non negativos, $(a,n)$, nos devolva $a^{2^n}$.
︡707bfa86-9869-421c-b5d7-b4c5c0d163cd︡{"md":"**Pregunta 4**\nDefine de modo recursivo a función **power2** que para cada par de números enteiros non negativos, $(a,n)$, nos devolva $a^{2^n}$.\n"}︡
︠8914e4a8-a7f4-484d-b9bd-8e2d9ccb64f7i︠
%md
Tendo en conta que $$a^{2^n} = a^{2^{n-1}\times 2} = \left ( a^ {2^{n-1}} \right )^2$$

teremos que

$$a_n = (a_{n-1})^2$$
︡3a42fad1-391f-49cb-b41f-e3bad4e62112︡{"md":"Tendo en conta que $$a^{2^n} = a^{2^{n-1}\\times 2} = \\left ( a^ {2^{n-1}} \\right )^2$$\n\nteremos que\n\n$$a_n = (a_{n-1})^2$$\n"}︡
︠38085027-88a9-4c86-9b44-efc922ce1384︠
def power2(a,n):
    if n == 0: return a
    else: return power2(a,n-1)^2
︡eaa07aaf-6205-4c84-8b75-68d5d530dde3︡
︠a04d00df-2356-42f0-82d5-ddeb41c26854︠
power2(3,3)
︡7df55998-5cfc-4eca-91eb-4736f0c65c33︡{"stdout":"6561\n"}︡
︠a3f37ab3-e86f-483b-b75d-99f569ad7ca6i︠
%md


**Axuda**
- O relativo a manexo de listas podes atopalo en **00_intro**

- Se precisas algo de combinatoria (permutacións, combinacións, etc.) **08_combinatoria** e **09_combinatoria2** é o lugar para consultalo

- Xa adiviñaches que **01_funcións** é a referencia para funcións, non si? Pero se precisas refrescar a sintaxe para iteracións e condicionais, eu miraría en **03_algoritmos**


- Buscas algo sobre algoritmos recursivos? Recoméndoche **10_recursion**

- Fixácheste nas novas facilidades que ofrece cloud? Mira as pestanas de arriba: Data | Control | Functions | ...
︡b366b22f-bff6-47bb-804b-18be6e4b85a2︡{"md":"\n\n**Axuda**\n- O relativo a manexo de listas podes atopalo en **00_intro**\n\n- Se precisas algo de combinatoria (permutacións, combinacións, etc.) **08_combinatoria** e **09_combinatoria2** é o lugar para consultalo\n\n- Xa adiviñaches que **01_funcións** é a referencia para funcións, non si? Pero se precisas refrescar a sintaxe para iteracións e condicionais, eu miraría en **03_algoritmos**\n\n\n- Buscas algo sobre algoritmos recursivos? Recoméndoche **10_recursion**\n\n- Fixácheste nas novas facilidades que ofrece cloud? Mira as pestanas de arriba: Data | Control | Functions | ...\n"}︡
︠a6c7bbad-4183-4c81-92e0-8040b620798c︠









