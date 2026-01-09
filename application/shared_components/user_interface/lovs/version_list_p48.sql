prompt --application/shared_components/user_interface/lovs/version_list_p48
begin
--   Manifest
--     VERSION LIST P48
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
 p_id=>wwv_flow_imp.id(10387749984261310759)
,p_lov_name=>'VERSION LIST P48'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.version_name d, v.id r',
'  from eba_bt_version v',
' where nvl(v.product_id, :P48_PRODUCT_ID) = :P48_PRODUCT_ID',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>16973710
);
wwv_flow_imp.component_end;
end;
/
