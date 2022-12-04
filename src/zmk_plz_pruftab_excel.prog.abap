*&---------------------------------------------------------------------*
*& Report ZMK_FIRST_NAME_PRUFTAB
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_plz_pruftab_excel.
DATA gt_filetable TYPE filetable.
DATA gv_zahl_files TYPE i.
DATA gt_namen TYPE TABLE OF alsmex_tabline.
DATA gs_name TYPE alsmex_tabline.
DATA gs_tab_plz TYPE zmk_tab_plz.

CALL METHOD cl_gui_frontend_services=>file_open_dialog
  CHANGING
    file_table              = gt_filetable
    rc                      = gv_zahl_files
*   user_action             =
*   file_encoding           =
  EXCEPTIONS
    file_open_dialog_failed = 1
    cntl_error              = 2
    error_no_gui            = 3
    not_supported_by_gui    = 4.

IF sy-subrc <> 0.
  MESSAGE 'Daten Problem' TYPE 'I'.
  RETURN.
ENDIF.

DATA gv_filename TYPE rlgrap-filename.
"gv_filename = gt_filetable[ 1 ].
READ TABLE gt_filetable INTO gv_filename INDEX 1.
data gv_datenname type string.
gv_datenname = gv_filename.
DATA gt_daten TYPE TABLE OF string.

CALL FUNCTION 'GUI_UPLOAD'
  EXPORTING
    filename = gv_datenname
  TABLES
    data_tab = gt_daten
  .
BREAK-POINT.
