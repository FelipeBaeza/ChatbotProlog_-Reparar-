% Constructor de option
option(Code, Message, ChatbotCodeLink, InitialFlowCodeLink, Keyword, [Code, Message, ChatbotCodeLink, InitialFlowCodeLink, Keyword]).

% Selector para obtener el c�digo de una opci�n
getCode([Code|_], Code).
