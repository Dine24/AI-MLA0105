% Facts representing blog posts
post(1, 'My First Blog Post', 'This is my first blog post. Excited to share thoughts!').
post(2, 'Exploring Prolog', 'Learning Prolog is an interesting journey.').

% Facts representing comments on blog posts
comment(1, 'Great post!').
comment(1, 'Looking forward to more content.').
comment(2, 'Prolog is fascinating!').

% Rules to display posts and comments
display_post(PostID) :-
    post(PostID, Title, Content),
    format('Title: ~w~n', [Title]),
    format('Content: ~w~n', [Content]),
    display_comments(PostID),
    nl.

display_comments(PostID) :-
    comment(PostID, Comment),
    format('  Comment: ~w~n', [Comment]),
    fail. % Force backtracking to find more comments
