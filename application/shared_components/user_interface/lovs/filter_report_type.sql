prompt --application/shared_components/user_interface/lovs/filter_report_type
begin
--   Manifest
--     FILTER REPORT TYPE
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
 p_id=>wwv_flow_imp.id(1341998686573791771)
,p_lov_name=>'FILTER REPORT TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(1341998686573791771)||'.'
,p_location=>'STATIC'
,p_version_scn=>16973710
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1341999522877791785)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'By Bug'
,p_lov_return_value=>'BUG'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1351232168773761624)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'By Date Filed'
,p_lov_return_value=>'DATE'
);
wwv_flow_imp.component_end;
end;
/
