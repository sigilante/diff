|%
++  linebreak
  |=  =tape
  ^-  wall
  =/  lines  *wall
  |-  ^-  wall
  =/  idx  (find "\0a" tape)
  ?~  idx  (snoc lines tape)
  $(lines (snoc lines (scag (need idx) tape)), tape (slag +((need idx)) tape))
++  lcs
  ::  bit of a joke:  X-tudo is a cheeseburger w/ everything in Brazil
  |=  [xtudo=wall ytudo=wall]
  ^-  wall
  ::  if no lines left, return
  ?~  xtudo   *wall
  ?~  ytudo   *wall
  ::  final result
  =/  lcs  *wall
  ::|-  ^-  wall
  =/  xhead=tape   -:(scag 1 `wall`xtudo)
  =/  yhead=tape   -:(scag 1 `wall`ytudo)
  =/  xtail=wall   (slag 1 `wall`xtudo)
  =/  ytail=wall   (slag 1 `wall`ytudo)
  ?:  =(xhead yhead)
    (weld ~[xhead] $(xtudo xtail, ytudo ytail))
  =/  xhead-ytail  $(ytudo ytail)
  =/  yhead-xtail  $(xtudo xtail)
  ?:  (gth (lent xhead-ytail) (lent yhead-xtail))
    xhead-ytail
  yhead-xtail
--

