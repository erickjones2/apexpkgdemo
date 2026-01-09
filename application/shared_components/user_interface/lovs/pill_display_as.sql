prompt --application/shared_components/user_interface/lovs/pill_display_as
begin
--   Manifest
--     PILL_DISPLAY_AS
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
 p_id=>wwv_flow_imp.id(1489586479860043362)
,p_lov_name=>'PILL_DISPLAY_AS'
,p_lov_query=>'.'||wwv_flow_imp.id(1489586479860043362)||'.'
,p_location=>'STATIC'
,p_version_scn=>16973710
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1489586730463043381)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cards View'
,p_lov_return_value=>'CARDS'
,p_lov_template=>'<span class="t-Icon fa fa-cards" title="#DISPLAY_VALUE#"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1489587179755043383)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Report View'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="t-Icon fa fa-table" title="#DISPLAY_VALUE#"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp.component_end;
end;
/
