% Forças Armadas do Brasil

chefe(presidente).

% 1° escalão

exercito(marechal).
marinha(almirante).
aeronautica(marechaldoar).

% 2° escalão

exercito(generaldeexercito).
marinha(almirantedeesquadra).
aeronautica(tenentebrigadeiro).

% 3º escalão

exercito(generaldedivisao).
marinha(vicealmirante).
aeronautica(majorbrigadeiro).

% 4º escalão

exercito(generaldebrigada).
marinha(contraalmirante).
aeronautica(brigadeiro).

% 5º escalão

exercito(coronel).
marinha(capitaodemareguerra).
aeronautica(coronel).

% 6º escalão

exercito(tenentecoronel).
marinha(capitaodefragata).
aeronautica(tenentecoronel).

% 7º escalão

exercito(major).
marinha(capitaodecoverta).
aeronautica(major).

% 8º escalão

exercito(capitao).
marinha(capitaotenente).
aeronautica(capitao).

% 9º escalão

exercito(primeirotenente).
marinha(primeirotenente).
aeronautica(primeirotenente).

% 10º escalão

exercito(segundotenente).
marinha(segundotenente).
aeronautica(segundotenente).

% 11º escalão

exercito(aspirante).
marinha(guardamarinha).
aeronautica(aspirante).

% 12º escalão

exercito(subtenente).
marinha(suboficial).
aeronautica(suboficial).

% 13º escalão

exercito(primeirosargento).
marinha(primeirosargento).
aeronautica(primeirosargento).

% 14º escalão

exercito(segundosargento).
marinha(segundosargento).
aeronautica(segundosargento).

% 15º escalão

exercito(terceirosargento).
marinha(terceirosargento).
aeronautica(terceirosargento).

% 16º escalão

exercito(cabo).
marinha(cabo).
aeronautica(cabo).

% 17º escalão

exercito(soldado).
marinha(marinheiro).
aeronautica(soldado).

%-----------------------------------------------------------

%hierarquia 1

supervisiona(presidente,marechal).
supervisiona(presidente,marechaldoar).
supervisiona(presidente,almirante).

%hierarquia 2

supervisiona(marechal,generaldeexercito).
supervisiona(marechaldoar,almirantedeesquadra).
supervisiona(almirante,tenentebrigadeiro).

%hierarquia 3

supervisiona(generaldeexercito,generaldedivisao).
supervisiona(almirantedeesquadra,vicealmirante).
supervisiona(tenentebrigadeiro,majorbrigadeiro).

%hierarquia 4

supervisiona(generaldedivisao,generaldebrigada).
supervisiona(vicealmirante,contraalmirante).
supervisiona(majorbrigadeiro,brigadeiro).

%hierarquia 5

supervisiona(generaldebrigada,coronel).
supervisiona(contraalmirante,capitaodemareguerra).
supervisiona(brigadeiro,coronel).

%hierarquia 6

supervisiona(coronel,tenentecoronel).
supervisiona(capitaodemareguerra,capitaodefragata).
supervisiona(coronel,tenentecoronel).

%hierarquia 7

supervisiona(tenentecoronel,major).
supervisiona(capitaodefragata,capitaodecoverta).
supervisiona(tenentecoronel,major).

%hierarquia 8

supervisiona(major,capitao).
supervisiona(capitaodecoverta,capitaotenente).
supervisiona(major,capitao).

%hierarquia 9

supervisiona(capitao,primeirotenente).
supervisiona(capitaotenente,primeirotenente).
supervisiona(capitao,primeirotenente).

%hierarquia 10

supervisiona(primeirotenente,segundotenente).
supervisiona(primeirotenente,segundotenente).
supervisiona(primeirotenente,segundotenente).

%hierarquia 11

supervisiona(segundotenente,aspirante).
supervisiona(segundotenente,guardamarinha).
supervisiona(segundotenente,aspirante).

%hierarquia 11

supervisiona(aspirante,subtenente).
supervisiona(guardamarinha,suboficial).
supervisiona(aspirante,suboficial).

%hierarquia 12

supervisiona(aspirante,subtenente).
supervisiona(guardamarinha,suboficial).
supervisiona(aspirante,suboficial).

%hierarquia 13

supervisiona(subtenente,primeirosargento).
supervisiona(suboficial,primeirosargento).
supervisiona(suboficial,primeirosargento).

%hierarquia 14

supervisiona(primeirosargento,segundosargento).
supervisiona(primeirosargento,segundosargento).
supervisiona(primeirosargento,segundosargento).

%hierarquia 15

supervisiona(segundosargento,terceirosargento).
supervisiona(segundosargento,terceirosargento).
supervisiona(segundosargento,terceirosargento).

%hierarquia 16

supervisiona(terceirosargento,cabo).
supervisiona(terceirosargento,cabo).
supervisiona(terceirosargento,cabo).


%hierarquia 17

supervisiona(cabo,soldado).
supervisiona(cabo,marinheiro).
supervisiona(cabo,soldado).

