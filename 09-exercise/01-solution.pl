% Übung 09 - Programmierung TU Dresden
% Tutor: Claas de Boer
% Github: https://github.com/cdboer/programmierung-ss19

nat(0).
nat(s(X)) :- nat(X).
sum(0, Y, Y) :- nat(Y).
sum(s(X), Y, s(S)) :- sum(X, Y, S).

% Aufgabe 01A
lt(0, s(M)) :- nat(M).
lt(s(N), s(M)) :- lt(N, M).

div(0, M, 0) :- lt(0, M).
div(N, M, 0) :- lt(N, M).
div(N, M, s(Q)) :- lt(0, M), sum(M, V, N), div(V, M, Q).
