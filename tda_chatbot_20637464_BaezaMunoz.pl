chatbot(ChatbotID, Name, WelcomeMessage, StartFlowID, Flows, [ChatbotID, Name, WelcomeMessage, StartFlowID, NewFlows]):-
    verificarIdRepetidos(Flows, [], NewFlows).
