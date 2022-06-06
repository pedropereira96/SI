flight(["Oporto"], ["Madrid"], ["250"], ["Summer"], ["economy"]).
flight(["Oporto"], ["Madrid"], ["500"], ["Summer"], ["executive"]).
flight(["Oporto"], ["Madrid"], ["250"], ["Spring"], ["economy"]).
flight(["Oporto"], ["Madrid"], ["500"], ["Spring"], ["executive"]).
flight(["Oporto"], ["Madrid"], ["250"], ["Winter"], ["economy"]).
flight(["Oporto"], ["Madrid"], ["500"], ["Winter"], ["executive"]).
flight(["Oporto"], ["Madrid"], ["250"], ["Autumn"], ["economy"]).
flight(["Oporto"], ["Madrid"], ["500"], ["Autumn"], ["executive"]).



% Sabe (From, To, Season )quando quer ir e quer saber os preços (Price, Class)

% Sabe (From, To ) quer saber (Season, price class)

% Sabe (From To ) tem limite para price e quer saber (Season e class)

% Sabe (From, To, Class e Season)  e quer saber o price

% Sabe (From, To, Class)  e quer saber o price e Season

% Sabe (From, To, Price, Class) e quer saber (Season)

% Sabe (From, To, Price, Season) e quer saber (Class)




find_from_to(F, T, Price, Season, Class) :-
    flight(From, To, Prices, Seasons, Classes),
    member(F, From),
    member(T, To).


find_(Season, Class, From, To) :-
    flight(From, To, _, Seasons, Classes),
    member(Season, Seasons),
    member(Class , Classes).



% movie('Titanic', ['Jack Dawson', 'Rose DeWitt Bukater'], 'James Cameron').
% movie('Hulk', ['Bruce Banner', 'Betty Ross'], 'Ang Lee').

% find_movie_by_character(Character, MovieName) :-
%    movie(MovieName, Characters, _),
%    member(Character, Characters).