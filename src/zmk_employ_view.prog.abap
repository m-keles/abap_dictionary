*&---------------------------------------------------------------------*
*& Report ZMK_EMPLOY_VIEW
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_employ_view.

DATA gs_view TYPE zmk_view_employ.

gs_view-carrier = 'AA'.
gs_view-emp_num = 2.
gs_view-department = 'PILOT'.
gs_view-first_name = 'Ali'.
gs_view-last_name = 'Demir'.

INSERT zmk_view_employ FROM gs_view.
IF sy-subrc = 0.
  MESSAGE 'Erfolgreich eingefugt' TYPE 'I'.
ELSE.
  MESSAGE 'Personalnummer existierte bereits' TYPE 'I'.
ENDIF.
