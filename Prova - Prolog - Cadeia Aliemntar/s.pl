%------------------ CADEIA ALIMENTAR AFRICANA ---------------

% 1 - Produtores
% Aqueles que produzem o proprio alimento, seja atrav�s da fotoss�ntese ou quimioss�ntese.

produtor(arvore).
produtor(vegetacao).

% 2 - Consumidores
% Seres que precisam se alimentar de outros.
animal(girafa).
animal(elefante).
animal(cupim).
animal(gafanhoto).
animal(javali).
animal(antilope).
animal(zebra).
animal(formiga).
animal(gazela).
animal(gnu).
animal(rato).
animal(guepardo).
animal(serval).
animal(suricato).
animal(pangolim).
animal(porcoformigueiro).
animal(abutre).
animal(hiena).
animal(pantera).
animal(lince).
animal(leao).


% 3 - Fatos

come(girafa, arvore).
come(elefante, arvore).
come(cupim, vegetacao).
come(gafanhoto, vegetacao).
come(javali, vegetacao).
%come(javali, rato).
%come(javali, cupim).
come(antilope, vegetacao).
come(zebra, vegetacao).
come(formiga, vegetacao).
come(gazela, vegetacao).
come(gnu, vegetacao).
come(rato, vegetacao).
come(guepardo, girafa).
come(guepardo, elefante).
come(serval, cupim).
come(serval, gafanhoto).
come(serval, rato).
come(serval, gnu).
come(suricato, gafanhoto).
come(pangolim, formiga).
come(porcoformigueiro, cupim).
come(porcoformigueiro, formiga).
come(abutre, guepardo).
come(abutre, girafa).
come(abutre, elefante).
come(abutre, zebra).
come(abutre, gazela).
come(hiena, suricato).
come(hiena, elefante).
come(hiena, zebra).
come(hiena, porcoformigueiro).
come(hiena, gnu).
come(hiena, pantera).
come(pantera, javali).
come(pantera, zebra).
come(pantera, gnu).
come(lince, rato).
come(lince, gazela).
come(leao, guepardo).
come(leao, girafa).
come(leao, javali).
come(leao, antilope).
come(leao, zebra).
come(leao, hiena).
come(leao, gnu).
come(leao, pantera).
come(leao, gazela).
come(leao, lince).


% 4 - Regras

%   4.1 - Niveis troficos

%      Herb�voros - aqueles que se alimentam de fontes vegetais:
%      Se um animal X come um Y que esteja no conjunto de produtores,
%      logo X sera herbivoro.
        herbivoro(X) :- come(X, Y), produtor(Y).

%      On�voros - seres vivos que consomem alimentos de fonte vegetal e animal.
%      Se um animal X come um Y e Z que esteja no conjunto de animais e
%      produtores, retrospectivamente, logo X ser� um animal onivoro
        onivoro(X) :- come(X,Y), come(X,Z), animal(Y), produtor(Z).

%      Carn�voros - animais que alimentam-se apenas da carne de outros animais.
%      Se um animal X come um Y que esteja no conjunto de animais, logo X ser� carn�voro.
        carnivoro(X) :- come(X,Y), animal(Y).

%      Consumidores prim�rios - organismos que se alimentam diretamente dos produtores.
%      Segue basicamente a mesma l�gica para animais herb�voros. Se X se alimenta de um
%      ser produtor, X ser� denominado como consumidor prim�rio.
        consumidorPrimario(X) :- come(X,Y), produtor(Y).

%      Consumidores secund�rios - s�o os seres vivos que se alimentam dos consumidores prim�rios.
%      Quando um animal consome outro ser onde o mesmo se alimenta de um produtor, logo
%      ser� considerado um consumidor secund�rio
        consumidorSecundario(X) :- come(X,Y), come(Y, Z), produtor(Z).

%      Consumidores terci�rios - organismos que consomem os secund�rios.
        consumidorTerciario(X) :- come(X, Y), come(Y, Z), come(Z, W), produtor(W).

%      Consumidor quarten�rio - indiv�duos que est�o no topo da cadeia e n�o servem de alimento.
        consumidorQuartenario(X) :- come(X, Y), come(Y, Z), come(Z, W), come(W, K), produtor(K).


% 5 - Bases de dados relacionais

%  Rela��es:
%    * especie, contendo nome, n�vel tr�fico e habitat.
%    * alimento, contendo presa, posi��o na cadeia, predador.

%  Essas rela��es podem originar tabelas.
%  Tabela relacional de esp�cie:
%  ________________________________________
% | Nome esp�cie | N�vel tr�fico | Habitat |
% |    Girafa    |   Herb�voro   |  Savana |
% |    Elefante  |   Herb�voro   |  Campos |
% |      ...     |      ...      |   ...   |
% |______________|_______________|_________|

% Base de dados prolog para tabela esp�cie:

especie(girafa, herbivoro, savana).
especie(elefante, herbivoro, campos).
especie(cupim, herbivoro, madeiras).
especie(gafanhoto, herbivoro, campos).
especie(javali, onivoro, bosques).
especie(antilope, herbivoro, savana).
especie(zebra, herbivoro, savana).
especie(formiga, herbivoro, subsolo).
especie(gazela, herbivoro, savana).
especie(gnu, herbivoro, savana).
especie(rato, herbivoro, corregos).
especie(guepardo, carnivoro, savana).
especie(serval, carnivoro, savana).
especie(suricato, carnivoro, campos).
especie(pangolim, carnivoro, bosques).
especie(porcoformigueiro, carnivoro, savana).
especie(abutre, carnivoro, savana).
especie(hiena, carnivoro, savana).
especie(pantera, carnivoro, savana).
especie(lince, carnivoro, bosques).
especie(leao, carnivoro, savana).


%  Tabela relacional de alimento:
%  ____________________________________________________
% |     Presa    |    Posi��o na cadeia    |  Predador |
% |    Gafanhoto |   Consumidor Prim�rio   |  Suricato |
% |    Javali    |   Consumidor Prim�rio   |  Pantera  |
% |      ...     |           ...           |    ...    |
% |______________|_________________________|___________|

% Base de dados prolog para tabela alimento:

alimento(arvore, produtor, girafa).
alimento(arvore, produtor, elefante).
alimento(vegetacao, produtor, cupim).
alimento(vegetacao, produtor, gafanhoto).
alimento(vegetacao, produtor, javali).
alimento(vegetacao, produtor, antilope).
alimento(vegetacao, produtor, zebra).
alimento(vegetacao, produtor, formiga).
alimento(vegetacao, produtor, gazela).
alimento(vegetacao, produtor, gnu).
alimento(vegetacao, produtor, rato).
alimento(girafa, consumidorPrimario, guepardo).
alimento(girafa, consumidorPrimario, abutre).
alimento(girafa, consumidorPrimario, leao).
alimento(elefante, consumidorPrimario, guepardo).
alimento(elefante, consumidorPrimario, abutre).
alimento(elefante, consumidorPrimario, hiena).
alimento(cupim, consumidorPrimario, serval).
alimento(cupim, consumidorPrimario, porcoformigueiro).
alimento(gafanhoto, consumidorPrimario, serval).
alimento(gafanhoto, consumidorPrimario, suricato).
alimento(javali, consumidorPrimario, pantera).
alimento(javali, consumidorPrimario, leao).
alimento(antilope, consumidorPrimario, leao).
alimento(zebra, consumidorPrimario, abutre).
alimento(zebra, consumidorPrimario, hiena).
alimento(zebra, consumidorPrimario, pantera).
alimento(zebra, consumidorPrimario, leao).
alimento(formiga, consumidorPrimario, pangolim).
alimento(formiga, consumidorPrimario, porcoformigueiro).
alimento(gazela, consumidorPrimario, abutre).
alimento(gazela, consumidorPrimario, lince).
alimento(gazela, consumidorPrimario, leao).
alimento(gnu, consumidorPrimario, serval).
alimento(gnu, consumidorPrimario, hiena).
alimento(gnu, consumidorPrimario, pantera).
alimento(gnu, consumidorPrimario, leao).
alimento(rato, consumidorPrimario, serval).
alimento(rato, consumidorPrimario, lince).
alimento(guepardo, consumidorSecundario, abutre).
alimento(guepardo, consumidorSecundario, leao).
alimento(serval, consumidorSecundario, decompositores).
alimento(suricato, consumidorSecundario, hiena).
alimento(pangolim, consumidorSecundario, decompositores).
alimento(porcoformigueiro, consumidorSecundario, hiena).
alimento(abutre, consumidorSecundario, decompositores).
alimento(abutre, consumidorTerciario, decompositores).
alimento(hiena, consumidorSecundario, leao).
alimento(hiena, consumidorTerciario, leao).
alimento(pantera, consumidorSecundario, hiena).
alimento(pantera, consumidorSecundario, leao).
alimento(lince, consumidorSecundario, leao).
alimento(leao, consumidorSecundario, decompositores).
alimento(leao, consumidorTerciario, decompositores).
