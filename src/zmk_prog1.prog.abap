*&---------------------------------------------------------------------*
*& Report ZMK_PROG1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_prog1.

DATA go_alv TYPE REF TO cl_salv_table.
DATA go_alv2 TYPE zmk_demo2_de.

PARAMETERS pa_car TYPE spfli-carrid MEMORY ID car.
PARAMETERS pa_kdn TYPE kna1-kunnr.
