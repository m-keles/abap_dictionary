*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZMK_VIEW_PARTNER................................*
TABLES: ZMK_VIEW_PARTNER, *ZMK_VIEW_PARTNER. "view work areas
CONTROLS: TCTRL_ZMK_VIEW_PARTNER
TYPE TABLEVIEW USING SCREEN '0300'.
DATA: BEGIN OF STATUS_ZMK_VIEW_PARTNER. "state vector
          INCLUDE STRUCTURE VIMSTATUS.
DATA: END OF STATUS_ZMK_VIEW_PARTNER.
* Table for entries selected to show on screen
DATA: BEGIN OF ZMK_VIEW_PARTNER_EXTRACT OCCURS 0010.
INCLUDE STRUCTURE ZMK_VIEW_PARTNER.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZMK_VIEW_PARTNER_EXTRACT.
* Table for all entries loaded from database
DATA: BEGIN OF ZMK_VIEW_PARTNER_TOTAL OCCURS 0010.
INCLUDE STRUCTURE ZMK_VIEW_PARTNER.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZMK_VIEW_PARTNER_TOTAL.

*.........table declarations:.................................*
TABLES: SBUSPART                       .
TABLES: STRAVELAG                      .
