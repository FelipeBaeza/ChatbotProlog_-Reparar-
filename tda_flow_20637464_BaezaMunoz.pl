% Constructor.
% Predicado Nombre: flow/4
% Dominio: Id x Namemsg x Options x flow
% Descripción: Crea un flujo.
% Meta Primaria: flow/4
% Meta Secundaria: verificarIdRepetidos/3,Reverse/2.
flow(Id, Namemsg, Option, [Id, Namemsg, NewOptionR]):-
    verificarIdRepetidos(Option, [], NewOption),
    reverse(NewOption,NewOptionR).

% Selector.
% Predicado getFlowId
% Dominio: flow
% Descripción: Obtiene el identificador único de un flujo.
% Meta Primaria: getFlowId/2
getFlowId([Id,_,_], Id).

% Selector.
% Predicado getFlowMsg
% Dominio: flow
% Descripción: Obtiene el mensaje o nombre de un flujo.
% Meta Primaria: getFlowMsg/2
getFlowMsg([_,Msg,_], Msg).

% Selector.
% Predicado getFlowMsg/2
% Dominio: flow
% Descripción: Obtiene las options del flujo
% Meta Primaria: getFlowMsg/2
getFlowOption([_,_,Option], Option).


% Modificador.
% Predicado verificarIdRepetidos
% Descripción: Verifica y elimina identificadores repetidos en una lista de Elementos.
% Dominio: elementos x listaElementos
% Meta Primaria: verificarIdRepetidos/3
% Meta Secundaria: getCode/2, listaCodes/2, member/2
verificarIdRepetidos([], SinDuplicados, SinDuplicados).
verificarIdRepetidos([Opcion | Resto], Acumulador, SinDuplicados) :-
    getCode(Opcion, Code),
    listaCodes(Acumulador,ListaC),
    not(member(Code, ListaC)),
    verificarIdRepetidos(Resto, [Opcion | Acumulador], SinDuplicados).
verificarIdRepetidos([Opcion | Resto], Acumulador, SinDuplicados) :-
    getCode(Opcion, Code),
    listaCodes(Acumulador,ListaC),
    member(Code, ListaC),
    verificarIdRepetidos(Resto, Acumulador, SinDuplicados).


% Selector.
% Predicado listaCodes.
% Dominio: ListElementos.
% Descripción: Obtiene una lista de códigos a partir de una lista de Elementos.
% Meta Primaria: listaCodes/2
% Meta Secundaria: getCode/2

listaCodes([], []).
listaCodes([Option|Rest], [Code|CodeList]) :-
    getCode(Option, Code),
    listaCodes(Rest, CodeList).


% Modificador.
% Predicado Nombre: agregarElemento
% Dominio: Elemento x Lista.
% Descripción: Agrega un Elemento a una Lista para obtener la ListaResultante, siempre que el Elemento no sea una lista vacía.
% Meta Primaria: agregarElemento/3
% Meta Secundaria: Verificar si el Elemento no es una lista vacía.

agregarElemento(Elemento, Lista, [Elemento|Lista]) :-
    Elemento \= [].
agregarElemento(Elemento, Lista, Lista):-
    Elemento = [].

% Modificador.
% Predicado Nombre: flowAddOption
% Dominio de Entrada: Flow x Option x NewFlow
% Descripción: Agrega una opción (Option) a un flujo (Flow) para obtener un nuevo flujo (NewFlow).
% Meta Primaria: flowAddOption/3
% Meta Secundaria: getFlowId/2, getFlowMsg/2 }, getFlowOption/2 ,agregarElemento/3

flowAddOption(Flow, Option, NewFlow) :-
    getFlowId(Flow,Id),
    getFlowMsg(Flow,Msg),
    getFlowOption(Flow,Options),
    agregarElemento(Option, Options, NewOptions),
    flow(Id, Msg, NewOptions, NewFlow).

% Constructor.
% Predicado Nombre: chatbot
% Dominio: ChatbotID x Name x WelcomeMessage x StartFlowID x Flows x Chatbot
% Descripción: Crea un chatbot.
% Meta Primaria: chatbot/6
% Meta Secundaria: verificarIdRepetidos/3.

