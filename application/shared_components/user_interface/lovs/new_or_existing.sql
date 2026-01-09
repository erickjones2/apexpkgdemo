prompt --application/shared_components/user_interface/lovs/new_or_existing
begin
--   Manifest
--     NEW OR EXISTING
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
 p_id=>wwv_flow_imp.id(16739400131217273)
,p_lov_name=>'NEW OR EXISTING'
,p_lov_query=>'.'||wwv_flow_imp.id(16739400131217273)||'.'
,p_location=>'STATIC'
,p_version_scn=>16973710
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(16739606891217275)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'New Product'
,p_lov_return_value=>'NEW'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(16739947212217277)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Existing Product'
,p_lov_return_value=>'EXISTING'
);
wwv_flow_imp.component_end;
end;
/
