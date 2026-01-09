prompt --application/shared_components/navigation/lists/activity_reports
begin
--   Manifest
--     LIST: Activity Reports
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
 p_id=>wwv_flow_imp.id(5601670387999098991)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
,p_version_scn=>16973703
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2755492438541570594)
,p_list_item_display_sequence=>4
,p_list_item_link_text=>'Application Activity'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tachometer'
,p_list_text_01=>'Monthly calendar of application activity reporting distinct users and total page views by day.  Available to contributors.'
,p_list_text_02=>'calendarIcon'
,p_security_scheme=>wwv_flow_imp.id(3797424040496072790)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5601759883476996395)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Application Pages Views'
,p_list_item_link_target=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-tachometer'
,p_list_text_01=>'Interactive report of each application page view.  Available to contributors.'
,p_list_text_02=>'reportIcon'
,p_security_scheme=>wwv_flow_imp.id(3797424040496072790)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5601760190749998512)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'View page view activity summarized by user.  Available to contributors.'
,p_list_text_02=>'reportIcon'
,p_security_scheme=>wwv_flow_imp.id(3797424040496072790)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4526718736436260953)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Activity Calendar by User by Day'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'View a monthly calendar of page views with page view counts summarized by user by day.  Available to contributors.'
,p_list_text_02=>'calendarIcon'
,p_security_scheme=>wwv_flow_imp.id(3797424040496072790)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
