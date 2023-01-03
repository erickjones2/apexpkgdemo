prompt --application/pages/page_00102
begin
wwv_flow_api.create_page(
 p_id=>102
,p_user_interface_id=>wwv_flow_api.id(2333082129878819730)
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_step_title=>'Feedback'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(2509088058952367312)
,p_step_template=>wwv_flow_api.id(1225652808464288287)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_comment=>'This page was generated by the feedback wizard'
,p_last_upd_yyyymmddhh24miss=>'20180111133935'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5497434876858365913)
,p_plug_name=>'Feedback'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(1225690169574288324)
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5497437891779365924)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(9594180850946618485)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1225705764797288347)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5497437693696365923)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9594180850946618485)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1225705764797288347)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5497435092354365916)
,p_name=>'P102_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5497434876858365913)
,p_prompt=>'Application:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'select application_id||''. ''||application_name d, application_id v from apex_applications where application_id = :P102_APPLICATION_ID'
,p_tag_attributes=>'class="fielddatabold"'
,p_field_template=>wwv_flow_api.id(1225704860700288343)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'Identifies Application.'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5497435588607365917)
,p_name=>'P102_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5497434876858365913)
,p_prompt=>'Page:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'select page_id||''. ''||page_name d, page_id v from apex_application_pages where page_id = :P102_PAGE_ID and application_id = :P102_APPLICATION_ID'
,p_tag_attributes=>'class="fielddatabold"'
,p_field_template=>wwv_flow_api.id(1225704860700288343)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'Identifies page within application.'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5497436293571365918)
,p_name=>'P102_FEEDBACK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(5497434876858365913)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(1225704860700288343)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'Enter your feedback and press the submit feedback button.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5497436975275365919)
,p_name=>'P102_FEEDBACK_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(5497434876858365913)
,p_prompt=>'Feedback Type'
,p_source=>'1'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select the_name, id from APEX_FEEDBACK_TYPES order by id'
,p_field_template=>wwv_flow_api.id(1225704860700288343)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'Please identify the type of feedback you are providing.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5497438090239365925)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit Feedback'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.submit_feedback (',
'    p_comment         => :P102_FEEDBACK,',
'    p_type            => :P102_FEEDBACK_TYPE,',
'    p_application_id  => :P102_APPLICATION_ID,',
'    p_page_id         => :P102_PAGE_ID,',
'    p_email           => null);'))
,p_process_when_button_id=>wwv_flow_api.id(5497437693696365923)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5497438291014365926)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Window'
);
end;
/
