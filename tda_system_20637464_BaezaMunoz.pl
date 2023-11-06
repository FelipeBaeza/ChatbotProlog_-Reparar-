% Constructor.
% Predicado Nombre: system
% Dominio de Entrada: Name x InitialChatbotCodeLink x Chatbots x sistema.
% Descripción: Crea un sistema.
% Meta Primaria: system/4
% Meta Secundaria: verificarIdRepetidos/3, get_time/1.


system(Name, InitialChatbotCodeLink, Chatbots, [Name, InitialChatbotCodeLink, NewChatbots, [], [], [], Fecha]) :-
    verificarIdRepetidos(Chatbots, [], NewChatbots),
    get_time(Fecha).
