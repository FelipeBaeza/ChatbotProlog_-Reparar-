:- use_module('tda_option_20637464_BaezaMunoz.pl', [option/5, getCode/2]).


% Constructor de flow
flow(Id, Namemsg, Option, [Id, Namemsg, NewOption]):-
    verificarIdRepetidos(Option, [], NewOption).

%selectores flow

getFlowId([Id,_,_], Id).
getFlowMsg([_,Msg,_], Msg).
getFlowOption([_,_,Option], Option).



%--------------------verifica si una lista tiene repetidos-------------------------
% Predicado auxiliar para eliminar opciones duplicadas basadas en Code
verificarIdRepetidos([], SinDuplicados, SinDuplicados).
verificarIdRepetidos([Opcion | Resto], Acumulador, SinDuplicados) :-
    getCode(Opcion, Code),
    listaCodes(Acumulador,ListaC),
    not(member(Code, ListaC)),  % Verifica que el Code no esté en el acumulador
    verificarIdRepetidos(Resto, [Opcion | Acumulador], SinDuplicados).
verificarIdRepetidos([Opcion | Resto], Acumulador, SinDuplicados) :-
    getCode(Opcion, Code),
    listaCodes(Acumulador,ListaC),
    member(Code, ListaC),  % Si el Code ya está en el acumulador, omite esta opción
    verificarIdRepetidos(Resto, Acumulador, SinDuplicados).

% Predicado recursivo para obtener los códigos de una lista de opciones
listaCodes([], []).
listaCodes([Option|Rest], [Code|CodeList]) :-
    getCode(Option, Code), % Obtener el código de la opción
    listaCodes(Rest, CodeList).
%---------------------------------------------------------------------------------

%--------------Agregar un elemento a la lista de elementos sin repetir------------

agregarElemento(Elemento, Lista, [Elemento|Lista]).

% Modificador flowaddoption
flowAddOption(Flow, Option, NewFlow) :-
    getFlowId(Flow,Id),
    getFlowMsg(Flow,Msg),
    getFlowOption(Flow,Options),
    agregarElemento(Option, Options, NewOptions),
    flow(Id, Msg, NewOptions, NewFlow).
