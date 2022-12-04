*&---------------------------------------------------------------------*
*& Report ZMK_VIEW_01_ANZEIGEN_OO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_outer_join_anzeigen.

DATA go_alv TYPE REF TO cl_salv_table.
DATA go_functions TYPE REF TO cl_salv_functions.
"DATA gt_daten TYPE TABLE OF zmk_view_01.
"DATA gs_daten TYPE zmk_view_01.

*TYPES: BEGIN OF ts_daten,
*         carrid   TYPE scarr-carrid,
*         connid   TYPE spfli-connid,
*         carrname TYPE scarr-carrname,
*         cityfrom TYPE spfli-cityfrom,
*         cityto   TYPE spfli-cityto,
*         fldate   TYPE sflight-fldate,
*         seatsmax TYPE sflight-seatsmax,
*         seatsocc TYPE sflight-seatsocc,
*       END OF ts_daten.

*DATA gt_daten TYPE TABLE OF ts_daten.
*DATA gs_daten TYPE ts_daten.

SELECT a~carrid, b~connid, carrname, cityfrom, cityto
  FROM scarr AS a LEFT OUTER JOIN spfli AS b
  ON a~carrid = b~carrid
  INTO TABLE @DATA(gt_daten).
"AND countryfr = spfli~countryto.



CALL METHOD cl_salv_table=>factory
  IMPORTING
    r_salv_table = go_alv
  CHANGING
    t_table      = gt_daten.

CALL METHOD go_alv->get_functions RECEIVING value = go_functions.
CALL METHOD go_functions->set_all.
CALL METHOD go_alv->display.
