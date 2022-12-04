*&---------------------------------------------------------------------*
*& Report ZMK_KONVERTIERUNGSROUTINE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_konvertierungsroutine.

PARAMETERS pa_plz TYPE zmk_demo_de VALUE CHECK.
PARAMETERS pa_zeit TYPE s_fltime.

ADD 60 TO pa_zeit.

WRITE pa_zeit.
