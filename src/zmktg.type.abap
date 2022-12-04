TYPE-POOL zmktg .

TYPES: zmktg_vorname TYPE c LENGTH 10,
       zmktg_nachname TYPE c LENGTH 10,

       BEGIN OF zmktg_komplex,
         vorname TYPE zmktg_vorname,
         nachname TYPE zmktg_nachname,
       END OF zmktg_komplex.
