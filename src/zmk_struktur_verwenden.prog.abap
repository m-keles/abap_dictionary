*&---------------------------------------------------------------------*
*& Report ZMK_STRUKTUR_VERWENDEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_struktur_verwenden.

PARAMETERS pa_vn TYPE zmk_name_str-vorname.
PARAMETERS pa_nn TYPE zmk_name_str-nachname.
PARAMETERS pa_geb TYPE zmk_name_str-geb_dat.
PARAMETERS pa_vn2 TYPE zmk_person_str-vorname.

DATA gt_namen TYPE zmk_tt_name.
DATA gs_namen LIKE LINE OF gt_namen.

gs_namen-vorname = 'Mehmet'.
INSERT gs_namen INTO TABLE gt_namen.

gs_namen-vorname = 'Jonas'.
INSERT gs_namen INTO TABLE gt_namen.

"SORT gt_namen BY nachname DESCENDING vorname ASCENDING.

DATA gs_name TYPE zmk_name_str.
DATA gs_person TYPE zmk_person_str.

gs_person-vorname = 'Mehmet'.
gs_person-vater-nachname = 'Keles'.
*gs_person-carrid = 'AA'.
*gs_person-scarr-carrid = 'LH'.
