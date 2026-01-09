prompt --application/shared_components/navigation/lists/bug_actions
begin
--   Manifest
--     LIST: Bug Actions
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
 p_id=>wwv_flow_imp.id(1233762771935660927)
,p_name=>'Bug Actions'
,p_list_status=>'PUBLIC'
,p_version_scn=>16973703
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1233762945303660928)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Add Update'
,p_list_item_link_target=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:64:P64_BUG_ID:&P31_ID.:'
,p_list_item_icon=>'fa-comment'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1233763258163660930)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Add Link'
,p_list_item_link_target=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:73:P73_BUG_ID:&P31_ID.:'
,p_list_item_icon=>'fa-external-link-square'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1233763531239660930)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Add Attachment'
,p_list_item_link_target=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:73:P69_BUG_ID:&P31_ID.:'
,p_list_item_icon=>'fa-paperclip'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1350186860883078177)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Permalink'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::P31_ID:&P31_ID.:'
,p_list_item_icon=>'fa-link'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/
