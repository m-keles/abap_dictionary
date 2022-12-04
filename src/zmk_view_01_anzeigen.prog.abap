*&---------------------------------------------------------------------*
*& Report ZMK_VIEW_01_ANZEIGEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_view_01_anzeigen.

DATA gs_view TYPE zmk_view_01.

SELECT * FROM zmk_view_01 INTO gs_view
  WHERE carrid = 'LH' AND
        fldate BETWEEN '20220601' AND '20220901'.
  WRITE: / gs_view-carrid,
           gs_view-zmk_carrname,
           gs_view-connid,
           gs_view-cityfrom,
           gs_view-cityto,
           gs_view-fldate,
           gs_view-planetype,
           gs_view-seatsmax,
           gs_view-seatsocc.

ENDSELECT.
