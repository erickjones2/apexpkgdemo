prompt --application/shared_components/navigation/tabs/parent
begin
--   Manifest
--     TOP LEVEL TABS: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>110000
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'NICE'
);
wwv_flow_imp_shared.create_toplevel_tab(
 p_id=>wwv_flow_imp.id(10536430298459749609)
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_HOME'
,p_tab_text=>'Home'
,p_tab_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_current_on_tabset=>'T_HOME'
);
wwv_flow_imp.component_end;
end;
/
