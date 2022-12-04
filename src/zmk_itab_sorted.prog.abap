*&---------------------------------------------------------------------*
*& Report ZMK_ITAB_SORTED
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_itab_sorted.

PARAMETERS pa_car TYPE sflight-carrid.

DATA gs_sflight TYPE sflight.
DATA gt_sflight TYPE zmk_tt_sflight.

SELECT * FROM sflight INTO gs_sflight UP TO 40 ROWS
  WHERE carrid = pa_car.
  PERFORM ausgabe USING gs_sflight.
ENDSELECT.

ULINE.
WRITE 'Flugdatum sortierte'.
ULINE.

SELECT * FROM sflight INTO TABLE gt_sflight UP TO 40 ROWS
  WHERE carrid = pa_car.

LOOP AT gt_sflight INTO gs_sflight.
  PERFORM ausgabe USING gs_sflight.
ENDLOOP.

FORM ausgabe USING ps_sflight TYPE sflight.
  WRITE: / ps_sflight-carrid,
           ps_sflight-connid,
           ps_sflight-fldate,
           ps_sflight-price,
           ps_sflight-currency,
           ps_sflight-planetype,
           ps_sflight-seatsmax,
           ps_sflight-seatsocc.

ENDFORM.
