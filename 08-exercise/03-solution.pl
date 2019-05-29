% Übung 08 - Programmierung TU Dresden
% Tutor: Claas de Boer
% Github: https://github.com/cdboer/programmierung-ss19

% Aufgabe 03A
edge(1, 1).
edge(1, 4).
edge(1, 2).
edge(3, 2).
edge(4, 3).

% Aufgabe 03B
path(U, U).
path(U, W) :- edge(U, V), path(V, W).

% Aufgabe 03C

%         ?- path(4, X).
% {X = 4} ?- .

%         ?- path(4, X).
%         ?- edge(4, W), path(W, X).
% {W = 3} ?- path(3, X).
% {X = 3} ?- .

%         ?- path(4, X).
%         ?- edge(4, W), path(W, X).
% {W = 3} ?- path(3, X).
%         ?- edge(3, U), path(U, X).
% {U = 2} ?- path(2, X).
% {X = 2} ?- .
