prompt --application/pages/page_00044
begin
--   Manifest
--     PAGE: 00044
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
 p_id=>44
,p_name=>'Reports'
,p_step_title=>'Reports'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(2508162743716731820)
,p_step_template=>wwv_flow_imp.id(1225652808464288287)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'This page provides access to a set of "Bug Analysis Reports" and "Activity Reports". The Bug Analysis Reports detail relationships between bugs, enhancements, their currently assigned statuses, and owners. The Activity Reports detail user activity in'
||' the application. '
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5601670564928101733)
,p_plug_name=>'Activity Reports'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-MediaList--cols t-MediaList--2cols'
,p_plug_template=>wwv_flow_imp.id(1225690169574288324)
,p_plug_display_sequence=>30
,p_location=>null
,p_list_id=>wwv_flow_imp.id(5601670387999098991)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(1225701339428288338)
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6332840509829805779)
,p_plug_name=>'Bug Analysis Reports'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-MediaList--cols t-MediaList--2cols'
,p_plug_template=>wwv_flow_imp.id(1225690169574288324)
,p_plug_display_sequence=>20
,p_location=>null
,p_list_id=>wwv_flow_imp.id(6332843892290810451)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(1225701339428288338)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(84459733149821403)
,p_button_sequence=>10
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(1225705056775288345)
,p_button_image_alt=>'New'
,p_icon_css_classes=>'fa-signing'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(1415236170469036778)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_imp.component_end;
end;
/
