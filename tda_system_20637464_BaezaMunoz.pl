% Constructor.
% Predicado Nombre: system
% Dominio de Entrada: Name x InitialChatbotCodeLink x Chatbots x sistema.
% Descripci�n: Crea un sistema.
% Meta Primaria: system/4
% Meta Secundaria: verificarIdRepetidos/3, get_time/1.
%

system(Name, InitialChatbotCodeLink, Chatbots, [Name, InitialChatbotCodeLink, NewChatbots, [], [], [], Fecha]) :-
    verificarIdRepetidos(Chatbots, [], NewChatbots),
    get_time(Fecha).

% Constructor.
% Predicado Nombre: newSystem
% Dominio de Entrada: Name x InitialChatbotCodeLink x Chatbots x Users x UserLogin x Conversacion x Fecha x newsistema
% Descripci�n: Crea un nuevo sistema de chatbots con un nombre (Name), un enlace al c�digo del chatbot inicial (InitialChatbotCodeLink), una lista de chatbots (Chatbots), una lista de usuarios (Users), informaci�n de inicio de sesi�n de usuario (UserLogin), una conversaci�n (Conversacion) y la fecha y hora actual (Fecha) del sistema.
% Meta Primaria: newSystem/8

newSystem(Name, InitialChatbotCodeLink, Chatbots, Users, UserLogin, Conversacion, Fecha, [Name, InitialChatbotCodeLink, Chatbots, Users, UserLogin, Conversacion, Fecha]).

% Selector.
% Predicado Nomreb: getSystemName.
% Dominio: System.
% Descripci�n: Obtiene el nombre del sistema.
% Meta Primaria: getSystemName/2

getSystemName([Name,_,_,_,_,_,_], Name).

% Selector.
% Predicado Nombre: getSystemInitialChatbotCodeLink
% Dominio System.
% Descripci�n: Obtiene el enlace al c�digo del chatbot inicial del sistema.
% Meta Primaria: getSystemInitialChatbotCodeLink/2

getSystemInitialChatbotCodeLink([_, InitialChatbotCodeLink,_,_,_,_,_], InitialChatbotCodeLink).

% Selector.
% Predicado Nombre: getSystemChatbots
% Dominio: System.
% Descripci�n: Obtiene la lista de chatbots en el sistema.
% Meta Primaria: getSystemChatbots/2

getSystemChatbots([_,_,Chatbots,_,_,_,_], Chatbots).

% Selector.
% Predicado Nombre: getSystemUsers
% Dominio: System.
% Descripci�n: Obtiene la lista de usuarios en el sistema.
% Meta Primaria: getSystemUsers/2

getSystemUsers([_,_,_, Users,_,_,_], Users).

% Selector.
% Predicado Nombre: getSystemUserLogin.
% Dominio:System.
% Descripci�n: Obtiene la informaci�n de inicio de sesi�n de usuario en el sistema.
% Meta Primaria: getSystemUserLogin/2

getSystemUserLogin([_,_,_,_,UserLogin,_,_], UserLogin).

% Selector.
% Predicado Nombre: getSystemConversacion.
% DominioSystem.
% Descripci�n: Obtiene la conversaci�n registrada en el sistema.
% Meta Primaria: getSystemConversacion/2

getSystemConversacion([_,_,_,_,_,Conversacion,_], Conversacion).

% Selector.
% Predicado Nombre: getSystemFecha
% Dominio: System.
% Descripci�n: Obtiene la fecha y hora actual registrada en el sistema.
% Meta Primaria: getSystemFecha/2

getSystemFecha([_,_,_,_,_,_,Fecha], Fecha).

% Modificador.
% Predicado Nombre: systemAddChatbot
% Dominio: System x Chatbot x NewSystem
% Descripci�n: Agrega un chatbot (Chatbot) al sistema (System) para obtener un nuevo sistema (NewSystem).
% Meta Primaria: systemAddChatbot/3
% Meta Secundaria:getSystemName/2, getSystemInitialChatbotCodeLink/2, getSystemChatbots/2, agregarElemento/3.

