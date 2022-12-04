*&---------------------------------------------------------------------*
*& Report ZMK_PERF_TEST_EMPLOY
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMK_PERF_TEST_EMPLOY.
DATA gs_employ TYPE zmk_employ.
DATA gv_time TYPE i.

GET RUN TIME FIELD gv_time.
SELECT * FROM zmk_employ INTO gs_employ
  WHERE last_name = 'WHITE' AND
        first_name = 'MARK'.

ENDSELECT.
GET RUN TIME FIELD gv_time.
IF sy-subrc = 0.
  WRITE: 'gefunden', sy-dbcnt.
ELSE.
  WRITE 'nicht existent'.
ENDIF.
ULINE.
WRITE: 'Zugriffsdauer in Mikrosekunden:', gv_time.
