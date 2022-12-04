@AbapCatalog.sqlViewName: 'ZMK_CDS_VW_SFLT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Sflight parameter'
define view zmk_cds_sflight 
with parameters p_carrid:abap.char( 3 )
as 
select from sflight as s 
{
    key s.carrid,
    key s.connid,
    key s.fldate,
        s.planetype,
        s.seatsocc,
        s.seatsmax
}
where carrid = $parameters.p_carrid
