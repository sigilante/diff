/+  *test, *lcs
|%
++  test-single-line
  ;:  weld
  %+  expect-eq
    !>  `wall`~["Hello"]
    !>  (lcs (linebreak "Hello") (linebreak "Hello\0aMars!"))
  %+  expect-eq
    !>  `wall`~["Hello"]
    !>  (lcs (linebreak "Hello\0aMars!") (linebreak "Hello"))
  %+  expect-eq
    !>  `wall`~["Mars!"]
    !>  (lcs (linebreak "Hello\0aMars!") (linebreak "Mars!"))
  ==
++  test-double-lines
  ;:  weld
  %+  expect-eq
    !>  `wall`~["Hello"]
    !>  (lcs (linebreak "Hello\0aMars!") (linebreak "Hello\0aworld!"))
  %+  expect-eq
    !>  `wall`~["Mars!"]
    !>  (lcs (linebreak "Hello\0aMars!") (linebreak "Hola\0aMars!"))
  ==
++  test-many-lines
  ;:  weld
  %+  expect-eq
    !>  `wall`~["" "Welcome" "Hello"]
    !>  (lcs (linebreak "Hello\0aMars!\0aWelcome\0ahome.\0a\0a") (linebreak "Hello\0aworld!\0aWelcome\0aback.\0a"))
  %+  expect-eq
    !>  `wall`~["Welcome" "Hello"]
    !>  (lcs (linebreak "Hello\0aMars!\0aWelcome\0ahome.") (linebreak "Hello\0aworld!\0aWelcome\0aback."))
  ==
++  test-hanging-newline
  ;:  weld
  %+  expect-eq
    !>  `wall`~["Hello"]
    !>  (lcs (linebreak "Hello") (linebreak "Hello\0a"))
  ==
++  test-leading-newline
  ;:  weld
  %+  expect-eq
    !>  `wall`~["Hello"]
    !>  (lcs (linebreak "\0aHello") (linebreak "Hello"))
  ==
--
