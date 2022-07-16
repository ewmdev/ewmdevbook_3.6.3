class ZCL_IM_WRKC_UI definition
  public
  final
  create public .

public section.

  interfaces /SCWM/IF_EX_WRKC_UI_TREE_CNTRL .
  interfaces IF_BADI_INTERFACE .
protected section.
private section.
ENDCLASS.



CLASS ZCL_IM_WRKC_UI IMPLEMENTATION.


  METHOD /scwm/if_ex_wrkc_ui_tree_cntrl~change_tree_line.

    BREAK-POINT ID zewmdevbook_363.

    IF  cs_line-guid_type = '07' "product line
    AND cs_line-cat(1)    = 'Q'. "stock type
      cs_line-icon_node = icon_yellow_light.
    ENDIF.
    IF  cs_line-guid_type = '06' "hu line
    AND cs_line-copst IS NOT INITIAL. "hu completed
      cs_line-icon_node = icon_wf_replace_workitem.
    ENDIF.

  ENDMETHOD.
ENDCLASS.
