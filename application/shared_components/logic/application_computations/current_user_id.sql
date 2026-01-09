prompt --application/shared_components/logic/application_computations/current_user_id
begin
--   Manifest
--     APPLICATION COMPUTATION: CURRENT_USER_ID
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
 p_id=>wwv_flow_imp.id(982310815819503982)
,p_computation_sequence=>40
,p_computation_item=>'CURRENT_USER_ID'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'select id from eba_bt_users where upper(username) = upper(:APP_USER)'
,p_computation_error_message=>'User ID not found.'
,p_version_scn=>16973710
);
wwv_flow_imp.component_end;
end;
/
