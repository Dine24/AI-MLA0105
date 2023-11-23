% Facts
location(chicago, illinois).
location(new_york, new_york).
location(london, england).
location(paris, france).

stays(john, chicago).
stays(mary, new_york).
stays(jane, london).
stays(bob, paris).

% Rules for displaying information
display_persons_state_city :-
    write('List of persons, state, and city:'), nl,
    stays(Person, City),
    location(City, State),
    write(Person), write(' stays in '), write(City), write(', '), write(State), nl,
    fail. % backtrack to find more solutions

display_person_state(Person) :-
    stays(Person, City),
    location(City, State),
    write(Person), write(' stays in '), write(State), nl.
