*&---------------------------------------------------------------------*
*& Report ZMK_LOKALE_DATENTYPEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_lokale_datentyp_person.

TYPES: tt_string TYPE STANDARD TABLE OF s_carr_id
       WITH NON-UNIQUE KEY table_line.

DATA gt_string TYPE tt_string.

APPEND 'Mehmet' TO gt_string.
APPEND 'Keles' TO gt_string.
APPEND 'Hoffman' TO gt_string.

TYPES: BEGIN OF ts_name,  "Expliziter Datentyp
         vorname  TYPE c LENGTH 20,
         nachname TYPE c LENGTH 20,
       END OF ts_name.

TYPES: BEGIN OF ts_ort,
         plz TYPE zmk_plz2,
         ort TYPE c LENGTH 50,
       END OF ts_ort.

TYPES: BEGIN OF ts_telefon,
         t_typ    TYPE c LENGTH 10,
         t_nummer TYPE c LENGTH 20,
       END OF ts_telefon.

TYPES tt_telefon TYPE STANDARD TABLE OF ts_telefon
      WITH NON-UNIQUE DEFAULT KEY.

TYPES: BEGIN OF ts_person,
         pers_nr          TYPE n LENGTH 5,
         re_name          TYPE ts_name,
         re_ort           TYPE ts_ort,
         fluggesellschaft TYPE scarr,
         it_telefon       TYPE tt_telefon,
         name             TYPE ts_name.
         INCLUDE TYPE ts_ort.
       TYPES:
              END OF ts_person.

DATA gs_person TYPE ts_person.
DATA gs_telefon TYPE ts_telefon.
DATA gt_personen TYPE TABLE OF ts_person.

gs_telefon-t_typ = 'Mobil'.
gs_telefon-t_nummer = '01252'.
*APPEND gs_telefon TO gs_person-it_telefon.
INSERT gs_telefon INTO TABLE gs_person-it_telefon.

gs_telefon-t_typ = 'Festnetz'.
gs_telefon-t_nummer = '8363627722'.
INSERT gs_telefon INTO TABLE gs_person-it_telefon.


gs_person-pers_nr = 1.
gs_person-plz = 87987.
gs_person-ort = 'Berlin'.
gs_person-name-vorname = 'Mehmet'.
gs_person-name-nachname = 'Keles'.
gs_person-re_ort-ort = 'Hamburg'.
gs_person-re_name-vorname = 'mehmet'.
gs_person-re_name-nachname = 'keles'.

INSERT gs_person INTO TABLE gt_personen.
INSERT gs_person INTO TABLE gt_personen.
INSERT gs_person INTO TABLE gt_personen.

*WRITE gs_person.
ULINE.
*WRITE / gs_person+25(20).
