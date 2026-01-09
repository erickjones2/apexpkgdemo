prompt --application/shared_components/navigation/lists/preferences
begin
--   Manifest
--     LIST: Preferences
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>110000
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'NICE'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(4396777236055608339)
,p_name=>'Preferences'
,p_list_status=>'PUBLIC'
,p_version_scn=>16973703
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4396777446424608340)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Time Zone'
,p_list_item_link_target=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-globe'
,p_list_text_01=>'Set time zone for the current user.'
,p_list_text_02=>'switchIcon'
,p_list_text_03=>'&TZ.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
