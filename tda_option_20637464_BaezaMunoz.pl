% Constructor de option
option(Code, Message, ChatbotCodeLink, InitialFlowCodeLink, Keyword, [Code, Message, ChatbotCodeLink, InitialFlowCodeLink, Keyword]).

% Selector para obtener el código de una opción
getCode([Code|_], Code).
