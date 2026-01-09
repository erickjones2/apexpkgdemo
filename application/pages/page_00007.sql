prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'Tag Cloud'
,p_step_title=>'Tag Cloud'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(2508162743716731820)
,p_step_template=>wwv_flow_imp.id(1225652808464288287)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'This page shows a chart of tags with click through to their references.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2710389833380924243)
,p_plug_name=>'Attachment Tags'
,p_plug_template=>wwv_flow_imp.id(1225690169574288324)
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    distinct tag as tag,',
'    count(*) as tag_count',
'from',
'    eba_bt_tags',
'where',
'    content_type = ''FILE''',
'group by',
'    tag'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TAG_CLOUD'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_no_data_found=>'No attachment tags found.'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'f?p=&APP_ID.:29:&APP_SESSION.:::RIR:IRC_TAGS:#TAG#',
  'attribute_03', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5604483467261755708)
,p_plug_name=>'Bug Tags'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(1225690169574288324)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag,',
'    count(*) as tag_count',
'from eba_bt_tags',
'where content_type = ''DEFECT''',
'group by tag',
'order by 2 desc, 1'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.HTML5_BAR_CHART'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'INITIALS',
  'attribute_02', 'TAG',
  'attribute_03', 'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP,RIR:IRC_TAGS:&TAG.',
  'attribute_04', 'TAG_COUNT',
  'attribute_05', 'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP,RIR:IRC_TAGS:&TAG.',
  'attribute_11', 'VALUE',
  'attribute_14', '1000',
  'attribute_15', 'TEXT',
  'attribute_16', 'ABSOLUTE',
  'attribute_17', 'MODERN',
  'attribute_18', 'ABOVE',
  'attribute_20', 'No bug tags found.')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(1415237824968068847)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_imp.component_end;
end;
/
