*&---------------------------------------------------------------------*
*& Report ZMK_DEMO_VIEW_VERWENDUNG
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_demo_view_verwendung.

DATA gs_view TYPE zmk_demo_view.

SELECT * FROM zmk_demo_view
  INTO gs_view.

ENDSELECT.
