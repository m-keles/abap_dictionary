*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZMK_PLVW_SPFLI..................................*
TABLES: ZMK_PLVW_SPFLI, *ZMK_PLVW_SPFLI. "view work areas
CONTROLS: TCTRL_ZMK_PLVW_SPFLI
TYPE TABLEVIEW USING SCREEN '0100'.
DATA: BEGIN OF STATUS_ZMK_PLVW_SPFLI. "state vector
          INCLUDE STRUCTURE VIMSTATUS.
DATA: END OF STATUS_ZMK_PLVW_SPFLI.
* Table for entries selected to show on screen
DATA: BEGIN OF ZMK_PLVW_SPFLI_EXTRACT OCCURS 0010.
INCLUDE STRUCTURE ZMK_PLVW_SPFLI.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZMK_PLVW_SPFLI_EXTRACT.
* Table for all entries loaded from database
DATA: BEGIN OF ZMK_PLVW_SPFLI_TOTAL OCCURS 0010.
INCLUDE STRUCTURE ZMK_PLVW_SPFLI.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZMK_PLVW_SPFLI_TOTAL.

*.........table declarations:.................................*
TABLES: SCARR                          .
TABLES: SPFLI                          .
