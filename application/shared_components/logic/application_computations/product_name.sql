prompt --application/shared_components/logic/application_computations/product_name
begin
--   Manifest
--     APPLICATION COMPUTATION: PRODUCT_NAME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>110000
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'NICE'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(1064003956671340391)
,p_computation_sequence=>60
,p_computation_item=>'PRODUCT_NAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select product_name',
'from EBA_BT_PRODUCT',
'where id = :PRODUCT_ID',
'union all',
'select ''All Product''',
'from dual',
'where nvl(:PRODUCT_ID,0) = 0 '))
,p_version_scn=>16973710
);
wwv_flow_imp.component_end;
end;
/
