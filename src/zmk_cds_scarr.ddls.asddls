@AbapCatalog.sqlViewName: 'ZMK_CDS_VW_SCARR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Selektion Scarr Daten'
define view zmk_cds_scarr as select from scarr as a {
    key a.carrid,
        a.carrname,
        a.currcode,
        a.url
}
where a.currcode = 'EUR'
