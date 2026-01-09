prompt --application/shared_components/logic/application_computations/app_not_assigned_text
begin
--   Manifest
--     APPLICATION COMPUTATION: APP_NOT_ASSIGNED_TEXT
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
 p_id=>wwv_flow_imp.id(6366566396742550188)
,p_computation_sequence=>20
,p_computation_item=>'APP_NOT_ASSIGNED_TEXT'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'htmldb_lang.message(''APP_NOT_ASSIGNED_TEXT'');'
,p_version_scn=>16973710
);
wwv_flow_imp.component_end;
end;
/
