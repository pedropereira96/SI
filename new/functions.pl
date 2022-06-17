%to do - mudar price para string arredondado as centesima
%mudar data para este formato day(9, jun, 2017)
%por accomodations no prolog
%funções de price para as accomodations

flight("Washington D.C.", "America", "Buenos Aires", "America", day(21, jul, 2022), "17:00", "First Class", "661,44").
flight("Washington D.C.", "America", "Buenos Aires", "America", day(23, jul, 2022), "17:00", "Economy", "354,00").
flight("Washington D.C.", "America", "Buenos Aires", "America", day(20, jul, 2022), "17:00", "Executive", "437,98").
flight("Washington D.C.", "America", "Buenos Aires", "America", day(22, jul, 2022), "17:00", "First Class", "495,44").

flight_price_greater(From, To, Day, Hour, Class, P) :-
    flight(From, _, To, _, Day, Hour, Class, Price),
    P @< Price.

flight_price_lower(From, To, Day, Hour, Class, P) :-
    flight(From, _, To, _, Day, Hour, Class, Price),
    P @> Price.

flight_price_between(From, To, Day, Hour, Class, P1, P2) :-
    flight(From, _, To, _, Day, Hour, Class, Price),
    P1 @< Price,
    Price @< P2.

season("Buenos Aires", summer, day(21, dec, 2022), day(20, mar, 2022)).
season("Buenos Aires", winter, day(21, jun, 2022), day(22, set, 2022)).
season("Buenos Aires", autumn, day(21, mar, 2022), day(20, jun, 2022)).
season("Buenos Aires", spring, day(21, set, 2022), day(20, dec, 2022)).

find_season(To, Date, Season) :-
    season(To, Season, Start, End),
    Start @< Date,
    Date @< End.


attraction("Buenos Aires", "Spring", "Mountains", "Quebrada de Las Conchas", "12").
attraction("Buenos Aires", "Summer", "River", "Cataratas do Igua�u", "20").
attraction("Buenos Aires", "Spring", "River", "Cataratas do Igua�u", "18").
attraction("Buenos Aires", "Summer", "Beach", "Mar del Plata", "10").
attraction("Camberra", "Summer", "Theatre", "Sydney Opera House", "20").
attraction("Camberra", "Autumn", "Theatre", "Sydney Opera House", "20").
attraction("Camberra", "Winter", "Theatre", "Sydney Opera House", "20").
attraction("Camberra", "Spring", "Theatre", "Sydney Opera House", "20").
attraction("Camberra", "Summer", "Zoo", "Lone Pine Koala Sanctuary", "15").

attraction_price_greater(Destiny, Season, Type, Name, P) :-
    attraction(Destiny, Season, Type, Name, Price),
    P @< Price.

attraction_price_lower(Destiny, Season, Type, Name, P) :-
    attraction(Destiny, Season, Type, Name, Price),
    P @> Price.

attraction_price_between(Destiny, Season, Type, Name, P1, P2) :-
    attraction(Destiny, Season, Type, Name, Price),
    P1 @< Price,
    Price @< P2.


attraction_type("Nature", "Mountains").
attraction_type("Nature", "River").
attraction_type("Nature", "Beach").
attraction_type("Fun", "Theatre").
attraction_type("Nature", "Zoo").
attraction_type("City", "City Park").
attraction_type("Fun", "Cableway").

%get_attractions_given_type(Destiny, Season, AttractionType, Attraction, Name, Price) :-
%    attraction_type(AttractionType, Attraction),
%    attraction(Destiny, Season, Attraction, Name, Price).

%get_attractions_from_type(Type, City, AttractionType, Name, Price) :-
%    attraction_type(Type, AttractionType) ->
%        attraction(City, _, AttractionType, Name, Price) : "No attractions".
