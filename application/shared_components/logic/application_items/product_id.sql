prompt --application/shared_components/logic/application_items/product_id
begin
--   Manifest
--     APPLICATION ITEM: PRODUCT_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>110000
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'NICE'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(1350140021588806143)
,p_name=>'PRODUCT_ID'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_version_scn=>16973710
);
wwv_flow_imp.component_end;
end;
/
