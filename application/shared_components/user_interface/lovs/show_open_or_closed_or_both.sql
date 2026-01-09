prompt --application/shared_components/user_interface/lovs/show_open_or_closed_or_both
begin
--   Manifest
--     SHOW OPEN OR CLOSED OR BOTH
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
 p_id=>wwv_flow_imp.id(1342752977689698528)
,p_lov_name=>'SHOW OPEN OR CLOSED OR BOTH'
,p_lov_query=>'.'||wwv_flow_imp.id(1342752977689698528)||'.'
,p_location=>'STATIC'
,p_version_scn=>16973710
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1342753133058698536)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'- All -'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1342753454598698540)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'OPEN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1342753810356698540)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'CLOSED'
);
wwv_flow_imp.component_end;
end;
/
