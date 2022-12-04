*&---------------------------------------------------------------------*
*& Report ZMK_FIRST_NAME_PRUFTAB
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_first_name_pruftab_excel.
DATA gt_filetable TYPE filetable.
DATA gv_zahl_files TYPE i.
DATA gt_namen TYPE TABLE OF alsmex_tabline.
DATA gs_name TYPE alsmex_tabline.
DATA gs_tab_name TYPE zmk_tab_namen.

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

CALL FUNCTION 'ALSM_EXCEL_TO_INTERNAL_TABLE'
  EXPORTING
    filename                = gv_filename
    i_begin_col             = 1
    i_begin_row             = 2
    i_end_col               = 1
    i_end_row               = 5194
  TABLES
    intern                  = gt_namen
  EXCEPTIONS
    inconsistent_parameters = 1
    upload_ole              = 2
    OTHERS                  = 3.
IF sy-subrc <> 0.
  MESSAGE 'Fehler Excel' TYPE 'I'.
  RETURN.
ENDIF.

LOOP AT gt_namen ASSIGNING FIELD-SYMBOL(<fs_name>).
  IF to_upper( val = <fs_name>-value ) CN sy-abcde.
    DELETE gt_namen.
  ELSE.
    gs_tab_name = <fs_name>-value.
    INSERT zmk_tab_namen FROM gs_tab_name.
  ENDIF.
ENDLOOP.

WRITE: 'Die Daten wurden erfolgreich in der Tabelle gespeichert.', lines( gt_namen ).
