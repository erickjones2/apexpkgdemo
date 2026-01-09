prompt --application/pages/page_00039
begin
--   Manifest
--     PAGE: 00039
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>110000
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'NICE'
);
wwv_flow_imp_page.create_page(
 p_id=>39
,p_tab_set=>'TS2'
,p_name=>'Delete Group'
,p_step_title=>'Delete Group'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(2506141354470818444)
,p_step_template=>wwv_flow_imp.id(1225652808464288287)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3797358846252064904)
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10611054178886030025)
,p_plug_name=>'Delete Confirmation'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1225681960450288316)
,p_plug_display_sequence=>10
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10611054385888030028)
,p_button_sequence=>10
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1225705764797288347)
,p_button_image_alt=>'Cancel'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:39::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10611054603467030030)
,p_button_sequence=>20
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(1225705764797288347)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirm'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select 1 from eba_bt_user_group where GROUP_ID = :P39_ID',
'union',
'select 1 from EBA_BT_SW_DEFECTS where assigned_to_group_id = :P39_ID'))
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10611054794315030030)
,p_name=>'P39_GROUP_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10611054178886030025)
,p_use_cache_before_default=>'NO'
,p_source=>'&P39_GROUP_NAME.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>64
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_input=>'Y'
,p_restricted_characters=>'WEB_SAFE'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10611054995703030032)
,p_name=>'P39_DELETE_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10611054178886030025)
,p_use_cache_before_default=>'NO'
,p_source=>'You have requested the permanent deletion of Group &P39_GROUP_NAME., please confirm your delete request.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>64
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select 1 from eba_bt_user_group where GROUP_ID = :P39_ID',
'union',
'select 1 from EBA_BT_SW_DEFECTS where assigned_to_group_id = :P39_ID'))
,p_display_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_imp.id(1225704860700288343)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_input=>'Y'
,p_restricted_characters=>'WEB_SAFE'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'HTML_UNSAFE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10611055184602030033)
,p_name=>'P39_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10611054178886030025)
,p_use_cache_before_default=>'NO'
,p_source=>'&P39_ID.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap'
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10611055402061030033)
,p_name=>'P39_DELETE_ERROR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10611054178886030025)
,p_use_cache_before_default=>'NO'
,p_source=>'Unable to delete Group &P39_GROUP_NAME. dependent data exists.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>64
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select 1 from eba_bt_user_group where GROUP_ID = :P39_ID',
'union',
'select 1 from EBA_BT_SW_DEFECTS where assigned_to_group_id = :P39_ID ',
''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_imp.id(1225704860700288343)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_input=>'Y'
,p_restricted_characters=>'WEB_SAFE'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'HTML_UNSAFE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10611055587284030033)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Group'
,p_process_sql_clob=>'delete from eba_bt_Group where id = :p39_id ;'
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(10611054603467030030)
,p_process_success_message=>'Group Succesfully Deleted.'
,p_internal_uid=>10611055587284030033
);
wwv_flow_imp.component_end;
end;
/
