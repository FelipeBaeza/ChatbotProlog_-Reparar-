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

% Modificador.
% Predicado Nombre: chatbotAddFlow
% Dominio: Chatbot x Flow x NewChatbot
% Descripción: Agrega un flujo (Flow) a un chatbot (Chatbot) para obtener un nuevo chatbot (NewChatbot).
% Meta Primaria: chatbotAddFlow/3
% Meta Secundaria: getChatbotId/2, getChatbotName/2, getChatbotWelcomeMessege/2, getChatbotStartFlowID/2, getChatbotFlows/2, agregarElemento/3.


chatbotAddFlow(Chatbot, Flow, NewChatbot):-
    getChatbotId(Chatbot, ChatbotId),
    getChatbotName(Chatbot, Name),
    getChatbotWelcomeMessege(Chatbot, WelcomeMessage),
    getChatbotStartFlowID(Chatbot, StartFlowID),
    getChatbotFlows(Chatbot, Flows),
    agregarElemento(Flow, Flows, NewFlows),
    chatbot(ChatbotId, Name, WelcomeMessage, StartFlowID, NewFlows, NewChatbot).
