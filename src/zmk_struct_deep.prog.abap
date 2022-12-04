*&---------------------------------------------------------------------*
*& Report ZMK_STRUCT_DEEP
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_struct_deep.
DATA gs_person TYPE zmk_person2_str.
DATA gt_person LIKE TABLE OF gs_person.
DATA gs_phone LIKE LINE OF gs_person-phone.

gs_phone-p_type = 'M'.
gs_phone-p_number = '04333'.
INSERT gs_phone INTO TABLE gs_person-phone.

gs_phone-p_type = 'F'.
gs_phone-p_number = '83743483'.
INSERT gs_phone INTO TABLE gs_person-phone.

INSERT gs_person INTO TABLE gt_person.
INSERT gs_person INTO TABLE gt_person.
INSERT gs_person INTO TABLE gt_person.


LOOP AT gt_person INTO gs_person.
  LOOP AT gs_person-phone INTO gs_phone.
    WRITE: / gs_phone.
  ENDLOOP.
ENDLOOP.
