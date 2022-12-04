*&---------------------------------------------------------------------*
*& Report zmk_cds_sfli_para
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmk_cds_sfli_para.

DATA: go_alv TYPE REF TO cl_salv_table,
      go_functions TYPE REF TO cl_salv_functions.
PARAMETERS pa_car TYPE sflight-carrid DEFAULT 'AA'.

select * from ZMK_CDS_VW_SFLT( p_carrid = @pa_car )
into table @data(gt_sflight).

cl_salv_table=>factory(
    IMPORTING r_salv_table = go_alv
    CHANGING t_table = gt_sflight ).

go_functions = go_alv->get_functions(  ).
go_functions->set_all(  ).
go_alv->display(  ).
