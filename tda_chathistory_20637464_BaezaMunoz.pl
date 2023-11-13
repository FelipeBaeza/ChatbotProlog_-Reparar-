% Constructor.
% Predicado Nombre: chatHistory
% Dominio: ChatH.
% Descripción: Crea un historial de chat con un contenido de chat dado.
% Meta Primaria: chatHistory/2


chatHistory(ChatH,ChatH).

% Selector.
% Predicado Nombre: getHistory.
% Dominio: Lista x Chat.
% Descripcion: Consigue el chatHistory del usuario.
% Meta Primera: getHistory/2.


getChatHistory([_,Chat], Chat).
