*&---------------------------------------------------------------------*
*& Report ZMK_CREW_ROLE_CHECK
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_crew_role_check.
DATA gs_crew TYPE zmk_sflcrew.
DATA gv_max_role TYPE i.

SELECT * FROM zmk_sflcrew INTO gs_crew.
  IF strlen( gs_crew-role ) > gv_max_role.
    gv_max_role = strlen( gs_crew-role ).
  ENDIF.
ENDSELECT.
WRITE: 'Langste Role', gv_max_role.
