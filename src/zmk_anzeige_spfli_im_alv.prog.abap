*&---------------------------------------------------------------------*
*& Report ZMK_ANZEIGE_SPFLI_IM_ALV
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_anzeige_spfli_im_alv.

DATA gt_spfli TYPE TABLE OF spfli.
DATA go_alv TYPE zmk_demo2_de.


SELECT * FROM spfli INTO TABLE gt_spfli.

CALL METHOD cl_salv_table=>factory
  IMPORTING
    r_salv_table = go_alv
  CHANGING
    t_table      = gt_spfli.

CALL METHOD go_alv->display.
