prompt --application/shared_components/user_interface/lovs/categorylist
begin
--   Manifest
--     CATEGORYLIST
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
 p_id=>wwv_flow_imp.id(9940853386271352623)
,p_lov_name=>'CATEGORYLIST'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select category_name d, id r',
'from   eba_bt_category c',
'where PARENT_ID is null and ',
'       upper(IS_ACTIVE) = ''Y'' and',
'       (:PRODUCT_ID = 0 or exists (select 1 from eba_bt_sw_defects d where d.category_id = c.id))',
'order by 1 '))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>16973710
);
wwv_flow_imp.component_end;
end;
/
