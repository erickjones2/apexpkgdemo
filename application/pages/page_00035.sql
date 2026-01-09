prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_tab_set=>'TS2'
,p_name=>'Delete Bug'
,p_step_title=>'Delete Bug'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(2506141455855818868)
,p_step_template=>wwv_flow_imp.id(1225652808464288287)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3797424040496072790)
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10578599879655778570)
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
 p_id=>wwv_flow_imp.id(10578604704242785706)
,p_button_sequence=>10
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1225705764797288347)
,p_button_image_alt=>'Cancel'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10578608784980789577)
,p_button_sequence=>10
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(1225705764797288347)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirm'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'return trim(:P35_PROBLEM_ID) is null ;'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10578604891850785712)
,p_branch_action=>'f?p=&APP_ID.:&P1_LAST_PAGE_VISITED.:&SESSION.::&DEBUG.:2:P35_PROBLEM_ID:,&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(10578608784980789577)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10578614483034798514)
,p_name=>'P35_DELETE_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10578599879655778570)
,p_use_cache_before_default=>'NO'
,p_source=>'You have requested the permanent deletion of bug &P35_PROBLEM_ID., please confirm your delete request.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>64
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(10578774278308081002)
,p_name=>'P35_PROBLEM_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10578599879655778570)
,p_use_cache_before_default=>'NO'
,p_source=>'&P35_PROBLEM_ID.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap'
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10578798183895111024)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Bug'
,p_process_sql_clob=>'delete from EBA_BT_SW_DEFECTS where id = :P35_PROBLEM_ID;'
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(10578608784980789577)
,p_process_success_message=>'Bug Succesfully Deleted.'
,p_internal_uid=>10578798183895111024
);
wwv_flow_imp.component_end;
end;
/
