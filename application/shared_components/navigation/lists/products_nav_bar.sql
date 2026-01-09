prompt --application/shared_components/navigation/lists/products_nav_bar
begin
--   Manifest
--     LIST: Products Nav Bar
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>110000
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'NICE'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(71624332676408263)
,p_name=>'Products Nav Bar'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT null, ',
'       PRODUCT_NAME label, ',
'       null target, ',
'       ''YES'' is_current, ',
'       null image, ',
'       null image_attrib, ',
'       PRODUCT_NAME image_alt',
'FROM  eba_bt_product ',
'WHERE upper(IS_ACTIVE) = ''Y'' ',
'ORDER BY 1'))
,p_list_status=>'PUBLIC'
,p_version_scn=>16973700
);
wwv_flow_imp.component_end;
end;
/
