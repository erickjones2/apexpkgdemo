prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_name=>'Rename Application'
,p_page_mode=>'MODAL'
,p_step_title=>'Rename Application'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(2506141354470818444)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3797358846252064904)
,p_help_text=>'<p>Use this to control the application name displayed on the top left of each page and on the login pages. By default, the application name is "Bug Tracker". The change will take effect immediately for the administrator making the change, but other u'
||'sers will only see the change when they get a new session (e.g. when they next login to the application).</p>'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2517314353478871425)
,p_plug_name=>'Rename Application'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--info:t-Alert--removeHeading:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(1225681960450288316)
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Set the application name displayed on the top left of each page and on the login pages. By default, the application name is "&APP_NAME.".</p>',
'<p>The change applies immediately. Other users see the change with a new session (for example, the next time they log into the application).</p>'))
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
 p_id=>wwv_flow_imp.id(2517315438025876460)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2517314353478871425)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1225705764797288347)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2517322728113883014)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2517314353478871425)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1225705764797288347)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2517323740023918574)
,p_branch_action=>'f?p=&APP_ID.:settings:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2517322728113883014)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153189605923885830)
,p_name=>'P26_APPLICATION_SUBTITLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2517314353478871425)
,p_prompt=>'Application Subtitle'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select preference_value',
'from eba_bt_preferences',
'where preference_name = ''APPLICATION_SUBTITLE''',
'union all',
'select ''Track and Manage Software Bugs''',
'from dual',
'where not exists ( select null',
'                   from eba_bt_preferences',
'                   where preference_name = ''APPLICATION_SUBTITLE'')'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(269497651921969761)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2517323058366894847)
,p_name=>'P26_APPLICATION_TITLE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2517314353478871425)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Application Name'
,p_source=>'nvl(:APPLICATION_TITLE, :APP_NAME)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(269497651921969761)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(314223468125918126)
,p_name=>'CNX'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2517315438025876460)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314223600072918127)
,p_event_id=>wwv_flow_imp.id(314223468125918126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2517323441320915207)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Application Title'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':APPLICATION_TITLE := :P26_APPLICATION_TITLE;',
'',
'merge into eba_bt_preferences dst',
'using ( select ''APPLICATION_TITLE'' preference_name, :P26_APPLICATION_TITLE preference_value from dual ) src',
'on ( dst.preference_name = src.preference_name )',
'when matched then',
'    update set dst.preference_value = src.preference_value',
'when not matched then',
'    insert ( preference_name, preference_value )',
'    values ( src.preference_name, src.preference_value );',
'',
'merge into eba_bt_preferences dst',
'using ( select ''APPLICATION_SUBTITLE'' preference_name, :P26_APPLICATION_SUBTITLE preference_value from dual ) src',
'on ( dst.preference_name = src.preference_name )',
'when matched then',
'    update set dst.preference_value = src.preference_value',
'when not matched then',
'    insert ( preference_name, preference_value )',
'    values ( src.preference_name, src.preference_value );'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2517322728113883014)
,p_process_success_message=>'Application renamed.'
,p_internal_uid=>2517323441320915207
);
wwv_flow_imp.component_end;
end;
/
