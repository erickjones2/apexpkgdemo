prompt --application/shared_components/user_interface/lovs/notification_type
begin
--   Manifest
--     NOTIFICATION TYPE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>110000
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'NICE'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(4101619754166275156)
,p_lov_name=>'NOTIFICATION TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(4101619754166275156)||'.'
,p_location=>'STATIC'
,p_version_scn=>16973710
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4101620050448275160)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Warning'
,p_lov_return_value=>'YELLOW'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4101620253560275162)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Critical'
,p_lov_return_value=>'RED'
);
wwv_flow_imp.component_end;
end;
/
