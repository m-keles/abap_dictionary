*&---------------------------------------------------------------------*
*& Report ZMK_VIEW_01_ANZEIGEN_OO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_view_01_anzeigen_oo.

DATA go_alv TYPE REF TO cl_salv_table.
DATA go_functions TYPE REF TO cl_salv_functions.
DATA gt_daten TYPE TABLE OF zmk_view_01.
DATA gs_daten TYPE zmk_view_01.

SELECT-OPTIONS so_fld FOR gs_daten-fldate.
SELECT * FROM zmk_view_01 INTO TABLE gt_daten
  WHERE fldate IN so_fld.


CALL METHOD cl_salv_table=>factory
  IMPORTING
    r_salv_table = go_alv
  CHANGING
    t_table      = gt_daten.

CALL METHOD go_alv->get_functions RECEIVING value = go_functions.
CALL METHOD go_functions->set_all.
CALL METHOD go_alv->display.
