% Constructor.
% Predicado Nombre: chatbot
% Dominio: ChatbotID x Name x WelcomeMessage x StartFlowID x Flows x Chatbot
% Descripción: Crea un chatbot.
% Meta Primaria: chatbot/6
% Meta Secundaria: verificarIdRepetidos/3.

chatbot(ChatbotID, Name, WelcomeMessage, StartFlowID, Flows, [ChatbotID, Name, WelcomeMessage, StartFlowID, NewFlows]):-
    verificarIdRepetidos(Flows, [], NewFlows).


% Selector.
% Predicado Nombre: getChatbotId
% Dominio: Chatbot.
% Descripción: Obtiene el identificador unico de un chatbot.
% Meta Primaria: getChatbotId/2

getChatbotId([ChatbotId,_,_,_,_],ChatbotId).

% Selector.
% Predicado Nombre: getChatbotName
% Dominio: chatbot.
% Descripción: Obtiene el nombre de un chatbot.
% Meta Primaria: getChatbotName/2

getChatbotName([_,Name,_,_,_], Name).

% Selector.
% Predicado Nombre: getChatbotWelcomeMessege
% Dominio: Chatbot.
% Descripción: Obtiene el mensaje de bienvenida de un chatbot.
% Meta Primaria: getChatbotWelcomeMessege/2
getChatbotWelcomeMessege([_,_,WelcomeMessage,_,_], WelcomeMessage).

% Selector.
% Predicado Nombre: getChatbotStartFlowID
% Dominio: Chatbot.
% Descripción: Obtiene el identificador del flujo inicial de un chatbot.
% Meta Primaria: getChatbotStartFlowID/2
