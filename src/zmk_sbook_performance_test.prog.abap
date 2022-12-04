*&---------------------------------------------------------------------*
*& Report ZMK_SBOOK_PERFORMANCE_TEST
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_sbook_performance_test.
*SELECT * FROM sbook INTO @DATA(gs_sbook).
*  INSERT ZMKSBOOK_COL FROM gs_sbook.
*  INSERT ZMKSBOOK_ROW FROM gs_sbook.
*ENDSELECT.
*WRITE: 'Ende', sy-dbcnt.

DATA gt_sbook TYPE TABLE OF sbook.
GET RUN TIME FIELD DATA(gv_time).

DATA gv_summe_loc TYPE p DECIMALS 2.
DATA gs_sbook TYPE sbook.
SELECT carrid loccuram FROM zmksbook_col INTO CORRESPONDING FIELDS OF gs_sbook
  WHERE carrid = 'AA'
  ORDER BY loccuram DESCENDING.
*  MESSAGE 'Daten gelesen' TYPE 'I'.
  gv_summe_loc = gv_summe_loc + gs_sbook-loccuram.
ENDSELECT.

*SORT gt_sbook BY loccuram DESCENDING.
*LOOP AT gt_sbook INTO gs_sbook.
*  gv_summe_loc = gv_summe_loc + gs_sbook-loccuram.
*ENDLOOP.

GET RUN TIME FIELD gv_time.
WRITE: 'Summe', gv_summe_loc, gv_time.
