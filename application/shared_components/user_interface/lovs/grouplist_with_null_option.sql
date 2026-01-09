prompt --application/shared_components/user_interface/lovs/grouplist_with_null_option
begin
--   Manifest
--     GROUPLIST_WITH_NULL_OPTION
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
 p_id=>wwv_flow_imp.id(7140651456800022610)
,p_lov_name=>'GROUPLIST_WITH_NULL_OPTION'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d,r from (',
'select ''Not Assigned'' d, -9999 r from dual',
'union all',
'select d,r from (',
'select GROUP_NAME d,id r',
'from   eba_bt_Group where upper(is_active) = ''Y'' order by 1',
')',
')'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>16973710
);
wwv_flow_imp.component_end;
end;
/
