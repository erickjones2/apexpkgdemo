prompt --application/shared_components/user_interface/lovs/choose_fix_by_version_based_on_product_id
begin
--   Manifest
--     CHOOSE FIX BY VERSION BASED ON PRODUCT ID
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
 p_id=>wwv_flow_imp.id(1414198702318847113)
,p_lov_name=>'CHOOSE FIX BY VERSION BASED ON PRODUCT ID'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select version_name, id',
'from eba_bt_version v',
'where :PRODUCT_ID = 0 or (product_id = :PRODUCT_ID and exists (select 1 from eba_bt_sw_defects x where x.fix_by_version_id = v.id))',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>16973710
);
wwv_flow_imp.component_end;
end;
/
