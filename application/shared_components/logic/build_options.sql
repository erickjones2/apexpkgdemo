prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>110000
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'NICE'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(16725495374012530)
,p_build_option_name=>'Synchronize from Master System'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>16973731
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'Allows for custom synchronization between a master bug system.  Use this only if you code a EBA_BT_BUG_REFRESH procedure.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(1065271160137186238)
,p_build_option_name=>'Show users pending approval'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>16973731
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'On the home page of this application a region exists to notify administrative users that new users need to be provided ACL entry.  '
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(2725981753149490323)
,p_build_option_name=>'Content Completeness Widget'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>16973731
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This build option controls whether the "Content Completeness" plugin region is displayed on the Bug details page or not.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(2725982031583500250)
,p_build_option_name=>'Validations Widget'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>16973731
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'This build option controls whether the "Validations" plugin region is displayed on the Bug details page or not.'
);
wwv_flow_imp.component_end;
end;
/
