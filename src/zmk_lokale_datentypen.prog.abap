*&---------------------------------------------------------------------*
*& Report ZMK_LOKALE_DATENTYPEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_lokale_datentypen.

TYPES: BEGIN OF ts_name,  "Expliziter Datentyp
         vorname  TYPE c LENGTH 20,
         nachname TYPE c LENGTH 20,
       END OF ts_name.

*DATA: BEGIN OF gs_name,  "Implizite Datentyp
*        vorname TYPE c LENGTH 20,
*        nachname TYPE c LENGTH 20,
*      END OF gs_name.

DATA gs_name TYPE ts_name.
gs_name-vorname = 'Mehmet'.
gs_name-nachname = 'Keles'.

PERFORM ausgabe USING gs_name.

FORM ausgabe USING VALUE(p_name) TYPE ts_name.  "like gs_name
  WRITE gs_name.
  WRITE: / gs_name-vorname NO-GAP,
           gs_name-nachname.
ENDFORM.
