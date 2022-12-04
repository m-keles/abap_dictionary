*&---------------------------------------------------------------------*
*& Report ZMK_SUCHHILFEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZMK_SUCHHILFEN.

*PARAMETERS pa_name TYPE zmk_tab_namen-first_name value check LOWER CASE.
*
*write pa_name.

*PARAMETERS pa_car TYPE zmk_depment-carrier.
*PARAMETERS pa_abt1 TYPE zmk_dephead.
*PARAMETERS pa_vert1 TYPE zmk_depment-dephead.
*PARAMETERS pa_vert2 TYPE zmk_depment-vertreter.



PARAMETERS: pa_car TYPE zmk_depment-carrier DEFAULT 'AA',
            pa_dep2 TYPE zmk_depment-department DEFAULT 'LMAM' VALUE CHECK.
            "pa_spra TYPE zmk_depmentt-language.
WRITE: pa_car, pa_dep2.

*PARAMETERS: pa_1 TYPE scarr-carrid VALUE CHECK,
*            pa_2 TYPE spfli-carrid VALUE CHECK.
*
*WRITE: pa_1, pa_2.
