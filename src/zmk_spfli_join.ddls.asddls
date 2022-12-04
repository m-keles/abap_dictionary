@AbapCatalog.sqlViewName: 'ZMK_CDS_SPFLI_JN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Join scarr mit Spfli'
define view zmk_spfli_join as 
select from scarr as a 
left outer join spfli as b
on a.carrid = b.carrid
{
    key a.carrid,
        a.carrname,
        a.currcode,
        b.connid,
        b.cityfrom,
        b.cityto,
        case b.fltype
        when 'X' then 'Frachtflug'
        else 'Linieflug'
        end as lang_text
}
