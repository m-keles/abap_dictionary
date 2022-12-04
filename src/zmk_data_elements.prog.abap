*&---------------------------------------------------------------------*
*& Report ZMK_DATA_ELEMENTS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_data_elements.

PARAMETERS: pa_fname TYPE zmk_firstname_de,
            pa_lname TYPE zmk_lastname_de,
            pa_activ TYPE zmk_assets_de,
            pa_liabs TYPE zmk_liabilities_de.

DATA gv_result TYPE zmk_assets_de.
DATA gv_string TYPE string.
"gv_string = pa_fname && ` ` && pa_lname.
CONCATENATE pa_fname pa_lname INTO gv_string SEPARATED BY space.

gv_result = pa_activ - pa_liabs.

WRITE: gv_string, "pa_lname,
       / 'Ergebnis'(erg), gv_result LEFT-JUSTIFIED.
