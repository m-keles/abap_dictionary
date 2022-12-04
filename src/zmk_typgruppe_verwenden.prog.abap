*&---------------------------------------------------------------------*
*& Report ZMK_TYPGRUPPE_VERWENDEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_typgruppe_verwenden.
TYPE-POOLS: abap.
WRITE abap_true.

WRITE / zmk_cl_beispiel=>pi.

DATA gs_name TYPE zmktg_komplex.

BREAK-POINT.
