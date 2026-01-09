prompt --application/shared_components/navigation/lists/bug_synchronization_options
begin
--   Manifest
--     LIST: Bug Synchronization Options
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
 p_id=>wwv_flow_imp.id(33553281271525098)
,p_name=>'Bug Synchronization Options'
,p_list_status=>'PUBLIC'
,p_version_scn=>16973699
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33553485566525098)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Add New Product'
,p_list_item_link_target=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:RP,63:::'
,p_list_item_icon=>'fa-plus'
,p_list_text_01=>'Add a new product to be tracked'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33553926351525099)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Refresh Existing Product(s)'
,p_list_item_link_target=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.:RP,81:::'
,p_list_item_icon=>'fa-refresh'
,p_list_text_01=>'Incremental update of an existing product'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33554274442525099)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'View Sync Logs'
,p_list_item_link_target=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-eye'
,p_list_text_01=>'View previous refresh timings, errors, and counts.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
