prompt --application/shared_components/user_interface/lovs/bugs_with_bug_number
begin
--   Manifest
--     BUGS WITH BUG NUMBER
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
 p_id=>wwv_flow_imp.id(4206201031445639091)
,p_lov_name=>'BUGS WITH BUG NUMBER'
,p_lov_query=>'select bug_number||''. ''||subject d , id from EBA_BT_SW_DEFECTS where id = :P62_ID'
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>16973710
);
wwv_flow_imp.component_end;
end;
/
