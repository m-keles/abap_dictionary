*&---------------------------------------------------------------------*
*& Report ZMK_SPFLI_PUFFER
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_spfli_puffer.
PARAMETERS: pa_car TYPE spfli-carrid,
            pa_con TYPE  spfli-connid.

DATA gs_spfli TYPE spfli.
SELECT SINGLE * FROM spfli INTO gs_spfli BYPASSING BUFFER
  WHERE carrid = pa_car
    AND connid = pa_con.

WRITE: 'Das Programm hat funktioniert'.
