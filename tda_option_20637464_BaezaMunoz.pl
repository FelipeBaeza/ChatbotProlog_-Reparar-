

% Constructor.
% Nombre Predicado: Option
% Dominio: Code x Message x ChatbotCodeLink x InitialFlowCodeLink x Keyword, option
% Descripcion: Crea una Option
% Meta Primaria: option/6
option(Code, Message, ChatbotCodeLink, InitialFlowCodeLink, Keyword, [Code, Message, ChatbotCodeLink, InitialFlowCodeLink, Keyword]).

% Selector.
% Predicado nombre: getCode.
% Dominio: Option.
% Descripción: Obtiene el Code de una opción.
% Meta Primaria: getCode/2.
getCode([Code|_], Code).

% Selector.
% Predicado nombre: getChatbotCodeLink.
% Dominio: Option.
% Descripción: Obtiene el ChatbotCodeLink de una opción.
% Meta Primaria: getCode/2.
getChatbotCodeLink([_,_,ChatbotCodeLink,_,_], ChatbotCodeLink).

% Selector.
% Predicado nombre: getInitialFlowCodeLink.
% Dominio: Option.
% Descripción: Obtiene el InitialFlowCodeLink de una opción.
% Meta Primaria: getInitialFlowCodeLink/2.
getInitialFlowCodeLink([_,_,_,InitialFlowCodeLink,_],InitialFlowCodeLink).
