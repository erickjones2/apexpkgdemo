prompt --application/shared_components/logic/application_computations/product_id
begin
--   Manifest
--     APPLICATION COMPUTATION: PRODUCT_ID
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
 p_id=>wwv_flow_imp.id(1409043494509720804)
,p_computation_sequence=>50
,p_computation_item=>'PRODUCT_ID'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'0'
,p_version_scn=>16973710
);
wwv_flow_imp.component_end;
end;
/
