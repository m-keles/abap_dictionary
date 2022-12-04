*&---------------------------------------------------------------------*
*& Report ZMK_TABELLENTYP_IN_STRUKTUR
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_tabellentyp_in_struktur.

DATA gs_person TYPE zmk_person_str.
DATA gs_kind LIKE LINE OF gs_person-it_kinder.

gs_person-vorname = 'Mehmet'.
gs_person-nachname = 'Keles'.

gs_kind-vorname = 'Akif Mikdat'.
gs_kind-nachname = 'Keles'.
gs_kind-geb_dat = '20220829'.

INSERT gs_kind INTO TABLE gs_person-it_kinder.
CLEAR gs_kind.
WRITE: gs_person-vorname, gs_person-nachname.

LOOP AT gs_person-it_kinder  INTO gs_kind.
  WRITE: /15 gs_kind-vorname.
ENDLOOP.
