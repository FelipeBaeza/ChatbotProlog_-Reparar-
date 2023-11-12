% Constructor.
% Predicado Nombre: user
% Dominio: NameUser.
% Descripción: Crea un usuario con un nombre de usuario dado.
% Meta Primaria: user/2.

user(NameUser,NameUser).

% Selector.
% Predicado Nombre: getUser.
% Dominio: Lista x Name.
% Descripcion: Consigue el name del usuario.
% Meta Primera: getUser/2.

getUser([Name,_], Name).
