prompt --application/shared_components/user_interface/lovs/severity
begin
--   Manifest
--     SEVERITY
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
 p_id=>wwv_flow_imp.id(5505091288993552049)
,p_lov_name=>'SEVERITY'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select severity_name d, id r',
'from   EBA_BT_SEVERITY',
'order by nvl(sequence_number,99), severity_name'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>16973710
);
wwv_flow_imp.component_end;
end;
/
