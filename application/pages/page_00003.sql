prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_name=>'Activity Calendar'
,p_step_title=>'Activity Calendar'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(2508162743716731820)
,p_step_template=>wwv_flow_imp.id(1225652808464288287)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3797424040496072790)
,p_help_text=>'This is a monthly calendar of application activity, reporting distinct users and their total page views by day. Click the <strong><</strong> button to go to the previous month and the <strong>></strong> button to go forward a month. Switch between th'
||'e calendar view to the list view by clicking the <strong>list</strong> button.'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2151220070351974037)
,p_plug_name=>'Activity Calendar'
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'lower(USERID) Userid,',
'lower(USERID) ||'' - ''|| trim(to_char(count(*),''999G999G999G990''))   Events,',
'trunc(time_stamp) the_day,',
'to_char(time_stamp,''YYYYMMDD'') yyyymmdd',
'from apex_activity_log l',
'where flow_id = :app_id and userid is not null and userid != ''nobody''',
'group by trunc(time_stamp), lower(USERID), to_char(time_stamp,''YYYYMMDD'')'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'display_column', 'EVENTS',
  'drag_and_drop', 'N',
  'event_sorting', 'AUTOMATIC',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'show_time', 'N',
  'show_tooltip', 'N',
  'show_weekend', 'Y',
  'start_date_column', 'THE_DAY',
  'view_edit_link', 'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:RP,70,RIR:IR_THE_USER,IR_YYYYMMDD,P70_TIMEFRAME:&USERID.,&YYYYMMDD.,14')).to_clob
);
wwv_flow_imp.component_end;
end;
/
