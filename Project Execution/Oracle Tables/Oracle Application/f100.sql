prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.10.04'
,p_release=>'19.2.0.00.18'
,p_default_workspace_id=>1500460128411031
,p_default_application_id=>100
,p_default_id_offset=>1850434745801276
,p_default_owner=>'HR'
);
end;
/
 
prompt APPLICATION 100 - The Clechuderfax E-chain
--
-- Application Export:
--   Application:     100
--   Name:            The Clechuderfax E-chain
--   Date and Time:   13:10 Thursday June 18, 2020
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     17
--       Items:                    4
--       Processes:                8
--       Regions:                 29
--       Buttons:                  3
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              1
--       Security:
--         Authentication:         2
--         Authorization:          3
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                 9
--           Region:              16
--           Label:                7
--           List:                12
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              11
--         LOVs:                   1
--         Shortcuts:              1
--         Plug-ins:               1
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         19.2.0.00.18
--   Instance ID:     200126421291540
--

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'HR')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'The Clechuderfax E-chain')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'100')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'6D68325DAA4236D6B4878668BE4CCDB843B64BA06B3F7D00D08B94B298CA471E'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2020.06.13.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(7706817840119406)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'The Clechuderfax E-chain'
,p_app_builder_icon_name=>'app-icon.svg'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'The Clechuderfax E-chain'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200618123803'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(7552960589089322)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7699646961089685)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dashboard'
,p_security_scheme=>wwv_flow_api.id(11785667326401796)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11689980636191200)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Shops and Products'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cart-edit'
,p_security_scheme=>wwv_flow_api.id(11785667326401796)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11703502602248011)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Stock Report'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-th-list'
,p_security_scheme=>wwv_flow_api.id(11785667326401796)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11722660147466028)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Weekly Report'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_security_scheme=>wwv_flow_api.id(11785667326401796)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5,6'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11754230838181170)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Admin Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dashboard'
,p_security_scheme=>wwv_flow_api.id(7707276549124833)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'50'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11764525791199097)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Shops and Products'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cart-edit'
,p_security_scheme=>wwv_flow_api.id(7707276549124833)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'51'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11774714955216221)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Stock Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_security_scheme=>wwv_flow_api.id(7707276549124833)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'52'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12163700180253372)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Daily Report'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_security_scheme=>wwv_flow_api.id(7707276549124833)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'54'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3728324048156301)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Weekly Finance Report'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_security_scheme=>wwv_flow_api.id(11785667326401796)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3737611478181183)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Monthly Finance Report'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_security_scheme=>wwv_flow_api.id(11785667326401796)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6817576752549557)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Daily Report'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_security_scheme=>wwv_flow_api.id(11785667326401796)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6829081472570730)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Weekly Finance Report'
,p_list_item_link_target=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_security_scheme=>wwv_flow_api.id(7707276549124833)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'55'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6836305645590789)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Monthly Finance Report'
,p_list_item_link_target=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_security_scheme=>wwv_flow_api.id(7707276549124833)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'56'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(7689359949089472)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7703199936089756)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_api.id(7691796462089567)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7703670708089757)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10011:&SESSION.::&DEBUG.::P10011_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_api.id(7703199936089756)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_api.id(7691796462089567)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7704121724089758)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(7703199936089756)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7704476564089759)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'About Page'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.:10010'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_api.id(7703199936089756)
,p_required_patch=>wwv_flow_api.id(7691796462089567)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7704799086089760)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7705268502089760)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(7704799086089760)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7705681787089761)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(7704799086089760)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B222076696577426F783D223020302036342036';
wwv_flow_api.g_varchar2_table(2) := '34223E3C646566733E3C7374796C653E2E636C732D317B66696C6C3A75726C282372616469616C2D6772616469656E74293B7D2E636C732D327B6F7061636974793A302E313B7D2E636C732D332C2E636C732D347B66696C6C3A236666663B7D2E636C73';
wwv_flow_api.g_varchar2_table(3) := '2D337B6F7061636974793A302E363B7D3C2F7374796C653E3C72616469616C4772616469656E742069643D2272616469616C2D6772616469656E74222063783D223332222063793D222E30352220723D22363422206772616469656E74556E6974733D22';
wwv_flow_api.g_varchar2_table(4) := '7573657253706163654F6E557365223E3C73746F70206F66667365743D2230222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D22302E3135222F3E3C73746F70206F66667365743D222E35222073746F702D636F6C6F72';
wwv_flow_api.g_varchar2_table(5) := '3D2223666666222073746F702D6F7061636974793D22302E31222F3E3C73746F70206F66667365743D2231222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D2230222F3E3C2F72616469616C4772616469656E743E3C73';
wwv_flow_api.g_varchar2_table(6) := '796D626F6C2069643D22616D6269656E742D6C69676874696E67222076696577426F783D22302030203634203634223E3C7061746820636C6173733D22636C732D312220643D224D302030683634763634682D36347A222F3E3C2F73796D626F6C3E3C2F';
wwv_flow_api.g_varchar2_table(7) := '646566733E3C7469746C653E6261722D6C696E652D63686172743C2F7469746C653E3C726563742077696474683D22363422206865696768743D223634222066696C6C3D2223333039464442222F3E3C672069643D2269636F6E73223E3C706174682063';
wwv_flow_api.g_varchar2_table(8) := '6C6173733D22636C732D322220643D224D313920343668357631682D357A4D323620343668357631682D357A4D333320343668357631682D357A4D343020343668357631682D357A222F3E3C7061746820636C6173733D22636C732D332220643D224D31';
wwv_flow_api.g_varchar2_table(9) := '3920333868357638682D357A4D32362033326835763134682D357A4D33332033326835763134682D357A4D34302032376835763139682D357A222F3E3C6720636C6173733D22636C732D32223E3C636972636C652063783D2234322E35222063793D2232';
wwv_flow_api.g_varchar2_table(10) := '302E352220723D22312E35222F3E3C636972636C652063783D2233352E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D2232382E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D22';
wwv_flow_api.g_varchar2_table(11) := '32312E35222063793D2233312E352220723D22312E35222F3E3C7061746820643D224D32312E3832352033312E3837396C2D2E36352D2E37353820372E31342D362E31323168372E3032356C362E3836392D342E3930372E3538322E3831342D372E3133';
wwv_flow_api.g_varchar2_table(12) := '3120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C636972636C6520636C6173733D22636C732D34222063783D2234322E35222063793D2231392E352220723D22312E35222F3E3C636972636C6520636C6173733D22';
wwv_flow_api.g_varchar2_table(13) := '636C732D34222063783D2233352E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C6173733D22636C732D34222063783D2232382E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C617373';
wwv_flow_api.g_varchar2_table(14) := '3D22636C732D34222063783D2232312E35222063793D2233302E352220723D22312E35222F3E3C7061746820636C6173733D22636C732D342220643D224D32312E3832352033302E3837396C2D2E36352D2E37353820372E31342D362E31323168372E30';
wwv_flow_api.g_varchar2_table(15) := '32356C362E3836392D342E3930372E3538322E3831342D372E31333120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C7573652077696474683D22363422206865696768743D2236342220786C696E6B3A687265663D';
wwv_flow_api.g_varchar2_table(16) := '2223616D6269656E742D6C69676874696E67222069643D226C69676874696E67222F3E3C2F7376673E';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(7690674742089563)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20233330394644423B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(7690941885089567)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(7550131389089313)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(7550420940089313)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(7550734486089314)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(7550989429089314)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(7551251910089315)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(7551577570089315)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(7551929960089315)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(7692388963089574)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/authorize_admins
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(7707276549124833)
,p_name=>'Authorize Admins'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT USERS.USER_ID FROM USERS, ADMINS',
'WHERE USERS.USER_ID = ADMINS.USER_ID',
'AND UPPER(EMAIL) = v(''APP_USER'');'))
,p_error_message=>'Login Not Authorized'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/trader_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(11785667326401796)
,p_name=>'Trader_rights'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT USERS.USER_ID FROM USERS, TRADERS',
'WHERE USERS.USER_ID = TRADERS.USER_ID',
'AND UPPER(EMAIL) = v(''APP_USER'');'))
,p_error_message=>'Not an authorized Trader '
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(7695034492089641)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(7695034492089641)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(7695416422089644)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(7692935099089580)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(7552530738089318)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7552644912089320)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7553282075089328)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7553584681089335)
,p_page_template_id=>wwv_flow_api.id(7553282075089328)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7553890309089335)
,p_page_template_id=>wwv_flow_api.id(7553282075089328)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7554197651089335)
,p_page_template_id=>wwv_flow_api.id(7553282075089328)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7554485943089335)
,p_page_template_id=>wwv_flow_api.id(7553282075089328)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7554753291089335)
,p_page_template_id=>wwv_flow_api.id(7553282075089328)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7555093622089336)
,p_page_template_id=>wwv_flow_api.id(7553282075089328)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7555375109089336)
,p_page_template_id=>wwv_flow_api.id(7553282075089328)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7555692727089337)
,p_page_template_id=>wwv_flow_api.id(7553282075089328)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7556061730089341)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7556425864089341)
,p_page_template_id=>wwv_flow_api.id(7556061730089341)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7556713012089342)
,p_page_template_id=>wwv_flow_api.id(7556061730089341)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7556975903089342)
,p_page_template_id=>wwv_flow_api.id(7556061730089341)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7557254238089342)
,p_page_template_id=>wwv_flow_api.id(7556061730089341)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7557560244089342)
,p_page_template_id=>wwv_flow_api.id(7556061730089341)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7557869251089343)
,p_page_template_id=>wwv_flow_api.id(7556061730089341)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7558187422089343)
,p_page_template_id=>wwv_flow_api.id(7556061730089341)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7558473146089344)
,p_page_template_id=>wwv_flow_api.id(7556061730089341)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7558741122089344)
,p_page_template_id=>wwv_flow_api.id(7556061730089341)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7559185844089344)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-container">',
'  <header class="t-Login-containerHeader">#REGION_POSITION_01#</header>',
'  <main class="t-Login-containerBody" id="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</main>',
'  <footer class="t-Login-containerFooter">#REGION_POSITION_02#</footer>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7559467086089344)
,p_page_template_id=>wwv_flow_api.id(7559185844089344)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7559831036089344)
,p_page_template_id=>wwv_flow_api.id(7559185844089344)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7560078848089344)
,p_page_template_id=>wwv_flow_api.id(7559185844089344)
,p_name=>'Body Footer'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7561487081089347)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7561785637089348)
,p_page_template_id=>wwv_flow_api.id(7561487081089347)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7562128292089348)
,p_page_template_id=>wwv_flow_api.id(7561487081089347)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7562383235089348)
,p_page_template_id=>wwv_flow_api.id(7561487081089347)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7562655989089348)
,p_page_template_id=>wwv_flow_api.id(7561487081089347)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7562971363089348)
,p_page_template_id=>wwv_flow_api.id(7561487081089347)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7563273247089348)
,p_page_template_id=>wwv_flow_api.id(7561487081089347)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7563534953089348)
,p_page_template_id=>wwv_flow_api.id(7561487081089347)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7563875066089348)
,p_page_template_id=>wwv_flow_api.id(7561487081089347)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7564212774089348)
,p_page_template_id=>wwv_flow_api.id(7561487081089347)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7564576325089349)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7564891677089350)
,p_page_template_id=>wwv_flow_api.id(7564576325089349)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7565142286089351)
,p_page_template_id=>wwv_flow_api.id(7564576325089349)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7565487193089351)
,p_page_template_id=>wwv_flow_api.id(7564576325089349)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7565803228089351)
,p_page_template_id=>wwv_flow_api.id(7564576325089349)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7566096845089351)
,p_page_template_id=>wwv_flow_api.id(7564576325089349)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7566359803089351)
,p_page_template_id=>wwv_flow_api.id(7564576325089349)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7566725651089352)
,p_page_template_id=>wwv_flow_api.id(7564576325089349)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7567116145089352)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7567346424089352)
,p_page_template_id=>wwv_flow_api.id(7567116145089352)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7567704264089352)
,p_page_template_id=>wwv_flow_api.id(7567116145089352)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7567996412089352)
,p_page_template_id=>wwv_flow_api.id(7567116145089352)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7568540312089353)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7568926670089354)
,p_page_template_id=>wwv_flow_api.id(7568540312089353)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7569222644089354)
,p_page_template_id=>wwv_flow_api.id(7568540312089353)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7569479090089354)
,p_page_template_id=>wwv_flow_api.id(7568540312089353)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7569782272089354)
,p_page_template_id=>wwv_flow_api.id(7568540312089353)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7570057304089354)
,p_page_template_id=>wwv_flow_api.id(7568540312089353)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7570397838089354)
,p_page_template_id=>wwv_flow_api.id(7568540312089353)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7570640406089354)
,p_page_template_id=>wwv_flow_api.id(7568540312089353)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7571002272089354)
,p_page_template_id=>wwv_flow_api.id(7568540312089353)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7571420506089355)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7571719050089355)
,p_page_template_id=>wwv_flow_api.id(7571420506089355)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7572030463089355)
,p_page_template_id=>wwv_flow_api.id(7571420506089355)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7572294374089355)
,p_page_template_id=>wwv_flow_api.id(7571420506089355)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7572597466089355)
,p_page_template_id=>wwv_flow_api.id(7571420506089355)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7572919425089355)
,p_page_template_id=>wwv_flow_api.id(7571420506089355)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7573136982089355)
,p_page_template_id=>wwv_flow_api.id(7571420506089355)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7573531725089355)
,p_page_template_id=>wwv_flow_api.id(7571420506089355)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7573887998089356)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7574218681089357)
,p_page_template_id=>wwv_flow_api.id(7573887998089356)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7574490813089357)
,p_page_template_id=>wwv_flow_api.id(7573887998089356)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(7574745864089357)
,p_page_template_id=>wwv_flow_api.id(7573887998089356)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(7666489802089439)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(7667199488089441)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(7667266437089441)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7575387507089358)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7575701007089361)
,p_plug_template_id=>wwv_flow_api.id(7575387507089358)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7579103564089364)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7579243774089364)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7579598575089365)
,p_plug_template_id=>wwv_flow_api.id(7579243774089364)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7579875953089365)
,p_plug_template_id=>wwv_flow_api.id(7579243774089364)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7580087012089365)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7580406315089365)
,p_plug_template_id=>wwv_flow_api.id(7580087012089365)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7580733105089365)
,p_plug_template_id=>wwv_flow_api.id(7580087012089365)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7582280213089366)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7582548942089368)
,p_plug_template_id=>wwv_flow_api.id(7582280213089366)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7582924637089368)
,p_plug_template_id=>wwv_flow_api.id(7582280213089366)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7589522820089374)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls"><button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7589750499089374)
,p_plug_template_id=>wwv_flow_api.id(7589522820089374)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7590097857089374)
,p_plug_template_id=>wwv_flow_api.id(7589522820089374)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7594887794089377)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h1 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7596858465089378)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7597220171089378)
,p_plug_template_id=>wwv_flow_api.id(7596858465089378)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7598939156089381)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7599299028089381)
,p_plug_template_id=>wwv_flow_api.id(7598939156089381)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7601297008089382)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7601617035089382)
,p_plug_template_id=>wwv_flow_api.id(7601297008089382)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7604600202089384)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7605227699089384)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">#BODY#</div>',
'  <div class="t-Login-buttons">#NEXT#</div>',
'  <div class="t-Login-links">#EDIT##CREATE#</div>',
'  <div class="t-Login-subRegions">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7605502041089384)
,p_plug_template_id=>wwv_flow_api.id(7605227699089384)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7606516196089385)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7606827048089385)
,p_plug_template_id=>wwv_flow_api.id(7606516196089385)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7607108860089385)
,p_plug_template_id=>wwv_flow_api.id(7606516196089385)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7613254844089391)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7613554716089392)
,p_plug_template_id=>wwv_flow_api.id(7613254844089391)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7613889065089392)
,p_plug_template_id=>wwv_flow_api.id(7613254844089391)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7615864779089394)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7616887314089395)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(7617188103089395)
,p_plug_template_id=>wwv_flow_api.id(7616887314089395)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7642166101089417)
,p_list_template_current=>'<li class="t-NavTabs-item #A03# is-active" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class'
||'="t-NavTabs-badge #A05#">#A02#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-NavTabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class="t-NavTab'
||'s-badge #A05#">#A02#</span></a></li>'
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7643801268089419)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></'
||'div></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>',
''))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7645234100089421)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7646368102089422)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7650373998089425)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7653343109089427)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_preset_template_options=>'js-navCollapsed--default:t-TreeNav--styleA'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7654975153089428)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("#t_MenuNav", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="t_MenuNav"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7656190812089430)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7656602120089431)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7661988420089434)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7663583206089434)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide"), iconType: ''fa'', callout: e.hasClass("js-menu-callout")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7664186846089435)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7618188392089397)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7618357924089398)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
' <span class="t-BadgeList-wrap u-color">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
' </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7622404972089400)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7627755248089405)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body">',
'        <div class="t-Comments-info">',
'            #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/content_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7629007464089407)
,p_row_template_name=>'Content Row'
,p_internal_name=>'CONTENT_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-ContentRow-item #ITEM_CLASSES#">',
'  <div class="t-ContentRow-wrap">',
'    <div class="t-ContentRow-selection">#SELECTION#</div>',
'    <div class="t-ContentRow-iconWrap">',
'      <span class="t-ContentRow-icon #ICON_CLASS#">#ICON_HTML#</span>',
'    </div>',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        <h3 class="t-ContentRow-title">#TITLE#</h3>',
'        <div class="t-ContentRow-description">#DESCRIPTION#</div>',
'      </div>',
'      <div class="t-ContentRow-misc">#MISC#</div>',
'      <div class="t-ContentRow-actions">#ACTIONS#</div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-ContentRow #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'#PAGINATION#'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1797843454948280151
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7632147745089408)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_condition1=>':LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <div class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7635200276089410)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7635362664089411)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(7635362664089411)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7638008223089412)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7638416095089413)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7640424844089414)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7665823249089435)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7665902639089437)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7665979990089438)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7666132170089438)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7666138695089438)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7666304862089438)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7666416935089438)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(7668607951089442)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(7668803185089447)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(7668722600089444)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(7669962711089455)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(7571420506089355)
,p_default_dialog_template=>wwv_flow_api.id(7567116145089352)
,p_error_template=>wwv_flow_api.id(7559185844089344)
,p_printer_friendly_template=>wwv_flow_api.id(7571420506089355)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(7559185844089344)
,p_default_button_template=>wwv_flow_api.id(7667199488089441)
,p_default_region_template=>wwv_flow_api.id(7606516196089385)
,p_default_chart_template=>wwv_flow_api.id(7606516196089385)
,p_default_form_template=>wwv_flow_api.id(7606516196089385)
,p_default_reportr_template=>wwv_flow_api.id(7606516196089385)
,p_default_tabform_template=>wwv_flow_api.id(7606516196089385)
,p_default_wizard_template=>wwv_flow_api.id(7606516196089385)
,p_default_menur_template=>wwv_flow_api.id(7615864779089394)
,p_default_listr_template=>wwv_flow_api.id(7606516196089385)
,p_default_irr_template=>wwv_flow_api.id(7604600202089384)
,p_default_report_template=>wwv_flow_api.id(7635362664089411)
,p_default_label_template=>wwv_flow_api.id(7666132170089438)
,p_default_menu_template=>wwv_flow_api.id(7668607951089442)
,p_default_calendar_template=>wwv_flow_api.id(7668722600089444)
,p_default_list_template=>wwv_flow_api.id(7664186846089435)
,p_default_nav_list_template=>wwv_flow_api.id(7654975153089428)
,p_default_top_nav_list_temp=>wwv_flow_api.id(7654975153089428)
,p_default_side_nav_list_temp=>wwv_flow_api.id(7653343109089427)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(7580087012089365)
,p_default_dialogr_template=>wwv_flow_api.id(7579103564089364)
,p_default_option_label=>wwv_flow_api.id(7666132170089438)
,p_default_required_label=>wwv_flow_api.id(7666416935089438)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(7656190812089430)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.4/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(7668953259089449)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(7669172595089450)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(7669353597089450)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(7669603850089450)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(7669751080089450)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7560346274089345)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND'
,p_display_name=>'Page Background'
,p_display_sequence=>20
,p_template_types=>'PAGE'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7561184462089347)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT'
,p_display_name=>'Page Layout'
,p_display_sequence=>10
,p_template_types=>'PAGE'
,p_null_text=>'Floating (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7576179145089363)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7576553465089363)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7577214803089363)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7577556244089363)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7581021536089365)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7581353411089365)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7583216948089368)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7583940318089370)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7585139066089370)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7586381688089372)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7586810522089372)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7588769591089373)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7592229803089375)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7592579605089375)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7593336323089375)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7595410355089378)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7596205181089378)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7597529453089379)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7598084945089380)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7599978199089381)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7601842749089382)
,p_theme_id=>42
,p_name=>'CALLOUT_POSITION'
,p_display_name=>'Callout Position'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Determines where the callout for the popup will be positioned relative to its parent.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7605795030089384)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER'
,p_display_name=>'Login Header'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the Login region header.'
,p_null_text=>'Icon and Title (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7614225362089393)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7614616398089394)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7615348247089394)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7617445378089395)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7618718662089398)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7619114963089398)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7621037494089399)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7622836752089401)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7624720972089401)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7625436388089401)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7626857939089402)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7628118824089405)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7629327766089407)
,p_theme_id=>42
,p_name=>'COL_ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>150
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7629645804089407)
,p_theme_id=>42
,p_name=>'CONTENT_ALIGNMENT'
,p_display_name=>'Content Alignment'
,p_display_sequence=>90
,p_template_types=>'REPORT'
,p_null_text=>'Center (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7630086749089407)
,p_theme_id=>42
,p_name=>'COL_CONTENT_DESCRIPTION'
,p_display_name=>'Description'
,p_display_sequence=>130
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7630483473089407)
,p_theme_id=>42
,p_name=>'COL_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>110
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7630880507089408)
,p_theme_id=>42
,p_name=>'COL_MISC'
,p_display_name=>'Misc'
,p_display_sequence=>140
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7631299227089408)
,p_theme_id=>42
,p_name=>'COL_SELECTION'
,p_display_name=>'Selection'
,p_display_sequence=>100
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7631903974089408)
,p_theme_id=>42
,p_name=>'COL_CONTENT_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>120
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7633911398089410)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7635670457089411)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7636265704089412)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7636725995089412)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7638713611089413)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7642528304089418)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7643050804089418)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7644126971089420)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7646724020089423)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7647850483089424)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7649068805089424)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7651644748089425)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7652251106089427)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7653893786089428)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE'
,p_display_name=>'Collapse Mode'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Icon (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7657084545089431)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7659090613089432)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7659648212089432)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7665244655089435)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7666701042089441)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7667665305089441)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7670227478089457)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7670565985089458)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7672172193089458)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7672588364089458)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7674144955089460)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7674579811089461)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7676148395089461)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7676617202089462)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7678168120089463)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7678556955089463)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7678936628089463)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7679391187089464)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7679830923089464)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7680226107089464)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7680631075089464)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7681960724089464)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7683378845089465)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7684342542089465)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7684830087089467)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7685229476089467)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7685566464089467)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7686183130089467)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7686800282089467)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7687157455089468)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7687541149089468)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7687965821089468)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(7688801188089468)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7555946053089340)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(7553282075089328)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7559036786089344)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(7556061730089341)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7560617815089346)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_1'
,p_display_name=>'Background 1'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(7559185844089344)
,p_css_classes=>'t-LoginPage--bg1'
,p_group_id=>wwv_flow_api.id(7560346274089345)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7560814233089347)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_2'
,p_display_name=>'Background 2'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(7559185844089344)
,p_css_classes=>'t-LoginPage--bg2'
,p_group_id=>wwv_flow_api.id(7560346274089345)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7561004602089347)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_3'
,p_display_name=>'Background 3'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(7559185844089344)
,p_css_classes=>'t-LoginPage--bg3'
,p_group_id=>wwv_flow_api.id(7560346274089345)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7561382270089347)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT_SPLIT'
,p_display_name=>'Split'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(7559185844089344)
,p_css_classes=>'t-LoginPage--split'
,p_group_id=>wwv_flow_api.id(7561184462089347)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7564453328089349)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(7561487081089347)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7567029670089352)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(7564576325089349)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7568238651089353)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(7567116145089352)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7568492744089353)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(7567116145089352)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7571285289089354)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(7568540312089353)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7573754854089356)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(7571420506089355)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7575045796089357)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(7573887998089356)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7575245825089357)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(7573887998089356)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7575966054089362)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7575387507089358)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7576411872089363)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7575387507089358)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(7576179145089363)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7576802266089363)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7575387507089358)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(7576553465089363)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7577034046089363)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7575387507089358)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(7576553465089363)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7577386245089363)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7575387507089358)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(7577214803089363)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7577784757089364)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7575387507089358)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(7577556244089363)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7578022198089364)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7575387507089358)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(7576179145089363)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7578208937089364)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7575387507089358)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(7577214803089363)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7578376756089364)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7575387507089358)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(7576179145089363)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7578595779089364)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7575387507089358)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(7577214803089363)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7578750384089364)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7575387507089358)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(7576179145089363)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7579028115089364)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7575387507089358)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(7577556244089363)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7581159884089365)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7580087012089365)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(7581021536089365)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7581542106089365)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(7580087012089365)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(7581353411089365)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7581770424089365)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(7580087012089365)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(7581021536089365)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7581983567089365)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(7580087012089365)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(7581353411089365)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7582229342089366)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7580087012089365)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7583398854089368)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(7583216948089368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7583571118089368)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(7583216948089368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7583769436089369)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(7583216948089368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7584147590089370)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(7583940318089370)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7584414044089370)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(7583940318089370)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7584543184089370)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(7583940318089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7584809106089370)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(7583216948089368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7584986663089370)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(7583940318089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7585380515089371)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7585579104089371)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7585826746089371)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7585998446089371)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7586200030089371)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7586568239089372)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(7586381688089372)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7587016721089372)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(7586810522089372)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7587194034089372)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(7586381688089372)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7587377390089372)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7587562892089372)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(7581021536089365)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7587833376089372)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7587947708089373)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(7586810522089372)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7588192064089373)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7588427111089373)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7588611310089373)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7588995736089373)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(7588769591089373)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7589218831089374)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(7588769591089373)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7589350154089374)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7582280213089366)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(7581021536089365)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7590420208089374)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(7583940318089370)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7590621828089374)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(7583940318089370)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7590746915089374)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(7583940318089370)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7590953885089374)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(7583940318089370)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7591198725089375)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7591349502089375)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7591576614089375)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7591820551089375)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7591945004089375)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7592433962089375)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(7592229803089375)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7592768514089375)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_api.id(7592579605089375)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7592941456089375)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(7592229803089375)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7593151691089375)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(7586810522089372)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7593610979089375)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_api.id(7593336323089375)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7593764113089375)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7593974384089376)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(7581021536089365)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7594216941089377)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7594343809089377)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(7581021536089365)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7594557203089377)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(7586810522089372)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7594789815089377)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7589522820089374)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(7581021536089365)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7595165786089377)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7594887794089377)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7595627626089378)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7594887794089377)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(7595410355089378)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7595746354089378)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7594887794089377)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(7595410355089378)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7595951626089378)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7594887794089377)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(7595410355089378)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7596373981089378)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7594887794089377)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(7596205181089378)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7596604051089378)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7594887794089377)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(7596205181089378)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7596785780089378)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7594887794089377)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7597643888089379)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7596858465089378)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(7597529453089379)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7597871432089380)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7596858465089378)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(7581021536089365)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7598299780089380)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7596858465089378)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_api.id(7598084945089380)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7598526883089380)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7596858465089378)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_api.id(7598084945089380)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7598719062089380)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7596858465089378)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7598838888089380)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7596858465089378)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(7581021536089365)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7599603206089381)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7598939156089381)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7599832189089381)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7598939156089381)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7600152348089381)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7598939156089381)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(7599978199089381)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7600423500089381)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7598939156089381)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(7599978199089381)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7600603213089381)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7598939156089381)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7600793483089381)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(7598939156089381)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7600942436089382)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7598939156089381)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7601226128089382)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7598939156089381)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(7599978199089381)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7602080896089382)
,p_theme_id=>42
,p_name=>'ABOVE'
,p_display_name=>'Above'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7601297008089382)
,p_css_classes=>'js-popup-pos-above'
,p_group_id=>wwv_flow_api.id(7601842749089382)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout above or typically on top of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7602259285089383)
,p_theme_id=>42
,p_name=>'AFTER'
,p_display_name=>'After'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7601297008089382)
,p_css_classes=>'js-popup-pos-after'
,p_group_id=>wwv_flow_api.id(7601842749089382)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout after or typically to the right of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7602533779089383)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7601297008089382)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7602665283089383)
,p_theme_id=>42
,p_name=>'BEFORE'
,p_display_name=>'Before'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7601297008089382)
,p_css_classes=>'js-popup-pos-before'
,p_group_id=>wwv_flow_api.id(7601842749089382)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout before or typically to the left of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7602890197089383)
,p_theme_id=>42
,p_name=>'BELOW'
,p_display_name=>'Below'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7601297008089382)
,p_css_classes=>'js-popup-pos-below'
,p_group_id=>wwv_flow_api.id(7601842749089382)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout below or typically to the bottom of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7603111358089383)
,p_theme_id=>42
,p_name=>'DISPLAY_POPUP_CALLOUT'
,p_display_name=>'Display Popup Callout'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7601297008089382)
,p_css_classes=>'js-popup-callout'
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add display a callout for the popup. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7603319689089383)
,p_theme_id=>42
,p_name=>'INSIDE'
,p_display_name=>'Inside'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(7601297008089382)
,p_css_classes=>'js-popup-pos-inside'
,p_group_id=>wwv_flow_api.id(7601842749089382)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout inside of the parent. This is useful when the parent is sufficiently large, such as a report or large region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7603485819089384)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7601297008089382)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(7599978199089381)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7603650517089384)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7601297008089382)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(7599978199089381)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7603845257089384)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7601297008089382)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_api.id(7599978199089381)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7604122924089384)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7601297008089382)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7604252616089384)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7601297008089382)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7604441466089384)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7601297008089382)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(7599978199089381)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7604877243089384)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7604600202089384)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7605089486089384)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7604600202089384)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7606009980089385)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7605227699089384)
,p_css_classes=>'t-Login-region--headerIcon'
,p_group_id=>wwv_flow_api.id(7605795030089384)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Icon in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7606164448089385)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7605227699089384)
,p_css_classes=>'t-Login-region--headerTitle'
,p_group_id=>wwv_flow_api.id(7605795030089384)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Title in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7606364558089385)
,p_theme_id=>42
,p_name=>'LOGO_HEADER_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7605227699089384)
,p_css_classes=>'t-Login-region--headerHidden'
,p_group_id=>wwv_flow_api.id(7605795030089384)
,p_template_types=>'REGION'
,p_help_text=>'Hides both the Region Icon and Title from the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7607353254089385)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(7583940318089370)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7607583960089385)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(7583940318089370)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7607754125089385)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(7583940318089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7607946528089387)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(7583940318089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7608177302089387)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7608382237089387)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7608544202089387)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7608761738089388)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7608979635089388)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7609192345089388)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7609368736089388)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7609535528089388)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7609769418089388)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7609987725089388)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7610181678089388)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7610426834089388)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7610600147089388)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7610833164089388)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7611014854089388)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(7585139066089370)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7611160411089388)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(7586381688089372)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7611380241089388)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(7586810522089372)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7611567078089388)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(7586381688089372)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7611834459089389)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7612012376089390)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(7581021536089365)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7612156101089390)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(7581021536089365)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7612411883089390)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(7586810522089372)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7612619324089391)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7612809533089391)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7613015827089391)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(7581021536089365)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7613210304089391)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(7606516196089385)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(7581021536089365)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7614404656089393)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7613254844089391)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(7614225362089393)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7614789714089394)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7613254844089391)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(7614616398089394)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7615005995089394)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7613254844089391)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7615216194089394)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7613254844089391)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(7614616398089394)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7615625375089394)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7613254844089391)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(7615348247089394)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7615772505089394)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7613254844089391)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(7615348247089394)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7616190292089394)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7615864779089394)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(7595410355089378)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7616361527089395)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7615864779089394)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7616587111089395)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(7615864779089394)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(7595410355089378)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7616767894089395)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7615864779089394)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7617694678089395)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(7616887314089395)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(7617445378089395)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7617931693089395)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7616887314089395)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(7617445378089395)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7618069058089395)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(7616887314089395)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7618836464089398)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(7618357924089398)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(7618718662089398)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7619307807089398)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7618357924089398)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7619518981089398)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7618357924089398)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(7618718662089398)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7619636722089398)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7618357924089398)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7619905600089398)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7618357924089398)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(7618718662089398)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7620041460089398)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(7618357924089398)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7620316005089398)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(7618357924089398)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7620508485089398)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7618357924089398)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(7618718662089398)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7620682528089399)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(7618357924089398)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(7618718662089398)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7620846520089399)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7618357924089398)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7621260270089400)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7618357924089398)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(7621037494089399)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7621453486089400)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(7618357924089398)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7621686833089400)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(7618357924089398)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7621857921089400)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(7618357924089398)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7622086780089400)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7618357924089398)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(7621037494089399)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7622279671089400)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7618357924089398)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7622711911089400)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7623053650089401)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(7622836752089401)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7623257798089401)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7623526120089401)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(7622836752089401)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7623644535089401)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7623857020089401)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(7622836752089401)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7624082286089401)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7624266406089401)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(7621037494089399)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7624473948089401)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(7621037494089399)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7624852512089401)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(7624720972089401)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7625116993089401)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(7624720972089401)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7625311786089401)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(7621037494089399)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7625669882089401)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(7625436388089401)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7625889200089401)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(7625436388089401)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7626051835089401)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7626316624089402)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(7621037494089399)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7626509581089402)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7626701526089402)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(7622836752089401)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7627094726089402)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(7626857939089402)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7627244904089402)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(7626857939089402)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7627455594089402)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7627724603089405)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7622404972089400)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7628295861089405)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7627755248089405)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(7628118824089405)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7628440331089406)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7627755248089405)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_api.id(7626857939089402)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7628645455089406)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7627755248089405)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_api.id(7626857939089402)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7628854066089407)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7627755248089405)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(7628118824089405)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7629480396089407)
,p_theme_id=>42
,p_name=>'ACTIONS_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(7629007464089407)
,p_css_classes=>'t-ContentRow--hideActions'
,p_group_id=>wwv_flow_api.id(7629327766089407)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Actions column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7629898427089407)
,p_theme_id=>42
,p_name=>'ALIGNMENT_TOP'
,p_display_name=>'Top'
,p_display_sequence=>100
,p_report_template_id=>wwv_flow_api.id(7629007464089407)
,p_css_classes=>'t-ContentRow--alignTop'
,p_group_id=>wwv_flow_api.id(7629645804089407)
,p_template_types=>'REPORT'
,p_help_text=>'Aligns the content to the top of the row. This is useful when you expect that yours rows will vary in height (e.g. some rows will have longer descriptions than others).'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7630325386089407)
,p_theme_id=>42
,p_name=>'DESCRIPTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(7629007464089407)
,p_css_classes=>'t-ContentRow--hideDescription'
,p_group_id=>wwv_flow_api.id(7630086749089407)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Description from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7630721783089407)
,p_theme_id=>42
,p_name=>'ICON_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7629007464089407)
,p_css_classes=>'t-ContentRow--hideIcon'
,p_group_id=>wwv_flow_api.id(7630483473089407)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Icon from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7631106810089408)
,p_theme_id=>42
,p_name=>'MISC_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(7629007464089407)
,p_css_classes=>'t-ContentRow--hideMisc'
,p_group_id=>wwv_flow_api.id(7630880507089408)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Misc column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7631508628089408)
,p_theme_id=>42
,p_name=>'SELECTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7629007464089407)
,p_css_classes=>'t-ContentRow--hideSelection'
,p_group_id=>wwv_flow_api.id(7631299227089408)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Selection column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7631664911089408)
,p_theme_id=>42
,p_name=>'STYLE_COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(7629007464089407)
,p_css_classes=>'t-ContentRow--styleCompact'
,p_group_id=>wwv_flow_api.id(7621037494089399)
,p_template_types=>'REPORT'
,p_help_text=>'This option reduces the padding and font sizes to present a compact display of the same information.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7632127417089408)
,p_theme_id=>42
,p_name=>'TITLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7629007464089407)
,p_css_classes=>'t-ContentRow--hideTitle'
,p_group_id=>wwv_flow_api.id(7631903974089408)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Title from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7632445652089408)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7632147745089408)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7632695492089409)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7632147745089408)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7632873414089409)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7632147745089408)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7633119706089409)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(7632147745089408)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7633312016089409)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(7632147745089408)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7633468869089410)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7632147745089408)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(7626857939089402)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7633659542089410)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7632147745089408)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(7626857939089402)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7634096146089410)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7632147745089408)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(7633911398089410)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7634250887089410)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7632147745089408)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7634498824089410)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7632147745089408)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7634727735089410)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7632147745089408)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7634851155089410)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(7632147745089408)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7635123782089410)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(7632147745089408)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7635883490089411)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7635362664089411)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(7635670457089411)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7636130634089411)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7635362664089411)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(7635670457089411)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7636456986089412)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7635362664089411)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(7636265704089412)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7636853464089412)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7635362664089411)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(7636725995089412)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7637112618089412)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7635362664089411)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(7636725995089412)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7637293587089412)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(7635362664089411)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(7636725995089412)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7637501941089412)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7635362664089411)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(7636265704089412)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7637666626089412)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7635362664089411)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7637883123089412)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7635362664089411)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(7636725995089412)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7638299086089413)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(7638008223089412)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(7621037494089399)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7638925270089414)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7638416095089413)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(7638713611089413)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7639120319089414)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7638416095089413)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(7638713611089413)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7639302896089414)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7638416095089413)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(7638713611089413)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7639507837089414)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7638416095089413)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7639656440089414)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7638416095089413)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7639911047089414)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(7638416095089413)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(7638713611089413)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7640096021089414)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(7638416095089413)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(7638713611089413)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7640253775089414)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(7638416095089413)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(7638713611089413)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7640722156089415)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(7640424844089414)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(7638713611089413)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7640880446089415)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7640424844089414)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(7638713611089413)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7641075864089415)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7640424844089414)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(7638713611089413)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7641301836089415)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(7640424844089414)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7641489313089415)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(7640424844089414)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(7619114963089398)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7641726011089415)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(7640424844089414)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(7638713611089413)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7641855640089415)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(7640424844089414)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(7638713611089413)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7642077874089415)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(7640424844089414)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(7638713611089413)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7642696635089418)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(7642166101089417)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(7642528304089418)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7642844596089418)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(7642166101089417)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(7642528304089418)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7643246738089419)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7642166101089417)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(7643050804089418)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7643471933089419)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7642166101089417)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(7643050804089418)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7643709027089419)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7642166101089417)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(7643050804089418)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7644284408089420)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7643801268089419)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(7644126971089420)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7644486742089420)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7643801268089419)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(7644126971089420)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7644648688089420)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7643801268089419)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(7644126971089420)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7644846463089420)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7643801268089419)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7645045231089421)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(7643801268089419)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7645446704089421)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(7645234100089421)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7645654092089421)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7645234100089421)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7645932575089422)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(7645234100089421)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7646062301089422)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7645234100089421)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7646291013089422)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7645234100089421)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7646839252089423)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7646368102089422)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7647034874089423)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7646368102089422)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7647289068089423)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(7646368102089422)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7647438165089424)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(7646368102089422)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7647658131089424)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7646368102089422)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7648132666089424)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7646368102089422)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(7647850483089424)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7648291480089424)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(7646368102089422)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7648510210089424)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(7646368102089422)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7648653945089424)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(7646368102089422)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7648896714089424)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7646368102089422)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(7647850483089424)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7649244102089424)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7646368102089422)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(7649068805089424)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7649489654089424)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7646368102089422)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(7649068805089424)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7649707269089424)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7646368102089422)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(7649068805089424)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7649876934089425)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7646368102089422)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7650115404089425)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(7646368102089422)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(7649068805089424)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7650313537089425)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(7646368102089422)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(7649068805089424)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7650715661089425)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7650373998089425)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7650848225089425)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7650373998089425)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7651076570089425)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7650373998089425)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7651279162089425)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(7650373998089425)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7651471340089425)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(7650373998089425)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7651839366089426)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7650373998089425)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(7651644748089425)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7652133641089427)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7650373998089425)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(7651644748089425)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7652511199089427)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7650373998089425)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(7652251106089427)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7652710904089427)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7650373998089425)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7652889772089427)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7650373998089425)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7653103817089427)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7650373998089425)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7653279476089427)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(7650373998089425)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7653680694089428)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7653343109089427)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7654038089089428)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7653343109089427)
,p_css_classes=>'js-navCollapsed--hidden'
,p_group_id=>wwv_flow_api.id(7653893786089428)
,p_template_types=>'LIST'
,p_help_text=>'Completely hide the navigation menu when it is collapsed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7654290095089428)
,p_theme_id=>42
,p_name=>'ICON_DEFAULT'
,p_display_name=>'Icon (Default)'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7653343109089427)
,p_css_classes=>'js-navCollapsed--default'
,p_group_id=>wwv_flow_api.id(7653893786089428)
,p_template_types=>'LIST'
,p_help_text=>'Display icons when the navigation menu is collapsed for large screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7654485121089428)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7653343109089427)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_api.id(7647850483089424)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7654688936089428)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7653343109089427)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_api.id(7647850483089424)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7654870731089428)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7653343109089427)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_api.id(7647850483089424)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7655257556089428)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(7654975153089428)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7655512246089428)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(7654975153089428)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7655666427089429)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(7654975153089428)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7655882256089429)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(7654975153089428)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7656060343089429)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(7654975153089428)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7656443116089430)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7656190812089430)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7656847111089431)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7657288901089431)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(7657084545089431)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7657497090089431)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7657665274089431)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(7657084545089431)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7657860232089431)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7658131575089431)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(7657084545089431)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7658279997089431)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7658459322089431)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(7647850483089424)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7658686058089431)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(7647850483089424)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7658857539089432)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7659252136089432)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(7659090613089432)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7659511909089432)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(7647850483089424)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7659883656089432)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(7659648212089432)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7660041719089432)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(7659648212089432)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7660304958089432)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7660520805089432)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(7647850483089424)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7660732607089433)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7660843427089433)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(7657084545089431)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7661130085089433)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(7651644748089425)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7661256635089433)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(7651644748089425)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7661482341089433)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(7659090613089432)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7661714537089434)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7661875435089434)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7656602120089431)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7662294522089434)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7661988420089434)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(7659648212089432)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7662457901089434)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(7661988420089434)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(7646724020089423)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7662655586089434)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7661988420089434)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(7659648212089432)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7662881164089434)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7661988420089434)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(7652251106089427)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7663117979089434)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7661988420089434)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(7647850483089424)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7663306127089434)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7661988420089434)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(7647850483089424)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7663500711089434)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(7661988420089434)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(7652251106089427)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7663881170089435)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7663583206089434)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7664107775089435)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7663583206089434)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7664498997089435)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7664186846089435)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(7647850483089424)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7664695027089435)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(7664186846089435)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7664886567089435)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7664186846089435)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7665071289089435)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7664186846089435)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7665505896089435)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(7664186846089435)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(7665244655089435)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7665682217089435)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(7664186846089435)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(7665244655089435)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7666906426089441)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(7666489802089439)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(7666701042089441)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7667107983089441)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(7666489802089439)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(7666701042089441)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7667504205089441)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(7667266437089441)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7667863983089441)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(7667266437089441)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(7667665305089441)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7668073824089441)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(7667266437089441)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(7666701042089441)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7668277559089441)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(7667266437089441)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(7667665305089441)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7668460125089441)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(7667266437089441)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(7666701042089441)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7670430130089457)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(7670227478089457)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7670798395089458)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(7670565985089458)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7670986739089458)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(7670227478089457)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7671230561089458)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(7670565985089458)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7671376984089458)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(7670227478089457)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7671615644089458)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(7670565985089458)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7671768509089458)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(7670227478089457)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7672024889089458)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(7670565985089458)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7672350720089458)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(7672172193089458)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7672785835089458)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(7672588364089458)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7673023744089458)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(7672172193089458)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7673159653089458)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(7672588364089458)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7673361963089459)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(7672172193089458)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7673566489089459)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(7672588364089458)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7673821596089460)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(7672172193089458)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7674002318089460)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(7672588364089458)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7674394568089461)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(7674144955089460)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7674760307089461)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(7674579811089461)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7674974422089461)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(7674144955089460)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7675232851089461)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(7674579811089461)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7675339319089461)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(7674144955089460)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7675605090089461)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(7674579811089461)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7675823882089461)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(7674144955089460)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7676008513089461)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(7674579811089461)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7676412879089461)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(7676148395089461)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7676766798089462)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(7676617202089462)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7677008579089462)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(7676148395089461)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7677182292089462)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(7676617202089462)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7677398880089462)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(7676148395089461)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7677537783089462)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(7676617202089462)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7677739911089462)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(7676148395089461)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7677992257089462)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(7676617202089462)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7678363278089463)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(7678168120089463)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7678800405089463)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(7678556955089463)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7679209598089463)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(7678936628089463)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7679620473089464)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(7679391187089464)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7679981712089464)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(7679830923089464)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7680422043089464)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(7680226107089464)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7680824258089464)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(7680631075089464)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7680942507089464)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(7680631075089464)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7681202865089464)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(7678556955089463)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7681418035089464)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(7678936628089463)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7681538170089464)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(7679391187089464)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7681815763089464)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(7679830923089464)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7682147013089465)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(7681960724089464)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7682336555089465)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(7681960724089464)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7682618603089465)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(7681960724089464)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7682751128089465)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(7678168120089463)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7683002920089465)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(7680631075089464)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7683177256089465)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(7680226107089464)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7683591335089465)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(7683378845089465)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7683813444089465)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(7678168120089463)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7683935713089465)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(7680226107089464)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7684163442089465)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(7678168120089463)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7684589720089466)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(7684342542089465)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7684942185089467)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(7684830087089467)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7685413652089467)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(7685229476089467)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7685780606089467)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(7685566464089467)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7685935921089467)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(7685566464089467)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7686371165089467)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(7686183130089467)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7686599186089467)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(7684830087089467)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7686939795089467)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(7686800282089467)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7687393630089468)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(7687157455089468)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7687790687089468)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(7687541149089468)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7688216894089468)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(7687965821089468)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7688424992089468)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7688581304089468)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(7686800282089467)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(7689019350089468)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(7688801188089468)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(7691796462089567)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(7692829872089577)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(7552170059089316)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/user_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(7706817840119406)
,p_name=>'User Authentication'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'authenticate_user'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_post_auth_process=>'role_router'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/plugins/region_type/apex_material_cards
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(50649497605321085949)
,p_plugin_type=>'REGION TYPE'
,p_name=>'APEX.MATERIAL.CARDS'
,p_display_name=>'APEX Material Cards'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','APEX.MATERIAL.CARDS'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION SQL_TO_SYS_REFCURSOR (',
'    P_IN_SQL_STATEMENT   CLOB,',
'    P_IN_BINDS           SYS.DBMS_SQL.VARCHAR2_TABLE',
') RETURN SYS_REFCURSOR AS',
'    VR_CURS         BINARY_INTEGER;',
'    VR_REF_CURSOR   SYS_REFCURSOR;',
'    VR_EXEC         BINARY_INTEGER;',
'/* TODO make size dynamic */',
'    VR_BINDS        VARCHAR(100);',
'BEGIN',
'    VR_CURS         := DBMS_SQL.OPEN_CURSOR;',
'    DBMS_SQL.PARSE(',
'        VR_CURS,',
'        P_IN_SQL_STATEMENT,',
'        DBMS_SQL.NATIVE',
'    );',
'    IF P_IN_BINDS.COUNT > 0 THEN',
'        FOR I IN 1..P_IN_BINDS.COUNT LOOP',
'        /* TODO find out how to prevent ltrim */',
'            VR_BINDS   := LTRIM(',
'                P_IN_BINDS(I),',
'                '':''',
'            );',
'            DBMS_SQL.BIND_VARIABLE(',
'                VR_CURS,',
'                VR_BINDS,',
'                V(VR_BINDS)',
'            );',
'        END LOOP;',
'    END IF;',
'',
'    VR_EXEC         := DBMS_SQL.EXECUTE(VR_CURS);',
'    VR_REF_CURSOR   := DBMS_SQL.TO_REFCURSOR(VR_CURS);',
'    RETURN VR_REF_CURSOR;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        IF DBMS_SQL.IS_OPEN(VR_CURS) THEN',
'            DBMS_SQL.CLOSE_CURSOR(VR_CURS);',
'        END IF;',
'        RAISE;',
'END;',
'',
'FUNCTION F_AJAX (',
'    P_REGION   IN         APEX_PLUGIN.T_REGION,',
'    P_PLUGIN   IN         APEX_PLUGIN.T_PLUGIN',
') RETURN APEX_PLUGIN.T_REGION_AJAX_RESULT IS',
'    VR_RESULT       APEX_PLUGIN.T_REGION_AJAX_RESULT;',
'    VR_CUR          SYS_REFCURSOR;',
'    VR_BIND_NAMES   SYS.DBMS_SQL.VARCHAR2_TABLE;',
'BEGIN',
'    /* undocumented function of APEX for get all bindings */',
'    VR_BIND_NAMES   := WWV_FLOW_UTILITIES.GET_BINDS(P_REGION.SOURCE);',
'',
'    /* execute binding*/',
'    VR_CUR          := SQL_TO_SYS_REFCURSOR(',
'        RTRIM(',
'            P_REGION.SOURCE,',
'            '';''',
'        ),',
'        VR_BIND_NAMES',
'    );',
'',
'    /* create json */',
'    APEX_JSON.OPEN_OBJECT;',
'    APEX_JSON.WRITE(',
'        ''row'',',
'        VR_CUR',
'    );',
'    APEX_JSON.CLOSE_OBJECT;',
'',
'    RETURN VR_RESULT;',
'END;',
'',
'FUNCTION F_RENDER (',
'    P_REGION                IN APEX_PLUGIN.T_REGION,',
'    P_PLUGIN                IN APEX_PLUGIN.T_PLUGIN,',
'    P_IS_PRINTER_FRIENDLY   IN BOOLEAN',
') RETURN APEX_PLUGIN.T_REGION_RENDER_RESULT IS',
'    VR_CONF_JSON      APEX_APPLICATION_PAGE_REGIONS.ATTRIBUTE_01%TYPE := P_REGION.ATTRIBUTE_01;',
'    VR_ITEMS2SUBMIT   APEX_APPLICATION_PAGE_REGIONS.AJAX_ITEMS_TO_SUBMIT%TYPE := APEX_PLUGIN_UTIL.PAGE_ITEM_NAMES_TO_JQUERY(P_REGION.AJAX_ITEMS_TO_SUBMIT);',
'    VR_REGION_ID      VARCHAR2(200) := ''mc-'' || P_REGION.STATIC_ID;',
'    VR_SANITIZE       BOOLEAN := TRUE;',
'    ',
'BEGIN',
'    APEX_CSS.ADD_FILE(',
'        P_NAME        => ''materialcards.pkgd.min'',',
'        P_DIRECTORY   => P_PLUGIN.FILE_PREFIX,',
'        P_VERSION     => NULL,',
'        P_KEY         => ''materialcardscsssrc''',
'    );',
'',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME        => ''materialcards.pkgd.min'',',
'        P_DIRECTORY   => P_PLUGIN.FILE_PREFIX,',
'        P_VERSION     => NULL,',
'        P_KEY         => ''materialcardsjssrc''',
'    );',
'    ',
'    IF',
'        P_REGION.ATTRIBUTE_02 = ''N''',
'    THEN',
'        VR_SANITIZE   := FALSE;',
'    ELSE',
'        VR_SANITIZE   := TRUE;',
'    END IF;',
'',
'    HTP.P( ''<div id="'' || APEX_PLUGIN_UTIL.ESCAPE( VR_REGION_ID, TRUE ) || ''"></div>'' );',
'',
'    APEX_JAVASCRIPT.ADD_ONLOAD_CODE( ''materialCards.initialize(''',
'     || APEX_JAVASCRIPT.ADD_VALUE( VR_REGION_ID, TRUE )',
'     || APEX_JAVASCRIPT.ADD_VALUE( APEX_PLUGIN.GET_AJAX_IDENTIFIER, TRUE )',
'     || APEX_JAVASCRIPT.ADD_VALUE( P_REGION.NO_DATA_FOUND_MESSAGE, TRUE )',
'     || APEX_JAVASCRIPT.ADD_VALUE( VR_CONF_JSON, TRUE )',
'     || APEX_JAVASCRIPT.ADD_VALUE( VR_ITEMS2SUBMIT, TRUE )',
'     || APEX_JAVASCRIPT.ADD_VALUE( P_REGION.STATIC_ID, TRUE )',
'     || APEX_JAVASCRIPT.ADD_VALUE( P_REGION.ESCAPE_OUTPUT, TRUE )',
'     || APEX_JAVASCRIPT.ADD_VALUE( VR_SANITIZE, TRUE )',
'     || APEX_JAVASCRIPT.ADD_VALUE( P_REGION.ATTRIBUTE_03, FALSE )',
'     || '');'' );',
'',
'    RETURN NULL;',
'END;'))
,p_api_version=>1
,p_render_function=>'F_RENDER'
,p_ajax_function=>'F_AJAX'
,p_standard_attributes=>'SOURCE_SQL:AJAX_ITEMS_TO_SUBMIT:NO_DATA_FOUND_MESSAGE:ESCAPE_OUTPUT'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'This Plug-in is used to draw some nice material design cards in APEX. Just add this region plug-in on your page and look into the help tab to learn about what you have to todo in sql statement. Normally when you add this Plug-in to your page the Defa'
||'ult SQL Statement will be set automatically to your Region SQL Source so you can have a look at your finished page to see that everything works. The Cards can just show an icon or some nice responsive charts. The Cards itself are also responsive with'
||' tehir own responsive grid so you can use them also in a not responsive theme. For licenses please take a look at the comments.'
,p_version_identifier=>'1.3.1'
,p_about_url=>'https://github.com/RonnyWeiss/Material-Dashboard-Cards-as-HTML-or-for-Apex'
,p_files_version=>1083
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(50649557274565301577)
,p_plugin_id=>wwv_flow_api.id(50649497605321085949)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'ConfigJSON'
,p_attribute_type=>'JAVASCRIPT'
,p_is_required=>true
,p_default_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "cardWidth": 4,',
'  "refresh": 20',
'}'))
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'{',
'  "cardWidth": 4,',
'  "refresh": 0',
'}',
'</pre>',
'<br>',
'<h3>Explanation:</h3>',
'  <dl>',
'  <dt>cardWidth (number)</dt>',
'  <dd>width per card between 1 and 12</dd>',
'  <dl>',
'  <dt>refresh (number)</dt>',
'  <dd>wrefresh time of cards in seconds if 0 then no refresh will be set</dd>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(29460103110079257117)
,p_plugin_id=>wwv_flow_api.id(50649497605321085949)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Sanitize HTML'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>'Sanitizes HTML e.g. &lt;script&gt; tags will be removed.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(29460932992001259573)
,p_plugin_id=>wwv_flow_api.id(50649497605321085949)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Sanitize HTML Options'
,p_attribute_type=>'JAVASCRIPT'
,p_is_required=>true
,p_default_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "ALLOWED_ATTR": [',
'    "accesskey",',
'    "align",',
'    "alt",',
'    "always",',
'    "autocomplete",',
'    "autoplay",',
'    "border",',
'    "cellpadding",',
'    "cellspacing",',
'    "charset",',
'    "class",',
'    "dir",',
'    "height",',
'    "href",',
'    "id",',
'    "lang",',
'    "name",',
'    "rel",',
'    "required",',
'    "src",',
'    "style",',
'    "summary",',
'    "tabindex",',
'    "target",',
'    "title",',
'    "type",',
'    "value",',
'    "width"',
'  ],',
'  "ALLOWED_TAGS": [',
'    "a",',
'    "address",',
'    "b",',
'    "blockquote",',
'    "br",',
'    "caption",',
'    "code",',
'    "dd",',
'    "div",',
'    "dl",',
'    "dt",',
'    "em",',
'    "figcaption",',
'    "figure",',
'    "h1",',
'    "h2",',
'    "h3",',
'    "h4",',
'    "h5",',
'    "h6",',
'    "hr",',
'    "i",',
'    "img",',
'    "label",',
'    "li",',
'    "nl",',
'    "ol",',
'    "p",',
'    "pre",',
'    "s",',
'    "span",',
'    "strike",',
'    "strong",',
'    "sub",',
'    "sup",',
'    "table",',
'    "tbody",',
'    "td",',
'    "th",',
'    "thead",',
'    "tr",',
'    "u",',
'    "ul"',
'  ]',
'}'))
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(29460103110079257117)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This Clob Loader includes a sanitizer for HTML as option to use:',
'A Full Description you will find on: https://github.com/cure53/DOMPurify',
'Example: ',
'<pre>',
'{',
'  "ALLOWED_ATTR": [',
'    "accesskey",',
'    "align",',
'    "alt",',
'    "always",',
'    "autocomplete",',
'    "autoplay",',
'    "border",',
'    "cellpadding",',
'    "cellspacing",',
'    "charset",',
'    "class",',
'    "dir",',
'    "height",',
'    "href",',
'    "id",',
'    "lang",',
'    "name",',
'    "rel",',
'    "required",',
'    "src",',
'    "style",',
'    "summary",',
'    "tabindex",',
'    "target",',
'    "title",',
'    "type",',
'    "value",',
'    "width"',
'  ],',
'  "ALLOWED_TAGS": [',
'    "a",',
'    "address",',
'    "b",',
'    "blockquote",',
'    "br",',
'    "caption",',
'    "code",',
'    "dd",',
'    "div",',
'    "dl",',
'    "dt",',
'    "em",',
'    "figcaption",',
'    "figure",',
'    "h1",',
'    "h2",',
'    "h3",',
'    "h4",',
'    "h5",',
'    "h6",',
'    "hr",',
'    "i",',
'    "img",',
'    "label",',
'    "li",',
'    "nl",',
'    "ol",',
'    "p",',
'    "pre",',
'    "s",',
'    "span",',
'    "strike",',
'    "strong",',
'    "sub",',
'    "sup",',
'    "table",',
'    "tbody",',
'    "td",',
'    "th",',
'    "thead",',
'    "tr",',
'    "u",',
'    "ul"',
'  ]',
'}',
'</pre>',
'<pre>',
'# make output safe for usage in jQuery''s $()/html() method (default is false)',
'SAFE_FOR_JQUERY: true',
'',
'# strip {{ ... }} and &amp;lt;% ... %&amp;gt; to make output safe for template systems',
'# be careful please, this mode is not recommended for production usage.',
'# allowing template parsing in user-controlled HTML is not advised at all.',
'# only use this mode if there is really no alternative.',
'SAFE_FOR_TEMPLATES: true',
'',
'# allow only &amp;lt;b&amp;gt;',
'ALLOWED_TAGS: [''b'']',
'',
'# allow only &amp;lt;b&amp;gt; and &amp;lt;q&amp;gt; with style attributes (for whatever reason)',
'ALLOWED_TAGS: [''b'', ''q''], ALLOWED_ATTR: [''style'']',
'',
'# allow all safe HTML elements but neither SVG nor MathML',
'USE_PROFILES: {html: true}',
'',
'# allow all safe SVG elements and SVG Filters',
'USE_PROFILES: {svg: true, svgFilters: true}',
'',
'# allow all safe MathML elements and SVG',
'USE_PROFILES: {mathMl: true, svg: true}',
'',
'# leave all as it is but forbid &amp;lt;style&amp;gt;',
'FORBID_TAGS: [''style'']',
'',
'# leave all as it is but forbid style attributes',
'FORBID_ATTR: [''style'']',
'',
'# extend the existing array of allowed tags',
'ADD_TAGS: [''my-tag'']',
'',
'# extend the existing array of attributes',
'ADD_ATTR: [''my-attr'']',
'',
'# prohibit HTML5 data attributes (default is true)',
'ALLOW_DATA_ATTR: false',
'',
'# allow external protocol handlers in URL attributes (default is false)',
'# by default only http, https, ftp, ftps, tel, mailto, callto, cid and xmpp are allowed.',
'ALLOW_UNKNOWN_PROTOCOLS: true',
'</pre>'))
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(50649506432545085979)
,p_plugin_id=>wwv_flow_api.id(50649497605321085949)
,p_name=>'SOURCE_SQL'
,p_default_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH DAT1 ',
'     AS (SELECT LISTAGG(ROUND(DBMS_RANDOM.VALUE(1, 5)), '','') ',
'                  WITHIN GROUP (ORDER BY ROWNUM) ',
'         FROM   DUAL ',
'         CONNECT BY ROWNUM <= 5), ',
'     DAT2 ',
'     AS (SELECT LISTAGG(ROUND(DBMS_RANDOM.VALUE(1, 20)), '','') ',
'                  WITHIN GROUP (ORDER BY ROWNUM) ',
'         FROM   DUAL ',
'         CONNECT BY ROWNUM <= 5), ',
'     DAT3 ',
'     AS (SELECT LISTAGG(ROUND(DBMS_RANDOM.VALUE(1, 20)), '','') ',
'                  WITHIN GROUP (ORDER BY ROWNUM) ',
'         FROM   DUAL ',
'         CONNECT BY ROWNUM <= 5),',
'    DAT4 AS (SELECT ROUND(DBMS_RANDOM.VALUE(40, 100)) AS VALUE FROM DUAL)',
'SELECT ',
'       ''icon'' AS CARD_TYPE, ',
'       DECODE(ROWNUM, 1, ''fa-globe'', 2, ''fa-gear'', ''https://raw.githubusercontent.com/RonnyWeiss/APEX-Advent-Calendar/master/img/thumb/01.jpg'') AS CARD_ICON, ',
'       NULL AS CARD_ICON_COLOR, ',
'       NULL AS CARD_HEADER_STYLE,',
'       ''Material Card'' AS CARD_TITLE, ',
'       TO_CHAR(SYSDATE + ROWNUM / 24, ''HH24:MM:SS'') AS CARD_VALUE, ',
'       ''This is a Material Card that shows an icon and links to ValueTech'' AS CARD_FOOTER, ',
'       ''https://www.valuetech.de/'' AS CARD_LINK, ',
'       NULL AS CARD_CHART_DATA, ',
'       NULL AS CARD_CHART_CONFIG ',
'FROM   DUAL ',
'CONNECT BY ROWNUM <= 3 ',
'UNION ALL ',
'SELECT ',
'       ''chart-bar'' AS CARD_TYPE, ',
'       ''fa-bar-chart'' AS CARD_ICON, ',
'       NULL AS CARD_ICON_COLOR,',
'       NULL AS CARD_HEADER_STYLE,',
'       ''Material Card with bar chart'' AS CARD_TITLE, ',
'       ''100%'' AS CARD_VALUE, ',
'       ''This is a Material Card that shows a bar chart and links to ValueTech'' AS CARD_FOOTER, ',
'       ''https://www.valuetech.de/'' AS CARD_LINK, ',
'       ''{',
'           "labels": ["Mo", "Tue", "Wed", "Th", "Fr"],',
'            "series": [['' ||(SELECT * FROM   DAT1) ||''], ',
'                       ['' ||(SELECT * FROM   DAT2) ||''],',
'                       ['' ||(SELECT * FROM   DAT3) ||'']]',
'        }'' AS CARD_CHART_DATA,',
'       NULL AS CARD_CHART_CONFIG',
'FROM   DUAL ',
'UNION ALL ',
'SELECT ',
'       ''chart-line'' AS CARD_TYPE, ',
'       ''fa-line-chart'' AS CARD_ICON, ',
'       NULL AS CARD_ICON_COLOR,',
'       NULL AS CARD_HEADER_STYLE,',
'       ''Material Card with line chart'' AS CARD_TITLE, ',
'       ''100%'' AS CARD_VALUE, ',
'       ''This is a Material Card that shows a line chart and links to ValueTech'' AS CARD_FOOTER, ',
'       ''https://www.valuetech.de/'' AS CARD_LINK, ',
'       ''{',
'          "labels": ["Mo", "Tue", "Wed", "Th", "Fr"],',
'          "series": [['' ||(SELECT * FROM   DAT1) ||'']]',
'        }'' AS CARD_CHART_DATA,',
'       ''{',
'          "low": 0,',
'          "showArea": true',
'        }'' AS CARD_CHART_CONFIG ',
'FROM   DUAL ',
'UNION ALL ',
'SELECT',
'       ''chart-pie'' AS CARD_TYPE, ',
'       ''fa-pie-chart'' AS CARD_ICON, ',
'       NULL AS CARD_ICON_COLOR,',
'       ''background: linear-gradient(60deg, hsl(115, 55%, 60%), hsl(115, 50%, 60%));box-shadow: 0 12px 20px -10px rgba(230, 230, 230, 0.28), 0 4px 20px 0px rgba(0, 0, 0, 0.12), 0 7px 8px -5px rgba(230, 230, 230, 0.2);'' AS CARD_HEADER_STYLE,',
'       ''Material Card with pie chart'' AS CARD_TITLE, ',
'       VALUE || '' %'' AS CARD_VALUE, ',
'       ''This is a Material Card that shows a gauge chart and links to ValueTech'' AS CARD_FOOTER, ',
'       ''https://www.valuetech.de/'' AS CARD_LINK, ',
'       ''{',
'          "labels": ["''|| VALUE ||'' %"],',
'          "series": [''|| VALUE ||'']',
'       }'' AS CARD_CHART_DATA,',
'       ''{',
'          "total": 100,',
'          "donut": true,',
'          "donutWidth": 260,',
'          "sliceWidth": 10',
'        }'' AS CARD_CHART_CONFIG',
'FROM DAT4'))
,p_sql_min_column_count=>1
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_depending_on_has_to_exist=>true
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3>Large Card with Bar Chart and user defined Card Header Style:</h3>',
'<pre>',
'SELECT ''chart-bar'' AS CARD_TYPE,',
'       ''fa-bar-chart'' AS CARD_ICON,',
'       NULL AS CARD_ICON_COLOR,',
'       ''linear-gradient(60deg, hsl(46, 55%, 60%), hsl(46, 50%, 60%));box-shadow: 0 12px 20px -10px rgba(230, 230, 230, 0.28), 0 4px 20px 0px rgba(0, 0, 0, 0.12), 0 7px 8px -5px rgba(230, 230, 230, 0.2);'' AS CARD_HEADER_STYLE,',
'       ''Material Card with bar chart'' AS CARD_TITLE,',
'       ''100%'' AS CARD_VALUE,',
'       ''This is a Material Card that shows a bar chart and links to ValueTech'' AS CARD_FOOTER,',
'       ''https://www.valuetech.de/'' AS CARD_LINK,',
'       ''{',
'          "labels": ["Mo", "Tue", "Wed", "Th", "Fr"],',
'          "series": [[12, 9, 7, 8, 5], [2, 1, 3.5, 7, 3], [1, 3, 4, 5, 6]],',
'          "colors": ["green", "yellow", "blue", "red", "orange"]',
'        }'' AS CARD_CHART_DATA,',
'       NULL AS CARD_CHART_CONFIG',
'FROM   DUAL',
'</pre>',
'<h3>Large Card with Line Chart:</h3>',
'<pre>',
'SELECT ''chart-line'' AS CARD_TYPE,',
'       ''fa-line-chart'' AS CARD_ICON,',
'       NULL AS CARD_ICON_COLOR,',
'       NULL AS CARD_HEADER_STYLE,',
'       ''Material Card with line chart'' AS CARD_TITLE,',
'       ''100%'' AS CARD_VALUE,',
'       ''This is a Material Card that shows a line chart and links to ValueTech'' AS CARD_FOOTER,',
'       ''https://www.valuetech.de/'' AS CARD_LINK,',
'       ''{',
'          "labels": ["Mo", "Tue", "Wed", "Th", "Fr"],',
'          "series": [[12, 9, 7, 8, 5]]',
'        }'' AS CARD_CHART_DATA,',
'       ''{',
'            "low": 0,',
'            "showArea": true',
'        }'' AS CARD_CHART_CONFIG',
'FROM   DUAL',
'</pre>',
'<h3>Large Card with Pie Chart:</h3>',
'<pre>',
'SELECT ''chart-pie'' AS CARD_TYPE,',
'       ''fa-pie-chart'' AS CARD_ICON,',
'       NULL AS CARD_HEADER_STYLE,',
'       ''Material Card with pie chart'' AS CARD_TITLE,',
'       ''100%'' AS CARD_VALUE,',
'       ''This is a Material Card that shows a pie chart and links to ValueTech'' AS CARD_FOOTER,',
'       ''https://www.valuetech.de/'' AS CARD_LINK,',
'       ''{             ',
'          "labels": ["Mo", "Tue", "Wed", "Th", "Fr"],',
'          "series": [12, 9, 7, 8, 5]',
'        }'' AS CARD_CHART_DATA,',
'       NULL AS CARD_CHART_CONFIG',
'FROM   DUAL ',
'</pre>',
'<h3>Large Card with Gauge Chart:</h3>',
'<pre>',
'WITH DAT AS (SELECT ROUND(DBMS_RANDOM.VALUE(1, 100)) AS VALUE FROM DUAL)',
'SELECT',
'       ''chart-pie'' AS CARD_TYPE, ',
'       ''fa-pie-chart'' AS CARD_ICON, ',
'       NULL AS CARD_ICON_COLOR,',
'       NULL AS CARD_HEADER_STYLE,',
'       ''Material Card with pie chart'' AS CARD_TITLE, ',
'       VALUE || '' %'' AS CARD_VALUE, ',
'       ''This is a Material Card that shows a gauge chart and links to ValueTech'' AS CARD_FOOTER, ',
'       ''https://www.valuetech.de/'' AS CARD_LINK, ',
'       ''{',
'          "labels": ["''|| VALUE ||'' %"],',
'          "series": [''|| VALUE ||'']',
'       }'' AS CARD_CHART_DATA,',
'       ''{',
'          "total": 100,',
'          "donut": true,',
'          "donutWidth": 260,',
'          "sliceWidth": 10',
'        }'' AS CARD_CHART_CONFIG',
'FROM DAT',
'</pre>',
'<h3>Large Card with Horizontal Bar Chart:</h3>',
'<pre>',
'SELECT ',
'       ''chart-bar'' AS CARD_TYPE, ',
'       ''fa-bar-chart'' AS CARD_ICON, ',
'       NULL AS CARD_ICON_COLOR,',
'       NULL AS CARD_HEADER_STYLE,',
'       ''Material Card with bar chart'' AS CARD_TITLE, ',
'       ''100%'' AS CARD_VALUE, ',
'       ''This is a Material Card that shows a horizontal bar chart and links to ValueTech'' AS CARD_FOOTER, ',
'       ''https://www.valuetech.de/'' AS CARD_LINK, ',
'       ''{',
'           "labels": ["Mo", "Tue", "Wed", "Th", "Fr"],',
'            "series": [['' ||(SELECT LISTAGG(ROUND(DBMS_RANDOM.VALUE(1, 5)), '','') ',
'                              WITHIN GROUP (ORDER BY ROWNUM) FROM DUAL CONNECT BY ROWNUM < 5 ) ||'']]',
'        }'' AS CARD_CHART_DATA,',
'       ''{',
'            "horizontalBars": true,',
'            "chartPadding": {',
'                "top": 5',
'            },',
'            "strokeWidth": 12,',
'            "low": 0,',
'            "high": 5',
'        }'' AS CARD_CHART_CONFIG',
'FROM DUAL',
'</pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'SELECT ',
'      /* defines the type of the chart => icon, chart-bar, chart-line, chart-pie */',
'      ''icon'' AS CARD_TYPE,',
'      /* defines the font-apex or fon-awesome icons that should used */',
'      DECODE(ROWNUM, 1, ''fa-globe'', 2, ''fa-gear'', ''https://raw.githubusercontent.com/RonnyWeiss/APEX-Advent-Calendar/master/img/thumb/01.jpg'') AS CARD_ICON,',
'      /* defines the color of the icon e.g white or #ffffff */',
'      NULL AS CARD_ICON_COLOR,',
'      /* defines the style of the header this could be just a background or maybe a nice gradient ',
'         e.g. background: linear-gradient(60deg, hsl(115, 55%, 60%), hsl(115, 50%, 60%));',
'              box-shadow: 0 12px 20px -10px rgba(230, 230, 230, 0.28), 0 4px 20px 0px ',
'              rgba(0, 0, 0, 0.12), 0 7px 8px -5px rgba(230, 230, 230, 0.2); */',
'      NULL AS CARD_HEADER_STYLE,',
'      /* defines the title that should be shown */',
'      ''Material Card'' AS CARD_TITLE,',
'      /* defines the value that should be shown */',
'      ROWNUM || ''%'' AS CARD_VALUE,',
'      /* defines the subtext that should be shown */',
'      ''This is a Material Card that shows an icon and links to ValueTech'' AS CARD_FOOTER,',
'      /* defines the link when click on the card */',
'      ''https://www.valuetech.de/'' AS CARD_LINK,',
'      /* defines json data json for more information take a look for the examples in that statement or on https://gionkunz.github.io/chartist-js/ ',
'         This Plug-in is also able to set your own colors just add to the data json the JSON tag "color" e.g.: ',
'         colors: ["green", "red", "blue"] --> When use CARD_CHART_CONFIG: "donutSolid": true then color function is not working!!! */',
'      '' '' AS CARD_CHART_DATA,',
'      /* defines the chart configuration for more information take a look on https://gionkunz.github.io/chartist-js/ . ',
'         The standard CHartist.js API has been extended: When you draw a Donut you can set "sliceWidth": number ',
'         and when you draw a horizontal bar than you can set the "strokeWidth": number for example look into examples*/',
'      NULL AS CARD_CHART_CONFIG',
'FROM DUAL',
'CONNECT BY ROWNUM <= 3',
'UNION ALL',
'SELECT ''chart-bar'' AS CARD_TYPE,',
'      ''fa-bar-chart'' AS CARD_ICON,',
'      NULL AS CARD_ICON_COLOR,',
'      NULL AS CARD_HEADER_STYLE,',
'      ''Material Card with bar chart'' AS CARD_TITLE,',
'      ''100%'' AS CARD_VALUE,',
'      ''This is a Material Card that shows a bar chart and links to ValueTech'' AS CARD_FOOTER,',
'      ''https://www.valuetech.de/'' AS CARD_LINK,',
'      ''{',
'         "labels": ["Mo", "Tue", "Wed", "Th", "Fr"],',
'         "series": [[12, 9, 7, 8, 5], [2, 1, 3.5, 7, 3], [1, 3, 4, 5, 6]]',
'       }'' AS CARD_CHART_DATA,',
'      NULL AS CARD_CHART_CONFIG',
'FROM DUAL',
'UNION ALL',
'SELECT ''chart-line'' AS CARD_TYPE,',
'      ''fa-line-chart'' AS CARD_ICON,',
'      NULL AS CARD_ICON_COLOR,',
'      NULL AS CARD_HEADER_STYLE,',
'      ''Material Card with line chart'' AS CARD_TITLE,',
'      ''100%'' AS CARD_VALUE,',
'      ''This is a Material Card that shows a line chart and links to ValueTech'' AS CARD_FOOTER,',
'      ''https://www.valuetech.de/'' AS CARD_LINK,',
'      ''{',
'         "labels": ["Mo", "Tue", "Wed", "Th", "Fr"],',
'         "series": [[12, 9, 7, 8, 5]]',
'       }'' AS CARD_CHART_DATA,',
'      ''{',
'           "low": 0,',
'           "showArea": true',
'       }'' AS CARD_CHART_CONFIG',
'FROM DUAL',
'UNION ALL',
'SELECT ''chart-pie'' AS CARD_TYPE,',
'      ''fa-pie-chart'' AS CARD_ICON,',
'      NULL AS CARD_ICON_COLOR,',
'      NULL AS CARD_HEADER_STYLE,',
'      ''Material Card with pie chart'' AS CARD_TITLE,',
'      ''100%'' AS CARD_VALUE,',
'      ''This is a Material Card that shows a pie chart and links to ValueTech'' AS CARD_FOOTER,',
'      ''https://www.valuetech.de/'' AS CARD_LINK,',
'      ''{             ',
'         "labels": ["Mo", "Tue", "Wed", "Th", "Fr"],',
'         "series": [12, 9, 7, 8, 5],',
'         "colors": ["green", "yellow", "blue", "red", "orange"]',
'       }'' AS CARD_CHART_DATA,',
'      NULL AS CARD_CHART_CONFIG',
'FROM DUAL ',
'</pre>'))
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '4D4954204C6963656E73650A0A436F7079726967687420286329203230323020526F6E6E792057656973730A0A5065726D697373696F6E20697320686572656279206772616E7465642C2066726565206F66206368617267652C20746F20616E79207065';
wwv_flow_api.g_varchar2_table(2) := '72736F6E206F627461696E696E67206120636F70790A6F66207468697320736F66747761726520616E64206173736F63696174656420646F63756D656E746174696F6E2066696C657320287468652022536F66747761726522292C20746F206465616C0A';
wwv_flow_api.g_varchar2_table(3) := '696E2074686520536F66747761726520776974686F7574207265737472696374696F6E2C20696E636C7564696E6720776974686F7574206C696D69746174696F6E20746865207269676874730A746F207573652C20636F70792C206D6F646966792C206D';
wwv_flow_api.g_varchar2_table(4) := '657267652C207075626C6973682C20646973747269627574652C207375626C6963656E73652C20616E642F6F722073656C6C0A636F70696573206F662074686520536F6674776172652C20616E6420746F207065726D697420706572736F6E7320746F20';
wwv_flow_api.g_varchar2_table(5) := '77686F6D2074686520536F6674776172652069730A6675726E697368656420746F20646F20736F2C207375626A65637420746F2074686520666F6C6C6F77696E6720636F6E646974696F6E733A0A0A5468652061626F766520636F70797269676874206E';
wwv_flow_api.g_varchar2_table(6) := '6F7469636520616E642074686973207065726D697373696F6E206E6F74696365207368616C6C20626520696E636C7564656420696E20616C6C0A636F70696573206F72207375627374616E7469616C20706F7274696F6E73206F662074686520536F6674';
wwv_flow_api.g_varchar2_table(7) := '776172652E0A0A54484520534F4654574152452049532050524F564944454420224153204953222C20574954484F55542057415252414E5459204F4620414E59204B494E442C2045585052455353204F520A494D504C4945442C20494E434C5544494E47';
wwv_flow_api.g_varchar2_table(8) := '20425554204E4F54204C494D4954454420544F205448452057415252414E54494553204F46204D45524348414E544142494C4954592C0A4649544E45535320464F52204120504152544943554C415220505552504F534520414E44204E4F4E494E465249';
wwv_flow_api.g_varchar2_table(9) := '4E47454D454E542E20494E204E4F204556454E54205348414C4C205448450A415554484F5253204F5220434F5059524947485420484F4C44455253204245204C4941424C4520464F5220414E5920434C41494D2C2044414D41474553204F52204F544845';
wwv_flow_api.g_varchar2_table(10) := '520A4C494142494C4954592C205748455448455220494E20414E20414354494F4E204F4620434F4E54524143542C20544F5254204F52204F54484552574953452C2041524953494E472046524F4D2C0A4F5554204F46204F5220494E20434F4E4E454354';
wwv_flow_api.g_varchar2_table(11) := '494F4E20574954482054484520534F465457415245204F522054484520555345204F52204F54484552204445414C494E475320494E205448450A534F4654574152452E0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(31840495577599119564)
,p_plugin_id=>wwv_flow_api.id(50649497605321085949)
,p_file_name=>'LICENSE'
,p_mime_type=>'application/octet-stream'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E63742D6C6162656C7B66696C6C3A7267626128302C302C302C2E34293B636F6C6F723A7267626128302C302C302C2E34293B666F6E742D73697A653A2E373572656D3B6C696E652D6865696768743A317D2E63742D63686172742D626172202E63742D';
wwv_flow_api.g_varchar2_table(2) := '6C6162656C2C2E63742D63686172742D6C696E65202E63742D6C6162656C7B646973706C61793A626C6F636B3B646973706C61793A2D7765626B69742D626F783B646973706C61793A2D6D6F7A2D626F783B646973706C61793A2D6D732D666C6578626F';
wwv_flow_api.g_varchar2_table(3) := '783B646973706C61793A2D7765626B69742D666C65783B646973706C61793A666C65787D2E63742D63686172742D646F6E7574202E63742D6C6162656C2C2E63742D63686172742D706965202E63742D6C6162656C7B646F6D696E616E742D626173656C';
wwv_flow_api.g_varchar2_table(4) := '696E653A63656E7472616C7D2E63742D6C6162656C2E63742D686F72697A6F6E74616C2E63742D73746172747B2D7765626B69742D626F782D616C69676E3A666C65782D656E643B2D7765626B69742D616C69676E2D6974656D733A666C65782D656E64';
wwv_flow_api.g_varchar2_table(5) := '3B2D6D732D666C65782D616C69676E3A666C65782D656E643B616C69676E2D6974656D733A666C65782D656E643B2D7765626B69742D626F782D7061636B3A666C65782D73746172743B2D7765626B69742D6A7573746966792D636F6E74656E743A666C';
wwv_flow_api.g_varchar2_table(6) := '65782D73746172743B2D6D732D666C65782D7061636B3A666C65782D73746172743B6A7573746966792D636F6E74656E743A666C65782D73746172743B746578742D616C69676E3A6C6566743B746578742D616E63686F723A73746172747D2E63742D6C';
wwv_flow_api.g_varchar2_table(7) := '6162656C2E63742D686F72697A6F6E74616C2E63742D656E647B2D7765626B69742D626F782D616C69676E3A666C65782D73746172743B2D7765626B69742D616C69676E2D6974656D733A666C65782D73746172743B2D6D732D666C65782D616C69676E';
wwv_flow_api.g_varchar2_table(8) := '3A666C65782D73746172743B616C69676E2D6974656D733A666C65782D73746172743B2D7765626B69742D626F782D7061636B3A666C65782D73746172743B2D7765626B69742D6A7573746966792D636F6E74656E743A666C65782D73746172743B2D6D';
wwv_flow_api.g_varchar2_table(9) := '732D666C65782D7061636B3A666C65782D73746172743B6A7573746966792D636F6E74656E743A666C65782D73746172743B746578742D616C69676E3A6C6566743B746578742D616E63686F723A73746172747D2E63742D6C6162656C2E63742D766572';
wwv_flow_api.g_varchar2_table(10) := '746963616C2E63742D73746172747B2D7765626B69742D626F782D616C69676E3A666C65782D656E643B2D7765626B69742D616C69676E2D6974656D733A666C65782D656E643B2D6D732D666C65782D616C69676E3A666C65782D656E643B616C69676E';
wwv_flow_api.g_varchar2_table(11) := '2D6974656D733A666C65782D656E643B2D7765626B69742D626F782D7061636B3A666C65782D656E643B2D7765626B69742D6A7573746966792D636F6E74656E743A666C65782D656E643B2D6D732D666C65782D7061636B3A666C65782D656E643B6A75';
wwv_flow_api.g_varchar2_table(12) := '73746966792D636F6E74656E743A666C65782D656E643B746578742D616C69676E3A72696768743B746578742D616E63686F723A656E647D2E63742D6C6162656C2E63742D766572746963616C2E63742D656E647B2D7765626B69742D626F782D616C69';
wwv_flow_api.g_varchar2_table(13) := '676E3A666C65782D656E643B2D7765626B69742D616C69676E2D6974656D733A666C65782D656E643B2D6D732D666C65782D616C69676E3A666C65782D656E643B616C69676E2D6974656D733A666C65782D656E643B2D7765626B69742D626F782D7061';
wwv_flow_api.g_varchar2_table(14) := '636B3A666C65782D73746172743B2D7765626B69742D6A7573746966792D636F6E74656E743A666C65782D73746172743B2D6D732D666C65782D7061636B3A666C65782D73746172743B6A7573746966792D636F6E74656E743A666C65782D7374617274';
wwv_flow_api.g_varchar2_table(15) := '3B746578742D616C69676E3A6C6566743B746578742D616E63686F723A73746172747D2E63742D63686172742D626172202E63742D6C6162656C2E63742D686F72697A6F6E74616C2E63742D73746172747B2D7765626B69742D626F782D616C69676E3A';
wwv_flow_api.g_varchar2_table(16) := '666C65782D656E643B2D7765626B69742D616C69676E2D6974656D733A666C65782D656E643B2D6D732D666C65782D616C69676E3A666C65782D656E643B616C69676E2D6974656D733A666C65782D656E643B2D7765626B69742D626F782D7061636B3A';
wwv_flow_api.g_varchar2_table(17) := '63656E7465723B2D7765626B69742D6A7573746966792D636F6E74656E743A63656E7465723B2D6D732D666C65782D7061636B3A63656E7465723B6A7573746966792D636F6E74656E743A63656E7465723B746578742D616C69676E3A63656E7465723B';
wwv_flow_api.g_varchar2_table(18) := '746578742D616E63686F723A73746172747D2E63742D63686172742D626172202E63742D6C6162656C2E63742D686F72697A6F6E74616C2E63742D656E647B2D7765626B69742D626F782D616C69676E3A666C65782D73746172743B2D7765626B69742D';
wwv_flow_api.g_varchar2_table(19) := '616C69676E2D6974656D733A666C65782D73746172743B2D6D732D666C65782D616C69676E3A666C65782D73746172743B616C69676E2D6974656D733A666C65782D73746172743B2D7765626B69742D626F782D7061636B3A63656E7465723B2D776562';
wwv_flow_api.g_varchar2_table(20) := '6B69742D6A7573746966792D636F6E74656E743A63656E7465723B2D6D732D666C65782D7061636B3A63656E7465723B6A7573746966792D636F6E74656E743A63656E7465723B746578742D616C69676E3A63656E7465723B746578742D616E63686F72';
wwv_flow_api.g_varchar2_table(21) := '3A73746172747D2E63742D63686172742D6261722E63742D686F72697A6F6E74616C2D62617273202E63742D6C6162656C2E63742D686F72697A6F6E74616C2E63742D73746172747B2D7765626B69742D626F782D616C69676E3A666C65782D656E643B';
wwv_flow_api.g_varchar2_table(22) := '2D7765626B69742D616C69676E2D6974656D733A666C65782D656E643B2D6D732D666C65782D616C69676E3A666C65782D656E643B616C69676E2D6974656D733A666C65782D656E643B2D7765626B69742D626F782D7061636B3A666C65782D73746172';
wwv_flow_api.g_varchar2_table(23) := '743B2D7765626B69742D6A7573746966792D636F6E74656E743A666C65782D73746172743B2D6D732D666C65782D7061636B3A666C65782D73746172743B6A7573746966792D636F6E74656E743A666C65782D73746172743B746578742D616C69676E3A';
wwv_flow_api.g_varchar2_table(24) := '6C6566743B746578742D616E63686F723A73746172747D2E63742D63686172742D6261722E63742D686F72697A6F6E74616C2D62617273202E63742D6C6162656C2E63742D686F72697A6F6E74616C2E63742D656E647B2D7765626B69742D626F782D61';
wwv_flow_api.g_varchar2_table(25) := '6C69676E3A666C65782D73746172743B2D7765626B69742D616C69676E2D6974656D733A666C65782D73746172743B2D6D732D666C65782D616C69676E3A666C65782D73746172743B616C69676E2D6974656D733A666C65782D73746172743B2D776562';
wwv_flow_api.g_varchar2_table(26) := '6B69742D626F782D7061636B3A666C65782D73746172743B2D7765626B69742D6A7573746966792D636F6E74656E743A666C65782D73746172743B2D6D732D666C65782D7061636B3A666C65782D73746172743B6A7573746966792D636F6E74656E743A';
wwv_flow_api.g_varchar2_table(27) := '666C65782D73746172743B746578742D616C69676E3A6C6566743B746578742D616E63686F723A73746172747D2E63742D63686172742D6261722E63742D686F72697A6F6E74616C2D62617273202E63742D6C6162656C2E63742D766572746963616C2E';
wwv_flow_api.g_varchar2_table(28) := '63742D73746172747B2D7765626B69742D626F782D616C69676E3A63656E7465723B2D7765626B69742D616C69676E2D6974656D733A63656E7465723B2D6D732D666C65782D616C69676E3A63656E7465723B616C69676E2D6974656D733A63656E7465';
wwv_flow_api.g_varchar2_table(29) := '723B2D7765626B69742D626F782D7061636B3A666C65782D656E643B2D7765626B69742D6A7573746966792D636F6E74656E743A666C65782D656E643B2D6D732D666C65782D7061636B3A666C65782D656E643B6A7573746966792D636F6E74656E743A';
wwv_flow_api.g_varchar2_table(30) := '666C65782D656E643B746578742D616C69676E3A72696768743B746578742D616E63686F723A656E647D2E63742D63686172742D6261722E63742D686F72697A6F6E74616C2D62617273202E63742D6C6162656C2E63742D766572746963616C2E63742D';
wwv_flow_api.g_varchar2_table(31) := '656E647B2D7765626B69742D626F782D616C69676E3A63656E7465723B2D7765626B69742D616C69676E2D6974656D733A63656E7465723B2D6D732D666C65782D616C69676E3A63656E7465723B616C69676E2D6974656D733A63656E7465723B2D7765';
wwv_flow_api.g_varchar2_table(32) := '626B69742D626F782D7061636B3A666C65782D73746172743B2D7765626B69742D6A7573746966792D636F6E74656E743A666C65782D73746172743B2D6D732D666C65782D7061636B3A666C65782D73746172743B6A7573746966792D636F6E74656E74';
wwv_flow_api.g_varchar2_table(33) := '3A666C65782D73746172743B746578742D616C69676E3A6C6566743B746578742D616E63686F723A656E647D2E63742D677269647B7374726F6B653A7267626128302C302C302C2E32293B7374726F6B652D77696474683A3170783B7374726F6B652D64';
wwv_flow_api.g_varchar2_table(34) := '61736861727261793A3270787D2E63742D677269642D6261636B67726F756E647B66696C6C3A6E6F6E657D2E63742D706F696E747B7374726F6B652D77696474683A313070783B7374726F6B652D6C696E656361703A726F756E647D2E63742D6C696E65';
wwv_flow_api.g_varchar2_table(35) := '7B66696C6C3A6E6F6E653B7374726F6B652D77696474683A3470787D2E63742D617265617B7374726F6B653A6E6F6E653B66696C6C2D6F7061636974793A2E317D2E63742D6261727B66696C6C3A6E6F6E653B7374726F6B652D77696474683A31307078';
wwv_flow_api.g_varchar2_table(36) := '7D2E63742D736C6963652D646F6E75747B66696C6C3A6E6F6E653B7374726F6B652D77696474683A363070787D2E63742D7365726965732D61202E63742D6261722C2E63742D7365726965732D61202E63742D6C696E652C2E63742D7365726965732D61';
wwv_flow_api.g_varchar2_table(37) := '202E63742D706F696E742C2E63742D7365726965732D61202E63742D736C6963652D646F6E75747B7374726F6B653A236437303230367D2E63742D7365726965732D61202E63742D617265612C2E63742D7365726965732D61202E63742D736C6963652D';
wwv_flow_api.g_varchar2_table(38) := '646F6E75742D736F6C69642C2E63742D7365726965732D61202E63742D736C6963652D7069657B66696C6C3A236437303230367D2E63742D7365726965732D62202E63742D6261722C2E63742D7365726965732D62202E63742D6C696E652C2E63742D73';
wwv_flow_api.g_varchar2_table(39) := '65726965732D62202E63742D706F696E742C2E63742D7365726965732D62202E63742D736C6963652D646F6E75747B7374726F6B653A236630356234667D2E63742D7365726965732D62202E63742D617265612C2E63742D7365726965732D62202E6374';
wwv_flow_api.g_varchar2_table(40) := '2D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D62202E63742D736C6963652D7069657B66696C6C3A236630356234667D2E63742D7365726965732D63202E63742D6261722C2E63742D7365726965732D63202E63742D6C696E';
wwv_flow_api.g_varchar2_table(41) := '652C2E63742D7365726965732D63202E63742D706F696E742C2E63742D7365726965732D63202E63742D736C6963652D646F6E75747B7374726F6B653A236634633633647D2E63742D7365726965732D63202E63742D617265612C2E63742D7365726965';
wwv_flow_api.g_varchar2_table(42) := '732D63202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D63202E63742D736C6963652D7069657B66696C6C3A236634633633647D2E63742D7365726965732D64202E63742D6261722C2E63742D7365726965732D6420';
wwv_flow_api.g_varchar2_table(43) := '2E63742D6C696E652C2E63742D7365726965732D64202E63742D706F696E742C2E63742D7365726965732D64202E63742D736C6963652D646F6E75747B7374726F6B653A236431373930357D2E63742D7365726965732D64202E63742D617265612C2E63';
wwv_flow_api.g_varchar2_table(44) := '742D7365726965732D64202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D64202E63742D736C6963652D7069657B66696C6C3A236431373930357D2E63742D7365726965732D65202E63742D6261722C2E63742D7365';
wwv_flow_api.g_varchar2_table(45) := '726965732D65202E63742D6C696E652C2E63742D7365726965732D65202E63742D706F696E742C2E63742D7365726965732D65202E63742D736C6963652D646F6E75747B7374726F6B653A233435336433667D2E63742D7365726965732D65202E63742D';
wwv_flow_api.g_varchar2_table(46) := '617265612C2E63742D7365726965732D65202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D65202E63742D736C6963652D7069657B66696C6C3A233435336433667D2E63742D7365726965732D66202E63742D626172';
wwv_flow_api.g_varchar2_table(47) := '2C2E63742D7365726965732D66202E63742D6C696E652C2E63742D7365726965732D66202E63742D706F696E742C2E63742D7365726965732D66202E63742D736C6963652D646F6E75747B7374726F6B653A233539393232627D2E63742D736572696573';
wwv_flow_api.g_varchar2_table(48) := '2D66202E63742D617265612C2E63742D7365726965732D66202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D66202E63742D736C6963652D7069657B66696C6C3A233539393232627D2E63742D7365726965732D6720';
wwv_flow_api.g_varchar2_table(49) := '2E63742D6261722C2E63742D7365726965732D67202E63742D6C696E652C2E63742D7365726965732D67202E63742D706F696E742C2E63742D7365726965732D67202E63742D736C6963652D646F6E75747B7374726F6B653A233035343464337D2E6374';
wwv_flow_api.g_varchar2_table(50) := '2D7365726965732D67202E63742D617265612C2E63742D7365726965732D67202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D67202E63742D736C6963652D7069657B66696C6C3A233035343464337D2E63742D7365';
wwv_flow_api.g_varchar2_table(51) := '726965732D68202E63742D6261722C2E63742D7365726965732D68202E63742D6C696E652C2E63742D7365726965732D68202E63742D706F696E742C2E63742D7365726965732D68202E63742D736C6963652D646F6E75747B7374726F6B653A23366230';
wwv_flow_api.g_varchar2_table(52) := '3339327D2E63742D7365726965732D68202E63742D617265612C2E63742D7365726965732D68202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D68202E63742D736C6963652D7069657B66696C6C3A23366230333932';
wwv_flow_api.g_varchar2_table(53) := '7D2E63742D7365726965732D69202E63742D6261722C2E63742D7365726965732D69202E63742D6C696E652C2E63742D7365726965732D69202E63742D706F696E742C2E63742D7365726965732D69202E63742D736C6963652D646F6E75747B7374726F';
wwv_flow_api.g_varchar2_table(54) := '6B653A236630356234667D2E63742D7365726965732D69202E63742D617265612C2E63742D7365726965732D69202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D69202E63742D736C6963652D7069657B66696C6C3A';
wwv_flow_api.g_varchar2_table(55) := '236630356234667D2E63742D7365726965732D6A202E63742D6261722C2E63742D7365726965732D6A202E63742D6C696E652C2E63742D7365726965732D6A202E63742D706F696E742C2E63742D7365726965732D6A202E63742D736C6963652D646F6E';
wwv_flow_api.g_varchar2_table(56) := '75747B7374726F6B653A236464613435387D2E63742D7365726965732D6A202E63742D617265612C2E63742D7365726965732D6A202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D6A202E63742D736C6963652D7069';
wwv_flow_api.g_varchar2_table(57) := '657B66696C6C3A236464613435387D2E63742D7365726965732D6B202E63742D6261722C2E63742D7365726965732D6B202E63742D6C696E652C2E63742D7365726965732D6B202E63742D706F696E742C2E63742D7365726965732D6B202E63742D736C';
wwv_flow_api.g_varchar2_table(58) := '6963652D646F6E75747B7374726F6B653A236561636637647D2E63742D7365726965732D6B202E63742D617265612C2E63742D7365726965732D6B202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D6B202E63742D73';
wwv_flow_api.g_varchar2_table(59) := '6C6963652D7069657B66696C6C3A236561636637647D2E63742D7365726965732D6C202E63742D6261722C2E63742D7365726965732D6C202E63742D6C696E652C2E63742D7365726965732D6C202E63742D706F696E742C2E63742D7365726965732D6C';
wwv_flow_api.g_varchar2_table(60) := '202E63742D736C6963652D646F6E75747B7374726F6B653A233836373937647D2E63742D7365726965732D6C202E63742D617265612C2E63742D7365726965732D6C202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D';
wwv_flow_api.g_varchar2_table(61) := '6C202E63742D736C6963652D7069657B66696C6C3A233836373937647D2E63742D7365726965732D6D202E63742D6261722C2E63742D7365726965732D6D202E63742D6C696E652C2E63742D7365726965732D6D202E63742D706F696E742C2E63742D73';
wwv_flow_api.g_varchar2_table(62) := '65726965732D6D202E63742D736C6963652D646F6E75747B7374726F6B653A236232633332367D2E63742D7365726965732D6D202E63742D617265612C2E63742D7365726965732D6D202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D';
wwv_flow_api.g_varchar2_table(63) := '7365726965732D6D202E63742D736C6963652D7069657B66696C6C3A236232633332367D2E63742D7365726965732D6E202E63742D6261722C2E63742D7365726965732D6E202E63742D6C696E652C2E63742D7365726965732D6E202E63742D706F696E';
wwv_flow_api.g_varchar2_table(64) := '742C2E63742D7365726965732D6E202E63742D736C6963652D646F6E75747B7374726F6B653A233631383865327D2E63742D7365726965732D6E202E63742D617265612C2E63742D7365726965732D6E202E63742D736C6963652D646F6E75742D736F6C';
wwv_flow_api.g_varchar2_table(65) := '69642C2E63742D7365726965732D6E202E63742D736C6963652D7069657B66696C6C3A233631383865327D2E63742D7365726965732D6F202E63742D6261722C2E63742D7365726965732D6F202E63742D6C696E652C2E63742D7365726965732D6F202E';
wwv_flow_api.g_varchar2_table(66) := '63742D706F696E742C2E63742D7365726965732D6F202E63742D736C6963652D646F6E75747B7374726F6B653A236137343863617D2E63742D7365726965732D6F202E63742D617265612C2E63742D7365726965732D6F202E63742D736C6963652D646F';
wwv_flow_api.g_varchar2_table(67) := '6E75742D736F6C69642C2E63742D7365726965732D6F202E63742D736C6963652D7069657B66696C6C3A236137343863617D2E63742D7371756172657B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A31';
wwv_flow_api.g_varchar2_table(68) := '3030257D2E63742D7371756172653A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A313030257D2E63742D73';
wwv_flow_api.g_varchar2_table(69) := '71756172653A61667465727B636F6E74656E743A22223B646973706C61793A7461626C653B636C6561723A626F74687D2E63742D7371756172653E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A30';
wwv_flow_api.g_varchar2_table(70) := '3B6C6566743A307D2E63742D6D696E6F722D7365636F6E647B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6D696E6F722D7365636F6E643A6265666F72657B646973706C61793A';
wwv_flow_api.g_varchar2_table(71) := '626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A39332E3735257D2E63742D6D696E6F722D7365636F6E643A61667465727B636F6E74656E743A2222';
wwv_flow_api.g_varchar2_table(72) := '3B646973706C61793A7461626C653B636C6561723A626F74687D2E63742D6D696E6F722D7365636F6E643E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D6D616A6F';
wwv_flow_api.g_varchar2_table(73) := '722D7365636F6E647B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6D616A6F722D7365636F6E643A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C656674';
wwv_flow_api.g_varchar2_table(74) := '3B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A38382E38383838383838383839257D2E63742D6D616A6F722D7365636F6E643A61667465727B636F6E74656E743A22223B646973706C6179';
wwv_flow_api.g_varchar2_table(75) := '3A7461626C653B636C6561723A626F74687D2E63742D6D616A6F722D7365636F6E643E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D6D696E6F722D74686972647B';
wwv_flow_api.g_varchar2_table(76) := '646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6D696E6F722D74686972643A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22';
wwv_flow_api.g_varchar2_table(77) := '223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A38332E33333333333333333333257D2E63742D6D696E6F722D74686972643A61667465727B636F6E74656E743A22223B646973706C61793A7461626C653B636C6561';
wwv_flow_api.g_varchar2_table(78) := '723A626F74687D2E63742D6D696E6F722D74686972643E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D6D616A6F722D74686972647B646973706C61793A626C6F63';
wwv_flow_api.g_varchar2_table(79) := '6B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6D616A6F722D74686972643A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865';
wwv_flow_api.g_varchar2_table(80) := '696768743A303B70616464696E672D626F74746F6D3A3830257D2E63742D6D616A6F722D74686972643A61667465727B636F6E74656E743A22223B646973706C61793A7461626C653B636C6561723A626F74687D2E63742D6D616A6F722D74686972643E';
wwv_flow_api.g_varchar2_table(81) := '7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D706572666563742D666F757274687B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B';
wwv_flow_api.g_varchar2_table(82) := '77696474683A313030257D2E63742D706572666563742D666F757274683A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F';
wwv_flow_api.g_varchar2_table(83) := '74746F6D3A3735257D2E63742D706572666563742D666F757274683A61667465727B636F6E74656E743A22223B646973706C61793A7461626C653B636C6561723A626F74687D2E63742D706572666563742D666F757274683E7376677B646973706C6179';
wwv_flow_api.g_varchar2_table(84) := '3A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D706572666563742D66696674687B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E';
wwv_flow_api.g_varchar2_table(85) := '63742D706572666563742D66696674683A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A36362E3636363636';
wwv_flow_api.g_varchar2_table(86) := '3636363637257D2E63742D706572666563742D66696674683A61667465727B636F6E74656E743A22223B646973706C61793A7461626C653B636C6561723A626F74687D2E63742D706572666563742D66696674683E7376677B646973706C61793A626C6F';
wwv_flow_api.g_varchar2_table(87) := '636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D6D696E6F722D73697874687B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6D696E';
wwv_flow_api.g_varchar2_table(88) := '6F722D73697874683A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A36322E35257D2E63742D6D696E6F722D';
wwv_flow_api.g_varchar2_table(89) := '73697874683A61667465727B636F6E74656E743A22223B646973706C61793A7461626C653B636C6561723A626F74687D2E63742D6D696E6F722D73697874683E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B';
wwv_flow_api.g_varchar2_table(90) := '746F703A303B6C6566743A307D2E63742D676F6C64656E2D73656374696F6E7B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D676F6C64656E2D73656374696F6E3A6265666F7265';
wwv_flow_api.g_varchar2_table(91) := '7B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A36312E383034363937313537257D2E63742D676F6C64656E2D73656374696F';
wwv_flow_api.g_varchar2_table(92) := '6E3A61667465727B636F6E74656E743A22223B646973706C61793A7461626C653B636C6561723A626F74687D2E63742D676F6C64656E2D73656374696F6E3E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B74';
wwv_flow_api.g_varchar2_table(93) := '6F703A303B6C6566743A307D2E63742D6D616A6F722D73697874687B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6D616A6F722D73697874683A6265666F72657B646973706C61';
wwv_flow_api.g_varchar2_table(94) := '793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A3630257D2E63742D6D616A6F722D73697874683A61667465727B636F6E74656E743A22223B64';
wwv_flow_api.g_varchar2_table(95) := '6973706C61793A7461626C653B636C6561723A626F74687D2E63742D6D616A6F722D73697874683E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D6D696E6F722D73';
wwv_flow_api.g_varchar2_table(96) := '6576656E74687B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6D696E6F722D736576656E74683A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B';
wwv_flow_api.g_varchar2_table(97) := '636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A35362E3235257D2E63742D6D696E6F722D736576656E74683A61667465727B636F6E74656E743A22223B646973706C61793A7461626C653B63';
wwv_flow_api.g_varchar2_table(98) := '6C6561723A626F74687D2E63742D6D696E6F722D736576656E74683E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D6D616A6F722D736576656E74687B646973706C';
wwv_flow_api.g_varchar2_table(99) := '61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6D616A6F722D736576656E74683A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77';
wwv_flow_api.g_varchar2_table(100) := '696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A35332E33333333333333333333257D2E63742D6D616A6F722D736576656E74683A61667465727B636F6E74656E743A22223B646973706C61793A7461626C653B636C656172';
wwv_flow_api.g_varchar2_table(101) := '3A626F74687D2E63742D6D616A6F722D736576656E74683E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D6F63746176657B646973706C61793A626C6F636B3B706F';
wwv_flow_api.g_varchar2_table(102) := '736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6F63746176653A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B7061';
wwv_flow_api.g_varchar2_table(103) := '6464696E672D626F74746F6D3A3530257D2E63742D6F63746176653A61667465727B636F6E74656E743A22223B646973706C61793A7461626C653B636C6561723A626F74687D2E63742D6F63746176653E7376677B646973706C61793A626C6F636B3B70';
wwv_flow_api.g_varchar2_table(104) := '6F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D6D616A6F722D74656E74687B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6D616A6F722D74';
wwv_flow_api.g_varchar2_table(105) := '656E74683A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A3430257D2E63742D6D616A6F722D74656E74683A';
wwv_flow_api.g_varchar2_table(106) := '61667465727B636F6E74656E743A22223B646973706C61793A7461626C653B636C6561723A626F74687D2E63742D6D616A6F722D74656E74683E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B';
wwv_flow_api.g_varchar2_table(107) := '6C6566743A307D2E63742D6D616A6F722D656C6576656E74687B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6D616A6F722D656C6576656E74683A6265666F72657B646973706C';
wwv_flow_api.g_varchar2_table(108) := '61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A33372E35257D2E63742D6D616A6F722D656C6576656E74683A61667465727B636F6E74656E';
wwv_flow_api.g_varchar2_table(109) := '743A22223B646973706C61793A7461626C653B636C6561723A626F74687D2E63742D6D616A6F722D656C6576656E74683E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63';
wwv_flow_api.g_varchar2_table(110) := '742D6D616A6F722D7477656C6674687B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6D616A6F722D7477656C6674683A6265666F72657B646973706C61793A626C6F636B3B666C';
wwv_flow_api.g_varchar2_table(111) := '6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A33332E33333333333333333333257D2E63742D6D616A6F722D7477656C6674683A61667465727B636F6E74656E743A22';
wwv_flow_api.g_varchar2_table(112) := '223B646973706C61793A7461626C653B636C6561723A626F74687D2E63742D6D616A6F722D7477656C6674683E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D646F';
wwv_flow_api.g_varchar2_table(113) := '75626C652D6F63746176657B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D646F75626C652D6F63746176653A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A';
wwv_flow_api.g_varchar2_table(114) := '6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A3235257D2E63742D646F75626C652D6F63746176653A61667465727B636F6E74656E743A22223B646973706C61793A7461626C65';
wwv_flow_api.g_varchar2_table(115) := '3B636C6561723A626F74687D2E63742D646F75626C652D6F63746176653E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E732D672D636F6E7461696E65727B77696474683A';
wwv_flow_api.g_varchar2_table(116) := '3938253B6D617267696E2D6C6566743A6175746F3B6D617267696E2D72696768743A6175746F7D2E732D672D726F777B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E732D672D726F77205B636C6173735E3D732D672D636F';
wwv_flow_api.g_varchar2_table(117) := '6C5D7B666C6F61743A6C6566743B6D617267696E3A2E3572656D2032253B6D696E2D6865696768743A2E31323572656D7D2E732D672D636F6C2D312C2E732D672D636F6C2D31302C2E732D672D636F6C2D31312C2E732D672D636F6C2D31322C2E732D67';
wwv_flow_api.g_varchar2_table(118) := '2D636F6C2D322C2E732D672D636F6C2D332C2E732D672D636F6C2D342C2E732D672D636F6C2D352C2E732D672D636F6C2D362C2E732D672D636F6C2D372C2E732D672D636F6C2D382C2E732D672D636F6C2D397B77696474683A3936257D2E732D672D63';
wwv_flow_api.g_varchar2_table(119) := '6F6C2D312D736D7B77696474683A342E3333257D2E732D672D636F6C2D322D736D7B77696474683A31322E3636257D2E732D672D636F6C2D332D736D7B77696474683A3231257D2E732D672D636F6C2D342D736D7B77696474683A32392E3333257D2E73';
wwv_flow_api.g_varchar2_table(120) := '2D672D636F6C2D352D736D7B77696474683A33372E3636257D2E732D672D636F6C2D362D736D7B77696474683A3436257D2E732D672D636F6C2D372D736D7B77696474683A35342E3333257D2E732D672D636F6C2D382D736D7B77696474683A36322E36';
wwv_flow_api.g_varchar2_table(121) := '36257D2E732D672D636F6C2D392D736D7B77696474683A3731257D2E732D672D636F6C2D31302D736D7B77696474683A37392E3333257D2E732D672D636F6C2D31312D736D7B77696474683A38372E3636257D2E732D672D636F6C2D31322D736D7B7769';
wwv_flow_api.g_varchar2_table(122) := '6474683A3936257D2E732D672D726F773A3A61667465727B636F6E74656E743A22223B646973706C61793A7461626C653B636C6561723A626F74687D2E68696464656E2D736D7B646973706C61793A6E6F6E657D406D65646961206F6E6C792073637265';
wwv_flow_api.g_varchar2_table(123) := '656E20616E6420286D696E2D77696474683A33332E3735656D297B2E732D672D636F6E7461696E65727B77696474683A3938257D7D406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A3630656D297B2E732D672D636F';
wwv_flow_api.g_varchar2_table(124) := '6C2D312C2E732D672D636F6C2D322C2E732D672D636F6C2D332C2E732D672D636F6C2D342C2E732D672D636F6C2D352C2E732D672D636F6C2D367B77696474683A3436257D2E732D672D636F6C2D31302C2E732D672D636F6C2D31312C2E732D672D636F';
wwv_flow_api.g_varchar2_table(125) := '6C2D31322C2E732D672D636F6C2D372C2E732D672D636F6C2D382C2E732D672D636F6C2D397B77696474683A3936257D2E68696464656E2D736D7B646973706C61793A626C6F636B7D7D406D65646961206F6E6C792073637265656E20616E6420286D69';
wwv_flow_api.g_varchar2_table(126) := '6E2D77696474683A3636656D297B2E732D672D636F6E7461696E65727B77696474683A3938257D2E732D672D636F6C2D317B77696474683A342E3333257D2E732D672D636F6C2D327B77696474683A31322E3636257D2E732D672D636F6C2D337B776964';
wwv_flow_api.g_varchar2_table(127) := '74683A3231257D2E732D672D636F6C2D347B77696474683A32392E3333257D2E732D672D636F6C2D357B77696474683A33372E3636257D2E732D672D636F6C2D367B77696474683A3436257D2E732D672D636F6C2D377B77696474683A35342E3333257D';
wwv_flow_api.g_varchar2_table(128) := '2E732D672D636F6C2D387B77696474683A36322E3636257D2E732D672D636F6C2D397B77696474683A3731257D2E732D672D636F6C2D31307B77696474683A37392E3333257D2E732D672D636F6C2D31317B77696474683A38372E3636257D2E732D672D';
wwv_flow_api.g_varchar2_table(129) := '636F6C2D31327B77696474683A3936257D2E68696464656E2D736D7B646973706C61793A626C6F636B7D7D2E63742D6C6F616465727B706F736974696F6E3A6162736F6C7574653B746F703A373070783B77696474683A313030253B7A2D696E6465783A';
wwv_flow_api.g_varchar2_table(130) := '313B746578742D616C69676E3A63656E7465727D2E63742D6C6162656C7B666F6E742D73697A653A313270787D2E61742D636172647B646973706C61793A696E6C696E652D626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A31';
wwv_flow_api.g_varchar2_table(131) := '3030253B6D617267696E3A3235707820303B626F782D736861646F773A3020317078203470782030207267626128302C302C302C2E3434293B626F726465722D7261646975733A3170783B636F6C6F723A7267626128302C302C302C2E3837293B626163';
wwv_flow_api.g_varchar2_table(132) := '6B67726F756E643A236666667D2E61742D636172643A686F7665723E2E636172642D6865616465727B2D7765626B69742D66696C7465723A677261797363616C652831303025293B66696C7465723A677261797363616C652831303025297D2E61742D63';
wwv_flow_api.g_varchar2_table(133) := '617264202E636172642D6865696768742D696E64696361746F727B6D617267696E2D746F703A313030257D2E61742D63617264202E7469746C657B6D617267696E2D746F703A303B6D617267696E2D626F74746F6D3A3570787D2E61742D63617264202E';
wwv_flow_api.g_varchar2_table(134) := '636172642D696D6167657B6865696768743A3630253B706F736974696F6E3A72656C61746976653B6F766572666C6F773A68696464656E3B6D617267696E2D6C6566743A313570783B6D617267696E2D72696768743A313570783B6D617267696E2D746F';
wwv_flow_api.g_varchar2_table(135) := '703A2D333070783B626F726465722D7261646975733A3670787D2E61742D63617264202E636172642D696D61676520696D677B77696474683A313030253B6865696768743A313030253B626F726465722D7261646975733A3670783B706F696E7465722D';
wwv_flow_api.g_varchar2_table(136) := '6576656E74733A6E6F6E657D2E61742D63617264202E636172642D696D616765202E636172642D7469746C657B706F736974696F6E3A6162736F6C7574653B626F74746F6D3A313570783B6C6566743A313570783B636F6C6F723A236666663B666F6E74';
wwv_flow_api.g_varchar2_table(137) := '2D73697A653A312E33656D3B746578742D736861646F773A30203270782035707820726762612833332C33332C33332C2E35297D2E61742D63617264202E63617465676F72793A6E6F74285B636C6173732A3D746578742D5D297B636F6C6F723A233939';
wwv_flow_api.g_varchar2_table(138) := '397D2E61742D63617264202E636172642D636F6E74656E747B70616464696E673A3135707820323070787D2E61742D63617264202E636172642D636F6E74656E74202E63617465676F72797B6D617267696E2D626F74746F6D3A307D2E61742D63617264';
wwv_flow_api.g_varchar2_table(139) := '202E636172642D6865616465727B626F782D736861646F773A3020313070782033307078202D31327078207267626128302C302C302C2E3432292C302034707820323570782030207267626128302C302C302C2E3132292C30203870782031307078202D';
wwv_flow_api.g_varchar2_table(140) := '357078207267626128302C302C302C2E32293B6D617267696E3A2D32307078203135707820303B626F726465722D7261646975733A3170783B70616464696E673A313570783B6261636B67726F756E642D636F6C6F723A233939393B6261636B67726F75';
wwv_flow_api.g_varchar2_table(141) := '6E642D7265706561743A6E6F2D7265706561743B6261636B67726F756E642D73697A653A636F7665723B6261636B67726F756E642D706F736974696F6E3A63656E7465723B7472616E736974696F6E3A616C6C202E377320656173652D6F75747D2E6174';
wwv_flow_api.g_varchar2_table(142) := '2D63617264202E636172642D686561646572202E7469746C657B636F6C6F723A236666667D2E61742D63617264202E636172642D686561646572202E63617465676F72797B6D617267696E2D626F74746F6D3A303B636F6C6F723A72676261283235352C';
wwv_flow_api.g_varchar2_table(143) := '3235352C3235352C2E3632297D2E61742D63617264202E636172642D6865616465722E636172642D63686172747B70616464696E673A303B6D696E2D6865696768743A31363070787D2E61742D63617264202E636172642D6865616465722E636172642D';
wwv_flow_api.g_varchar2_table(144) := '63686172742B2E636F6E74656E742068347B6D617267696E2D746F703A307D2E61742D63617264202E636172642D686561646572202E63742D6C6162656C7B636F6C6F723A72676261283235352C3235352C3235352C2E37297D2E61742D63617264202E';
wwv_flow_api.g_varchar2_table(145) := '636172642D686561646572202E63742D677269647B7374726F6B653A72676261283235352C3235352C3235352C2E32297D2E61742D63617264202E63686172742D7469746C657B706F736974696F6E3A6162736F6C7574653B746F703A323570783B7769';
wwv_flow_api.g_varchar2_table(146) := '6474683A313030253B746578742D616C69676E3A63656E7465727D2E61742D63617264202E63686172742D7469746C652068337B6D617267696E3A303B636F6C6F723A236666667D2E61742D63617264202E63686172742D7469746C652068367B6D6172';
wwv_flow_api.g_varchar2_table(147) := '67696E3A303B636F6C6F723A72676261283235352C3235352C3235352C2E34297D2E61742D63617264202E636172642D666F6F7465727B6D617267696E3A30203230707820313070783B70616464696E672D746F703A313070783B626F726465722D746F';
wwv_flow_api.g_varchar2_table(148) := '703A31707820736F6C696420236565657D2E61742D63617264202E636172642D666F6F746572202E636F6E74656E747B646973706C61793A626C6F636B7D2E61742D63617264202E636172642D666F6F746572206469767B646973706C61793A696E6C69';
wwv_flow_api.g_varchar2_table(149) := '6E652D626C6F636B7D2E61742D63617264202E636172642D666F6F746572202E617574686F727B636F6C6F723A233939397D2E61742D63617264202E636172642D666F6F746572202E73746174737B6C696E652D6865696768743A323270783B636F6C6F';
wwv_flow_api.g_varchar2_table(150) := '723A233939393B666F6E742D73697A653A313270787D2E61742D63617264202E636172642D666F6F746572202E7374617473202E6D6174657269616C2D69636F6E737B706F736974696F6E3A72656C61746976653B746F703A3470783B666F6E742D7369';
wwv_flow_api.g_varchar2_table(151) := '7A653A313670787D2E61742D63617264202E636172642D666F6F7465722068367B636F6C6F723A233939397D2E61742D6361726420696D677B77696474683A313030253B6865696768743A6175746F7D2E61742D63617264202E7461626C657B6D617267';
wwv_flow_api.g_varchar2_table(152) := '696E2D626F74746F6D3A307D2E61742D63617264202E7461626C652074723A66697273742D6368696C642074647B626F726465722D746F703A6E6F6E657D2E61742D636172642D7374617473202E7469746C657B6D617267696E3A307D2E61742D636172';
wwv_flow_api.g_varchar2_table(153) := '642D7374617473202E636172642D6865616465727B666C6F61743A6C6566743B746578742D616C69676E3A63656E7465727D2E61742D636172642D7374617473202E636172642D68656164657220697B666F6E742D73697A653A333670783B6C696E652D';
wwv_flow_api.g_varchar2_table(154) := '6865696768743A353670783B77696474683A353670783B6865696768743A353670783B646973706C61793A626C6F636B7D2E61742D636172642D7374617473202E636172642D636F6E74656E747B746578742D616C69676E3A72696768743B7061646469';
wwv_flow_api.g_varchar2_table(155) := '6E672D746F703A313070787D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(31841054170127142635)
,p_plugin_id=>wwv_flow_api.id(50649497605321085949)
,p_file_name=>'materialcards.pkgd.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2166756E6374696F6E28652C74297B2266756E6374696F6E223D3D747970656F6620646566696E652626646566696E652E616D643F646566696E6528224368617274697374222C5B5D2C66756E6374696F6E28297B72657475726E20652E436861727469';
wwv_flow_api.g_varchar2_table(2) := '73743D7428297D293A226F626A656374223D3D747970656F66206D6F64756C6526266D6F64756C652E6578706F7274733F6D6F64756C652E6578706F7274733D7428293A652E43686172746973743D7428297D28746869732C66756E6374696F6E28297B';
wwv_flow_api.g_varchar2_table(3) := '76617220653D7B76657273696F6E3A22302E31312E34227D3B72657475726E2066756E6374696F6E28652C74297B2275736520737472696374223B76617220693D652E77696E646F772C6E3D652E646F63756D656E743B742E6E616D657370616365733D';
wwv_flow_api.g_varchar2_table(4) := '7B7376673A22687474703A2F2F7777772E77332E6F72672F323030302F737667222C786D6C6E733A22687474703A2F2F7777772E77332E6F72672F323030302F786D6C6E732F222C7868746D6C3A22687474703A2F2F7777772E77332E6F72672F313939';
wwv_flow_api.g_varchar2_table(5) := '392F7868746D6C222C786C696E6B3A22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B222C63743A22687474703A2F2F67696F6E6B756E7A2E6769746875622E636F6D2F63686172746973742D6A732F6374227D2C742E6E6F6F70';
wwv_flow_api.g_varchar2_table(6) := '3D66756E6374696F6E2865297B72657475726E20657D2C742E616C7068614E756D65726174653D66756E6374696F6E2865297B72657475726E20537472696E672E66726F6D43686172436F64652839372B65253236297D2C742E657874656E643D66756E';
wwv_flow_api.g_varchar2_table(7) := '6374696F6E2865297B76617220692C6E2C723B666F7228653D657C7C7B7D2C693D313B693C617267756D656E74732E6C656E6774683B692B2B297B6E3D617267756D656E74735B695D3B666F7228766172206120696E206E29226F626A65637422213D74';
wwv_flow_api.g_varchar2_table(8) := '7970656F6628723D6E5B615D297C7C6E756C6C3D3D3D727C7C7220696E7374616E63656F662041727261793F655B615D3D723A655B615D3D742E657874656E6428655B615D2C72297D72657475726E20657D2C742E7265706C616365416C6C3D66756E63';
wwv_flow_api.g_varchar2_table(9) := '74696F6E28652C742C69297B72657475726E20652E7265706C616365286E65772052656745787028742C226722292C69297D2C742E656E73757265556E69743D66756E6374696F6E28652C74297B72657475726E226E756D626572223D3D747970656F66';
wwv_flow_api.g_varchar2_table(10) := '2065262628652B3D74292C657D2C742E7175616E746974793D66756E6374696F6E2865297B69662822737472696E67223D3D747970656F662065297B76617220743D2F5E285C642B295C732A282E2A29242F672E657865632865293B72657475726E7B76';
wwv_flow_api.g_varchar2_table(11) := '616C75653A2B745B315D2C756E69743A745B325D7C7C766F696420307D7D72657475726E7B76616C75653A657D7D2C742E717565727953656C6563746F723D66756E6374696F6E2865297B72657475726E206520696E7374616E63656F66204E6F64653F';
wwv_flow_api.g_varchar2_table(12) := '653A6E2E717565727953656C6563746F722865297D2C742E74696D65733D66756E6374696F6E2865297B72657475726E2041727261792E6170706C79286E756C6C2C6E6577204172726179286529297D2C742E73756D3D66756E6374696F6E28652C7429';
wwv_flow_api.g_varchar2_table(13) := '7B72657475726E20652B28747C7C30297D2C742E6D61704D756C7469706C793D66756E6374696F6E2865297B72657475726E2066756E6374696F6E2874297B72657475726E20742A657D7D2C742E6D61704164643D66756E6374696F6E2865297B726574';
wwv_flow_api.g_varchar2_table(14) := '75726E2066756E6374696F6E2874297B72657475726E20742B657D7D2C742E73657269616C4D61703D66756E6374696F6E28652C69297B766172206E3D5B5D2C723D4D6174682E6D61782E6170706C79286E756C6C2C652E6D61702866756E6374696F6E';
wwv_flow_api.g_varchar2_table(15) := '2865297B72657475726E20652E6C656E6774687D29293B72657475726E20742E74696D65732872292E666F72456163682866756E6374696F6E28742C72297B76617220613D652E6D61702866756E6374696F6E2865297B72657475726E20655B725D7D29';
wwv_flow_api.g_varchar2_table(16) := '3B6E5B725D3D692E6170706C79286E756C6C2C61297D292C6E7D2C742E726F756E6457697468507265636973696F6E3D66756E6374696F6E28652C69297B766172206E3D4D6174682E706F772831302C697C7C742E707265636973696F6E293B72657475';
wwv_flow_api.g_varchar2_table(17) := '726E204D6174682E726F756E6428652A6E292F6E7D2C742E707265636973696F6E3D382C742E6573636170696E674D61703D7B2226223A2226616D703B222C223C223A22266C743B222C223E223A222667743B222C2722273A222671756F743B222C2227';
wwv_flow_api.g_varchar2_table(18) := '223A2226233033393B227D2C742E73657269616C697A653D66756E6374696F6E2865297B72657475726E206E756C6C3D3D3D657C7C766F696420303D3D3D653F653A28226E756D626572223D3D747970656F6620653F653D22222B653A226F626A656374';
wwv_flow_api.g_varchar2_table(19) := '223D3D747970656F662065262628653D4A534F4E2E737472696E67696679287B646174613A657D29292C4F626A6563742E6B65797328742E6573636170696E674D6170292E7265647563652866756E6374696F6E28652C69297B72657475726E20742E72';
wwv_flow_api.g_varchar2_table(20) := '65706C616365416C6C28652C692C742E6573636170696E674D61705B695D297D2C6529297D2C742E646573657269616C697A653D66756E6374696F6E2865297B69662822737472696E6722213D747970656F6620652972657475726E20653B653D4F626A';
wwv_flow_api.g_varchar2_table(21) := '6563742E6B65797328742E6573636170696E674D6170292E7265647563652866756E6374696F6E28652C69297B72657475726E20742E7265706C616365416C6C28652C742E6573636170696E674D61705B695D2C69297D2C65293B7472797B653D766F69';
wwv_flow_api.g_varchar2_table(22) := '642030213D3D28653D4A534F4E2E7061727365286529292E646174613F652E646174613A657D63617463682865297B7D72657475726E20657D2C742E6372656174655376673D66756E6374696F6E28652C692C6E2C72297B76617220613B72657475726E';
wwv_flow_api.g_varchar2_table(23) := '20693D697C7C2231303025222C6E3D6E7C7C2231303025222C41727261792E70726F746F747970652E736C6963652E63616C6C28652E717565727953656C6563746F72416C6C28227376672229292E66696C7465722866756E6374696F6E2865297B7265';
wwv_flow_api.g_varchar2_table(24) := '7475726E20652E6765744174747269627574654E5328742E6E616D657370616365732E786D6C6E732C22637422297D292E666F72456163682866756E6374696F6E2874297B652E72656D6F76654368696C642874297D292C613D6E657720742E53766728';
wwv_flow_api.g_varchar2_table(25) := '2273766722292E61747472287B77696474683A692C6865696768743A6E7D292E616464436C6173732872292C612E5F6E6F64652E7374796C652E77696474683D692C612E5F6E6F64652E7374796C652E6865696768743D6E2C652E617070656E64436869';
wwv_flow_api.g_varchar2_table(26) := '6C6428612E5F6E6F6465292C617D2C742E6E6F726D616C697A65446174613D66756E6374696F6E28652C692C6E297B76617220722C613D7B7261773A652C6E6F726D616C697A65643A7B7D7D3B72657475726E20612E6E6F726D616C697A65642E736572';
wwv_flow_api.g_varchar2_table(27) := '6965733D742E676574446174614172726179287B7365726965733A652E7365726965737C7C5B5D7D2C692C6E292C723D612E6E6F726D616C697A65642E7365726965732E65766572792866756E6374696F6E2865297B72657475726E206520696E737461';
wwv_flow_api.g_varchar2_table(28) := '6E63656F662041727261797D293F4D6174682E6D61782E6170706C79286E756C6C2C612E6E6F726D616C697A65642E7365726965732E6D61702866756E6374696F6E2865297B72657475726E20652E6C656E6774687D29293A612E6E6F726D616C697A65';
wwv_flow_api.g_varchar2_table(29) := '642E7365726965732E6C656E6774682C612E6E6F726D616C697A65642E6C6162656C733D28652E6C6162656C737C7C5B5D292E736C69636528292C41727261792E70726F746F747970652E707573682E6170706C7928612E6E6F726D616C697A65642E6C';
wwv_flow_api.g_varchar2_table(30) := '6162656C732C742E74696D6573284D6174682E6D617828302C722D612E6E6F726D616C697A65642E6C6162656C732E6C656E67746829292E6D61702866756E6374696F6E28297B72657475726E22227D29292C692626742E726576657273654461746128';
wwv_flow_api.g_varchar2_table(31) := '612E6E6F726D616C697A6564292C617D2C742E7361666548617350726F70657274793D66756E6374696F6E28652C74297B72657475726E206E756C6C213D3D652626226F626A656374223D3D747970656F6620652626652E6861734F776E50726F706572';
wwv_flow_api.g_varchar2_table(32) := '74792874297D2C742E697344617461486F6C6556616C75653D66756E6374696F6E2865297B72657475726E206E756C6C3D3D3D657C7C766F696420303D3D3D657C7C226E756D626572223D3D747970656F662065262669734E614E2865297D2C742E7265';
wwv_flow_api.g_varchar2_table(33) := '7665727365446174613D66756E6374696F6E2865297B652E6C6162656C732E7265766572736528292C652E7365726965732E7265766572736528293B666F722876617220743D303B743C652E7365726965732E6C656E6774683B742B2B29226F626A6563';
wwv_flow_api.g_varchar2_table(34) := '74223D3D747970656F6620652E7365726965735B745D2626766F69642030213D3D652E7365726965735B745D2E646174613F652E7365726965735B745D2E646174612E7265766572736528293A652E7365726965735B745D696E7374616E63656F662041';
wwv_flow_api.g_varchar2_table(35) := '727261792626652E7365726965735B745D2E7265766572736528297D2C742E6765744461746141727261793D66756E6374696F6E28652C692C6E297B66756E6374696F6E20722865297B696628742E7361666548617350726F706572747928652C227661';
wwv_flow_api.g_varchar2_table(36) := '6C756522292972657475726E207228652E76616C7565293B696628742E7361666548617350726F706572747928652C226461746122292972657475726E207228652E64617461293B6966286520696E7374616E63656F662041727261792972657475726E';
wwv_flow_api.g_varchar2_table(37) := '20652E6D61702872293B69662821742E697344617461486F6C6556616C7565286529297B6966286E297B76617220693D7B7D3B72657475726E22737472696E67223D3D747970656F66206E3F695B6E5D3D742E6765744E756D6265724F72556E64656669';
wwv_flow_api.g_varchar2_table(38) := '6E65642865293A692E793D742E6765744E756D6265724F72556E646566696E65642865292C692E783D652E6861734F776E50726F706572747928227822293F742E6765744E756D6265724F72556E646566696E656428652E78293A692E782C692E793D65';
wwv_flow_api.g_varchar2_table(39) := '2E6861734F776E50726F706572747928227922293F742E6765744E756D6265724F72556E646566696E656428652E79293A692E792C697D72657475726E20742E6765744E756D6265724F72556E646566696E65642865297D7D72657475726E20652E7365';
wwv_flow_api.g_varchar2_table(40) := '726965732E6D61702872297D2C742E6E6F726D616C697A6550616464696E673D66756E6374696F6E28652C74297B72657475726E20743D747C7C302C226E756D626572223D3D747970656F6620653F7B746F703A652C72696768743A652C626F74746F6D';
wwv_flow_api.g_varchar2_table(41) := '3A652C6C6566743A657D3A7B746F703A226E756D626572223D3D747970656F6620652E746F703F652E746F703A742C72696768743A226E756D626572223D3D747970656F6620652E72696768743F652E72696768743A742C626F74746F6D3A226E756D62';
wwv_flow_api.g_varchar2_table(42) := '6572223D3D747970656F6620652E626F74746F6D3F652E626F74746F6D3A742C6C6566743A226E756D626572223D3D747970656F6620652E6C6566743F652E6C6566743A747D7D2C742E6765744D657461446174613D66756E6374696F6E28652C74297B';
wwv_flow_api.g_varchar2_table(43) := '76617220693D652E646174613F652E646174615B745D3A655B745D3B72657475726E20693F692E6D6574613A766F696420307D2C742E6F726465724F664D61676E69747564653D66756E6374696F6E2865297B72657475726E204D6174682E666C6F6F72';
wwv_flow_api.g_varchar2_table(44) := '284D6174682E6C6F67284D6174682E616273286529292F4D6174682E4C4E3130297D2C742E70726F6A6563744C656E6774683D66756E6374696F6E28652C742C69297B72657475726E20742F692E72616E67652A657D2C742E676574417661696C61626C';
wwv_flow_api.g_varchar2_table(45) := '654865696768743D66756E6374696F6E28652C69297B72657475726E204D6174682E6D61782828742E7175616E7469747928692E686569676874292E76616C75657C7C652E6865696768742829292D28692E636861727450616464696E672E746F702B69';
wwv_flow_api.g_varchar2_table(46) := '2E636861727450616464696E672E626F74746F6D292D692E61786973582E6F66667365742C30297D2C742E676574486967684C6F773D66756E6374696F6E28652C692C6E297B66756E6374696F6E20722865297B696628766F69642030213D3D65296966';
wwv_flow_api.g_varchar2_table(47) := '286520696E7374616E63656F6620417272617929666F722876617220743D303B743C652E6C656E6774683B742B2B297228655B745D293B656C73657B76617220693D6E3F2B655B6E5D3A2B653B732626693E612E68696768262628612E686967683D6929';
wwv_flow_api.g_varchar2_table(48) := '2C6F2626693C612E6C6F77262628612E6C6F773D69297D7D76617220613D7B686967683A766F696420303D3D3D28693D742E657874656E64287B7D2C692C6E3F695B2261786973222B6E2E746F55707065724361736528295D3A7B7D29292E686967683F';
wwv_flow_api.g_varchar2_table(49) := '2D4E756D6265722E4D41585F56414C55453A2B692E686967682C6C6F773A766F696420303D3D3D692E6C6F773F4E756D6265722E4D41585F56414C55453A2B692E6C6F777D2C733D766F696420303D3D3D692E686967682C6F3D766F696420303D3D3D69';
wwv_flow_api.g_varchar2_table(50) := '2E6C6F773B72657475726E28737C7C6F292626722865292C28692E7265666572656E636556616C75657C7C303D3D3D692E7265666572656E636556616C756529262628612E686967683D4D6174682E6D617828692E7265666572656E636556616C75652C';
wwv_flow_api.g_varchar2_table(51) := '612E68696768292C612E6C6F773D4D6174682E6D696E28692E7265666572656E636556616C75652C612E6C6F7729292C612E686967683C3D612E6C6F77262628303D3D3D612E6C6F773F612E686967683D313A612E6C6F773C303F612E686967683D303A';
wwv_flow_api.g_varchar2_table(52) := '612E686967683E303F612E6C6F773D303A28612E686967683D312C612E6C6F773D3029292C617D2C742E69734E756D657269633D66756E6374696F6E2865297B72657475726E206E756C6C213D3D652626697346696E6974652865297D2C742E69734661';
wwv_flow_api.g_varchar2_table(53) := '6C7365794275745A65726F3D66756E6374696F6E2865297B72657475726E2165262630213D3D657D2C742E6765744E756D6265724F72556E646566696E65643D66756E6374696F6E2865297B72657475726E20742E69734E756D657269632865293F2B65';
wwv_flow_api.g_varchar2_table(54) := '3A766F696420307D2C742E69734D756C746956616C75653D66756E6374696F6E2865297B72657475726E226F626A656374223D3D747970656F662065262628227822696E20657C7C227922696E2065297D2C742E6765744D756C746956616C75653D6675';
wwv_flow_api.g_varchar2_table(55) := '6E6374696F6E28652C69297B72657475726E20742E69734D756C746956616C75652865293F742E6765744E756D6265724F72556E646566696E656428655B697C7C2279225D293A742E6765744E756D6265724F72556E646566696E65642865297D2C742E';
wwv_flow_api.g_varchar2_table(56) := '72686F3D66756E6374696F6E2865297B66756E6374696F6E207428652C69297B72657475726E206525693D3D303F693A7428692C652569297D66756E6374696F6E20692865297B72657475726E20652A652B317D696628313D3D3D652972657475726E20';
wwv_flow_api.g_varchar2_table(57) := '653B766172206E2C723D322C613D323B6966286525323D3D302972657475726E20323B646F7B723D6928722925652C613D6928692861292925652C6E3D74284D6174682E61627328722D61292C65297D7768696C6528313D3D3D6E293B72657475726E20';
wwv_flow_api.g_varchar2_table(58) := '6E7D2C742E676574426F756E64733D66756E6374696F6E28652C692C6E2C72297B66756E6374696F6E206128652C74297B72657475726E20653D3D3D28652B3D7429262628652A3D312B28743E303F703A2D7029292C657D76617220732C6F2C6C2C633D';
wwv_flow_api.g_varchar2_table(59) := '302C643D7B686967683A692E686967682C6C6F773A692E6C6F777D3B642E76616C756552616E67653D642E686967682D642E6C6F772C642E6F6F6D3D742E6F726465724F664D61676E697475646528642E76616C756552616E6765292C642E737465703D';
wwv_flow_api.g_varchar2_table(60) := '4D6174682E706F772831302C642E6F6F6D292C642E6D696E3D4D6174682E666C6F6F7228642E6C6F772F642E73746570292A642E737465702C642E6D61783D4D6174682E6365696C28642E686967682F642E73746570292A642E737465702C642E72616E';
wwv_flow_api.g_varchar2_table(61) := '67653D642E6D61782D642E6D696E2C642E6E756D6265724F6653746570733D4D6174682E726F756E6428642E72616E67652F642E73746570293B76617220753D742E70726F6A6563744C656E67746828652C642E737465702C64293C6E2C683D723F742E';
wwv_flow_api.g_varchar2_table(62) := '72686F28642E72616E6765293A303B696628722626742E70726F6A6563744C656E67746828652C312C64293E3D6E29642E737465703D313B656C736520696628722626683C642E737465702626742E70726F6A6563744C656E67746828652C682C64293E';
wwv_flow_api.g_varchar2_table(63) := '3D6E29642E737465703D683B656C736520666F72283B3B297B696628752626742E70726F6A6563744C656E67746828652C642E737465702C64293C3D6E29642E737465702A3D323B656C73657B696628757C7C2128742E70726F6A6563744C656E677468';
wwv_flow_api.g_varchar2_table(64) := '28652C642E737465702F322C64293E3D6E2929627265616B3B696628642E737465702F3D322C722626642E737465702531213D30297B642E737465702A3D323B627265616B7D7D696628632B2B3E316533297468726F77206E6577204572726F72282245';
wwv_flow_api.g_varchar2_table(65) := '78636565646564206D6178696D756D206E756D626572206F6620697465726174696F6E73207768696C65206F7074696D697A696E67207363616C6520737465702122297D76617220703D322E323231652D31363B666F7228642E737465703D4D6174682E';
wwv_flow_api.g_varchar2_table(66) := '6D617828642E737465702C70292C6F3D642E6D696E2C6C3D642E6D61783B6F2B642E737465703C3D642E6C6F773B296F3D61286F2C642E73746570293B666F72283B6C2D642E737465703E3D642E686967683B296C3D61286C2C2D642E73746570293B64';
wwv_flow_api.g_varchar2_table(67) := '2E6D696E3D6F2C642E6D61783D6C2C642E72616E67653D642E6D61782D642E6D696E3B76617220663D5B5D3B666F7228733D642E6D696E3B733C3D642E6D61783B733D6128732C642E7374657029297B766172206D3D742E726F756E6457697468507265';
wwv_flow_api.g_varchar2_table(68) := '636973696F6E2873293B6D213D3D665B662E6C656E6774682D315D2626662E70757368286D297D72657475726E20642E76616C7565733D662C647D2C742E706F6C6172546F43617274657369616E3D66756E6374696F6E28652C742C692C6E297B766172';
wwv_flow_api.g_varchar2_table(69) := '20723D286E2D3930292A4D6174682E50492F3138303B72657475726E7B783A652B692A4D6174682E636F732872292C793A742B692A4D6174682E73696E2872297D7D2C742E6372656174654368617274526563743D66756E6374696F6E28652C692C6E29';
wwv_flow_api.g_varchar2_table(70) := '7B76617220723D212821692E6178697358262621692E6178697359292C613D723F692E61786973592E6F66667365743A302C733D723F692E61786973582E6F66667365743A302C6F3D652E776964746828297C7C742E7175616E7469747928692E776964';
wwv_flow_api.g_varchar2_table(71) := '7468292E76616C75657C7C302C6C3D652E68656967687428297C7C742E7175616E7469747928692E686569676874292E76616C75657C7C302C633D742E6E6F726D616C697A6550616464696E6728692E636861727450616464696E672C6E293B6F3D4D61';
wwv_flow_api.g_varchar2_table(72) := '74682E6D6178286F2C612B632E6C6566742B632E7269676874292C6C3D4D6174682E6D6178286C2C732B632E746F702B632E626F74746F6D293B76617220643D7B70616464696E673A632C77696474683A66756E6374696F6E28297B72657475726E2074';
wwv_flow_api.g_varchar2_table(73) := '6869732E78322D746869732E78317D2C6865696768743A66756E6374696F6E28297B72657475726E20746869732E79312D746869732E79327D7D3B72657475726E20723F28227374617274223D3D3D692E61786973582E706F736974696F6E3F28642E79';
wwv_flow_api.g_varchar2_table(74) := '323D632E746F702B732C642E79313D4D6174682E6D6178286C2D632E626F74746F6D2C642E79322B3129293A28642E79323D632E746F702C642E79313D4D6174682E6D6178286C2D632E626F74746F6D2D732C642E79322B3129292C227374617274223D';
wwv_flow_api.g_varchar2_table(75) := '3D3D692E61786973592E706F736974696F6E3F28642E78313D632E6C6566742B612C642E78323D4D6174682E6D6178286F2D632E72696768742C642E78312B3129293A28642E78313D632E6C6566742C642E78323D4D6174682E6D6178286F2D632E7269';
wwv_flow_api.g_varchar2_table(76) := '6768742D612C642E78312B312929293A28642E78313D632E6C6566742C642E78323D4D6174682E6D6178286F2D632E72696768742C642E78312B31292C642E79323D632E746F702C642E79313D4D6174682E6D6178286C2D632E626F74746F6D2C642E79';
wwv_flow_api.g_varchar2_table(77) := '322B3129292C647D2C742E637265617465477269643D66756E6374696F6E28652C692C6E2C722C612C732C6F2C6C297B76617220633D7B7D3B635B6E2E756E6974732E706F732B2231225D3D652C635B6E2E756E6974732E706F732B2232225D3D652C63';
wwv_flow_api.g_varchar2_table(78) := '5B6E2E636F756E746572556E6974732E706F732B2231225D3D722C635B6E2E636F756E746572556E6974732E706F732B2232225D3D722B613B76617220643D732E656C656D28226C696E65222C632C6F2E6A6F696E2822202229293B6C2E656D69742822';
wwv_flow_api.g_varchar2_table(79) := '64726177222C742E657874656E64287B747970653A2267726964222C617869733A6E2C696E6465783A692C67726F75703A732C656C656D656E743A647D2C6329297D2C742E637265617465477269644261636B67726F756E643D66756E6374696F6E2865';
wwv_flow_api.g_varchar2_table(80) := '2C742C692C6E297B76617220723D652E656C656D282272656374222C7B783A742E78312C793A742E79322C77696474683A742E776964746828292C6865696768743A742E68656967687428297D2C692C2130293B6E2E656D6974282264726177222C7B74';
wwv_flow_api.g_varchar2_table(81) := '7970653A22677269644261636B67726F756E64222C67726F75703A652C656C656D656E743A727D297D2C742E6372656174654C6162656C3D66756E6374696F6E28652C692C722C612C732C6F2C6C2C632C642C752C68297B76617220702C663D7B7D3B69';
wwv_flow_api.g_varchar2_table(82) := '6628665B732E756E6974732E706F735D3D652B6C5B732E756E6974732E706F735D2C665B732E636F756E746572556E6974732E706F735D3D6C5B732E636F756E746572556E6974732E706F735D2C665B732E756E6974732E6C656E5D3D692C665B732E63';
wwv_flow_api.g_varchar2_table(83) := '6F756E746572556E6974732E6C656E5D3D4D6174682E6D617828302C6F2D3130292C75297B766172206D3D6E2E637265617465456C656D656E7428227370616E22293B6D2E636C6173734E616D653D642E6A6F696E28222022292C6D2E73657441747472';
wwv_flow_api.g_varchar2_table(84) := '69627574652822786D6C6E73222C742E6E616D657370616365732E7868746D6C292C6D2E696E6E6572546578743D615B725D2C6D2E7374796C655B732E756E6974732E6C656E5D3D4D6174682E726F756E6428665B732E756E6974732E6C656E5D292B22';
wwv_flow_api.g_varchar2_table(85) := '7078222C6D2E7374796C655B732E636F756E746572556E6974732E6C656E5D3D4D6174682E726F756E6428665B732E636F756E746572556E6974732E6C656E5D292B227078222C703D632E666F726569676E4F626A656374286D2C742E657874656E6428';
wwv_flow_api.g_varchar2_table(86) := '7B7374796C653A226F766572666C6F773A2076697369626C653B227D2C6629297D656C736520703D632E656C656D282274657874222C662C642E6A6F696E2822202229292E7465787428615B725D293B682E656D6974282264726177222C742E65787465';
wwv_flow_api.g_varchar2_table(87) := '6E64287B747970653A226C6162656C222C617869733A732C696E6465783A722C67726F75703A632C656C656D656E743A702C746578743A615B725D7D2C6629297D2C742E6765745365726965734F7074696F6E3D66756E6374696F6E28652C742C69297B';
wwv_flow_api.g_varchar2_table(88) := '696628652E6E616D652626742E7365726965732626742E7365726965735B652E6E616D655D297B766172206E3D742E7365726965735B652E6E616D655D3B72657475726E206E2E6861734F776E50726F70657274792869293F6E5B695D3A745B695D7D72';
wwv_flow_api.g_varchar2_table(89) := '657475726E20745B695D7D2C742E6F7074696F6E7350726F76696465723D66756E6374696F6E28652C6E2C72297B66756E6374696F6E20612865297B76617220613D733B696628733D742E657874656E64287B7D2C6C292C6E29666F72286F3D303B6F3C';
wwv_flow_api.g_varchar2_table(90) := '6E2E6C656E6774683B6F2B2B297B692E6D617463684D65646961286E5B6F5D5B305D292E6D617463686573262628733D742E657874656E6428732C6E5B6F5D5B315D29297D722626652626722E656D697428226F7074696F6E734368616E676564222C7B';
wwv_flow_api.g_varchar2_table(91) := '70726576696F75734F7074696F6E733A612C63757272656E744F7074696F6E733A737D297D76617220732C6F2C6C3D742E657874656E64287B7D2C65292C633D5B5D3B69662821692E6D617463684D65646961297468726F772277696E646F772E6D6174';
wwv_flow_api.g_varchar2_table(92) := '63684D65646961206E6F7420666F756E6421204D616B65207375726520796F75277265207573696E67206120706F6C7966696C6C2E223B6966286E29666F72286F3D303B6F3C6E2E6C656E6774683B6F2B2B297B76617220643D692E6D617463684D6564';
wwv_flow_api.g_varchar2_table(93) := '6961286E5B6F5D5B305D293B642E6164644C697374656E65722861292C632E707573682864297D72657475726E206128292C7B72656D6F76654D6564696151756572794C697374656E6572733A66756E6374696F6E28297B632E666F7245616368286675';
wwv_flow_api.g_varchar2_table(94) := '6E6374696F6E2865297B652E72656D6F76654C697374656E65722861297D297D2C67657443757272656E744F7074696F6E733A66756E6374696F6E28297B72657475726E20742E657874656E64287B7D2C73297D7D7D2C742E73706C6974496E746F5365';
wwv_flow_api.g_varchar2_table(95) := '676D656E74733D66756E6374696F6E28652C692C6E297B6E3D742E657874656E64287B7D2C7B696E6372656173696E67583A21312C66696C6C486F6C65733A21317D2C6E293B666F722876617220723D5B5D2C613D21302C733D303B733C652E6C656E67';
wwv_flow_api.g_varchar2_table(96) := '74683B732B3D3229766F696420303D3D3D742E6765744D756C746956616C756528695B732F325D2E76616C7565293F6E2E66696C6C486F6C65737C7C28613D2130293A286E2E696E6372656173696E67582626733E3D322626655B735D3C3D655B732D32';
wwv_flow_api.g_varchar2_table(97) := '5D262628613D2130292C61262628722E70757368287B70617468436F6F7264696E617465733A5B5D2C76616C7565446174613A5B5D7D292C613D2131292C725B722E6C656E6774682D315D2E70617468436F6F7264696E617465732E7075736828655B73';
wwv_flow_api.g_varchar2_table(98) := '5D2C655B732B315D292C725B722E6C656E6774682D315D2E76616C7565446174612E7075736828695B732F325D29293B72657475726E20727D7D28746869737C7C676C6F62616C2C65292C66756E6374696F6E28652C74297B2275736520737472696374';
wwv_flow_api.g_varchar2_table(99) := '223B742E496E746572706F6C6174696F6E3D7B7D2C742E496E746572706F6C6174696F6E2E6E6F6E653D66756E6374696F6E2865297B72657475726E20653D742E657874656E64287B7D2C7B66696C6C486F6C65733A21317D2C65292C66756E6374696F';
wwv_flow_api.g_varchar2_table(100) := '6E28692C6E297B666F722876617220723D6E657720742E5376672E506174682C613D21302C733D303B733C692E6C656E6774683B732B3D32297B766172206F3D695B735D2C6C3D695B732B315D2C633D6E5B732F325D3B766F69642030213D3D742E6765';
wwv_flow_api.g_varchar2_table(101) := '744D756C746956616C756528632E76616C7565293F28613F722E6D6F7665286F2C6C2C21312C63293A722E6C696E65286F2C6C2C21312C63292C613D2131293A652E66696C6C486F6C65737C7C28613D2130297D72657475726E20727D7D2C742E496E74';
wwv_flow_api.g_varchar2_table(102) := '6572706F6C6174696F6E2E73696D706C653D66756E6374696F6E2865297B653D742E657874656E64287B7D2C7B64697669736F723A322C66696C6C486F6C65733A21317D2C65293B76617220693D312F4D6174682E6D617828312C652E64697669736F72';
wwv_flow_api.g_varchar2_table(103) := '293B72657475726E2066756E6374696F6E286E2C72297B666F722876617220612C732C6F2C6C3D6E657720742E5376672E506174682C633D303B633C6E2E6C656E6774683B632B3D32297B76617220643D6E5B635D2C753D6E5B632B315D2C683D28642D';
wwv_flow_api.g_varchar2_table(104) := '61292A692C703D725B632F325D3B766F69642030213D3D702E76616C75653F28766F696420303D3D3D6F3F6C2E6D6F766528642C752C21312C70293A6C2E637572766528612B682C732C642D682C752C642C752C21312C70292C613D642C733D752C6F3D';
wwv_flow_api.g_varchar2_table(105) := '70293A652E66696C6C486F6C65737C7C28613D643D6F3D766F69642030297D72657475726E206C7D7D2C742E496E746572706F6C6174696F6E2E63617264696E616C3D66756E6374696F6E2865297B653D742E657874656E64287B7D2C7B74656E73696F';
wwv_flow_api.g_varchar2_table(106) := '6E3A312C66696C6C486F6C65733A21317D2C65293B76617220693D4D6174682E6D696E28312C4D6174682E6D617828302C652E74656E73696F6E29292C6E3D312D693B72657475726E2066756E6374696F6E207228612C73297B766172206F3D742E7370';
wwv_flow_api.g_varchar2_table(107) := '6C6974496E746F5365676D656E747328612C732C7B66696C6C486F6C65733A652E66696C6C486F6C65737D293B6966286F2E6C656E677468297B6966286F2E6C656E6774683E31297B766172206C3D5B5D3B72657475726E206F2E666F72456163682866';
wwv_flow_api.g_varchar2_table(108) := '756E6374696F6E2865297B6C2E70757368287228652E70617468436F6F7264696E617465732C652E76616C75654461746129297D292C742E5376672E506174682E6A6F696E286C297D696628613D6F5B305D2E70617468436F6F7264696E617465732C73';
wwv_flow_api.g_varchar2_table(109) := '3D6F5B305D2E76616C7565446174612C612E6C656E6774683C3D342972657475726E20742E496E746572706F6C6174696F6E2E6E6F6E65282928612C73293B666F722876617220633D286E657720742E5376672E50617468292E6D6F766528615B305D2C';
wwv_flow_api.g_varchar2_table(110) := '615B315D2C21312C735B305D292C643D302C753D612E6C656E6774683B752D323E643B642B3D32297B76617220683D5B7B783A2B615B642D325D2C793A2B615B642D315D7D2C7B783A2B615B645D2C793A2B615B642B315D7D2C7B783A2B615B642B325D';
wwv_flow_api.g_varchar2_table(111) := '2C793A2B615B642B335D7D2C7B783A2B615B642B345D2C793A2B615B642B355D7D5D3B752D343D3D3D643F685B335D3D685B325D3A647C7C28685B305D3D7B783A2B615B645D2C793A2B615B642B315D7D292C632E637572766528692A282D685B305D2E';
wwv_flow_api.g_varchar2_table(112) := '782B362A685B315D2E782B685B325D2E78292F362B6E2A685B325D2E782C692A282D685B305D2E792B362A685B315D2E792B685B325D2E79292F362B6E2A685B325D2E792C692A28685B315D2E782B362A685B325D2E782D685B335D2E78292F362B6E2A';
wwv_flow_api.g_varchar2_table(113) := '685B325D2E782C692A28685B315D2E792B362A685B325D2E792D685B335D2E79292F362B6E2A685B325D2E792C685B325D2E782C685B325D2E792C21312C735B28642B32292F325D297D72657475726E20637D72657475726E20742E496E746572706F6C';
wwv_flow_api.g_varchar2_table(114) := '6174696F6E2E6E6F6E652829285B5D297D7D2C742E496E746572706F6C6174696F6E2E6D6F6E6F746F6E6543756269633D66756E6374696F6E2865297B72657475726E20653D742E657874656E64287B7D2C7B66696C6C486F6C65733A21317D2C65292C';
wwv_flow_api.g_varchar2_table(115) := '66756E6374696F6E2069286E2C72297B76617220613D742E73706C6974496E746F5365676D656E7473286E2C722C7B66696C6C486F6C65733A652E66696C6C486F6C65732C696E6372656173696E67583A21307D293B696628612E6C656E677468297B69';
wwv_flow_api.g_varchar2_table(116) := '6628612E6C656E6774683E31297B76617220733D5B5D3B72657475726E20612E666F72456163682866756E6374696F6E2865297B732E70757368286928652E70617468436F6F7264696E617465732C652E76616C75654461746129297D292C742E537667';
wwv_flow_api.g_varchar2_table(117) := '2E506174682E6A6F696E2873297D6966286E3D615B305D2E70617468436F6F7264696E617465732C723D615B305D2E76616C7565446174612C6E2E6C656E6774683C3D342972657475726E20742E496E746572706F6C6174696F6E2E6E6F6E652829286E';
wwv_flow_api.g_varchar2_table(118) := '2C72293B766172206F2C6C2C633D5B5D2C643D5B5D2C753D6E2E6C656E6774682F322C683D5B5D2C703D5B5D2C663D5B5D2C6D3D5B5D3B666F72286F3D303B6F3C753B6F2B2B29635B6F5D3D6E5B322A6F5D2C645B6F5D3D6E5B322A6F2B315D3B666F72';
wwv_flow_api.g_varchar2_table(119) := '286F3D303B6F3C752D313B6F2B2B29665B6F5D3D645B6F2B315D2D645B6F5D2C6D5B6F5D3D635B6F2B315D2D635B6F5D2C705B6F5D3D665B6F5D2F6D5B6F5D3B666F7228685B305D3D705B305D2C685B752D315D3D705B752D325D2C6F3D313B6F3C752D';
wwv_flow_api.g_varchar2_table(120) := '313B6F2B2B29303D3D3D705B6F5D7C7C303D3D3D705B6F2D315D7C7C705B6F2D315D3E30213D705B6F5D3E303F685B6F5D3D303A28685B6F5D3D332A286D5B6F2D315D2B6D5B6F5D292F2828322A6D5B6F5D2B6D5B6F2D315D292F705B6F2D315D2B286D';
wwv_flow_api.g_varchar2_table(121) := '5B6F5D2B322A6D5B6F2D315D292F705B6F5D292C697346696E69746528685B6F5D297C7C28685B6F5D3D3029293B666F72286C3D286E657720742E5376672E50617468292E6D6F766528635B305D2C645B305D2C21312C725B305D292C6F3D303B6F3C75';
wwv_flow_api.g_varchar2_table(122) := '2D313B6F2B2B296C2E637572766528635B6F5D2B6D5B6F5D2F332C645B6F5D2B685B6F5D2A6D5B6F5D2F332C635B6F2B315D2D6D5B6F5D2F332C645B6F2B315D2D685B6F2B315D2A6D5B6F5D2F332C635B6F2B315D2C645B6F2B315D2C21312C725B6F2B';
wwv_flow_api.g_varchar2_table(123) := '315D293B72657475726E206C7D72657475726E20742E496E746572706F6C6174696F6E2E6E6F6E652829285B5D297D7D2C742E496E746572706F6C6174696F6E2E737465703D66756E6374696F6E2865297B72657475726E20653D742E657874656E6428';
wwv_flow_api.g_varchar2_table(124) := '7B7D2C7B706F7374706F6E653A21302C66696C6C486F6C65733A21317D2C65292C66756E6374696F6E28692C6E297B666F722876617220722C612C732C6F3D6E657720742E5376672E506174682C6C3D303B6C3C692E6C656E6774683B6C2B3D32297B76';
wwv_flow_api.g_varchar2_table(125) := '617220633D695B6C5D2C643D695B6C2B315D2C753D6E5B6C2F325D3B766F69642030213D3D752E76616C75653F28766F696420303D3D3D733F6F2E6D6F766528632C642C21312C75293A28652E706F7374706F6E653F6F2E6C696E6528632C612C21312C';
wwv_flow_api.g_varchar2_table(126) := '73293A6F2E6C696E6528722C642C21312C75292C6F2E6C696E6528632C642C21312C7529292C723D632C613D642C733D75293A652E66696C6C486F6C65737C7C28723D613D733D766F69642030297D72657475726E206F7D7D7D28746869737C7C676C6F';
wwv_flow_api.g_varchar2_table(127) := '62616C2C65292C66756E6374696F6E28742C69297B2275736520737472696374223B652E4576656E74456D69747465723D66756E6374696F6E28297B76617220653D5B5D3B72657475726E7B6164644576656E7448616E646C65723A66756E6374696F6E';
wwv_flow_api.g_varchar2_table(128) := '28742C69297B655B745D3D655B745D7C7C5B5D2C655B745D2E707573682869297D2C72656D6F76654576656E7448616E646C65723A66756E6374696F6E28742C69297B655B745D262628693F28655B745D2E73706C69636528655B745D2E696E6465784F';
wwv_flow_api.g_varchar2_table(129) := '662869292C31292C303D3D3D655B745D2E6C656E677468262664656C65746520655B745D293A64656C65746520655B745D297D2C656D69743A66756E6374696F6E28742C69297B655B745D2626655B745D2E666F72456163682866756E6374696F6E2865';
wwv_flow_api.g_varchar2_table(130) := '297B652869297D292C655B222A225D2626655B222A225D2E666F72456163682866756E6374696F6E2865297B6528742C69297D297D7D7D7D28746869737C7C676C6F62616C292C66756E6374696F6E28652C74297B2275736520737472696374223B742E';
wwv_flow_api.g_varchar2_table(131) := '436C6173733D7B657874656E643A66756E6374696F6E28652C69297B766172206E3D697C7C746869732E70726F746F747970657C7C742E436C6173732C723D4F626A6563742E637265617465286E293B742E436C6173732E636C6F6E65446566696E6974';
wwv_flow_api.g_varchar2_table(132) := '696F6E7328722C65293B76617220613D66756E6374696F6E28297B76617220652C693D722E636F6E7374727563746F727C7C66756E6374696F6E28297B7D3B72657475726E20653D746869733D3D3D743F4F626A6563742E6372656174652872293A7468';
wwv_flow_api.g_varchar2_table(133) := '69732C692E6170706C7928652C41727261792E70726F746F747970652E736C6963652E63616C6C28617267756D656E74732C3029292C657D3B72657475726E20612E70726F746F747970653D722C612E73757065723D6E2C612E657874656E643D746869';
wwv_flow_api.g_varchar2_table(134) := '732E657874656E642C617D2C636C6F6E65446566696E6974696F6E733A66756E6374696F6E28297B76617220653D66756E6374696F6E2865297B76617220743D5B5D3B696628652E6C656E67746829666F722876617220693D303B693C652E6C656E6774';
wwv_flow_api.g_varchar2_table(135) := '683B692B2B29742E7075736828655B695D293B72657475726E20747D28617267756D656E7473292C743D655B305D3B72657475726E20652E73706C69636528312C652E6C656E6774682D31292E666F72456163682866756E6374696F6E2865297B4F626A';
wwv_flow_api.g_varchar2_table(136) := '6563742E6765744F776E50726F70657274794E616D65732865292E666F72456163682866756E6374696F6E2869297B64656C65746520745B695D2C4F626A6563742E646566696E6550726F706572747928742C692C4F626A6563742E6765744F776E5072';
wwv_flow_api.g_varchar2_table(137) := '6F706572747944657363726970746F7228652C6929297D297D292C747D7D7D28746869737C7C676C6F62616C2C65292C66756E6374696F6E28652C74297B2275736520737472696374223B76617220693D652E77696E646F773B742E426173653D742E43';
wwv_flow_api.g_varchar2_table(138) := '6C6173732E657874656E64287B636F6E7374727563746F723A66756E6374696F6E28652C6E2C722C612C73297B746869732E636F6E7461696E65723D742E717565727953656C6563746F722865292C746869732E646174613D6E7C7C7B7D2C746869732E';
wwv_flow_api.g_varchar2_table(139) := '646174612E6C6162656C733D746869732E646174612E6C6162656C737C7C5B5D2C746869732E646174612E7365726965733D746869732E646174612E7365726965737C7C5B5D2C746869732E64656661756C744F7074696F6E733D722C746869732E6F70';
wwv_flow_api.g_varchar2_table(140) := '74696F6E733D612C746869732E726573706F6E736976654F7074696F6E733D732C746869732E6576656E74456D69747465723D742E4576656E74456D697474657228292C746869732E737570706F727473466F726569676E4F626A6563743D742E537667';
wwv_flow_api.g_varchar2_table(141) := '2E6973537570706F727465642822457874656E736962696C69747922292C746869732E737570706F727473416E696D6174696F6E733D742E5376672E6973537570706F727465642822416E696D6174696F6E4576656E747341747472696275746522292C';
wwv_flow_api.g_varchar2_table(142) := '746869732E726573697A654C697374656E65723D66756E6374696F6E28297B746869732E75706461746528297D2E62696E642874686973292C746869732E636F6E7461696E6572262628746869732E636F6E7461696E65722E5F5F63686172746973745F';
wwv_flow_api.g_varchar2_table(143) := '5F2626746869732E636F6E7461696E65722E5F5F63686172746973745F5F2E64657461636828292C746869732E636F6E7461696E65722E5F5F63686172746973745F5F3D74686973292C746869732E696E697469616C697A6554696D656F757449643D73';
wwv_flow_api.g_varchar2_table(144) := '657454696D656F75742866756E6374696F6E28297B692E6164644576656E744C697374656E65722822726573697A65222C746869732E726573697A654C697374656E6572292C746869732E6F7074696F6E7350726F76696465723D742E6F7074696F6E73';
wwv_flow_api.g_varchar2_table(145) := '50726F766964657228746869732E6F7074696F6E732C746869732E726573706F6E736976654F7074696F6E732C746869732E6576656E74456D6974746572292C746869732E6576656E74456D69747465722E6164644576656E7448616E646C657228226F';
wwv_flow_api.g_varchar2_table(146) := '7074696F6E734368616E676564222C66756E6374696F6E28297B746869732E75706461746528297D2E62696E64287468697329292C746869732E6F7074696F6E732E706C7567696E732626746869732E6F7074696F6E732E706C7567696E732E666F7245';
wwv_flow_api.g_varchar2_table(147) := '6163682866756E6374696F6E2865297B6520696E7374616E63656F662041727261793F655B305D28746869732C655B315D293A652874686973297D2E62696E64287468697329292C746869732E6576656E74456D69747465722E656D6974282264617461';
wwv_flow_api.g_varchar2_table(148) := '222C7B747970653A22696E697469616C222C646174613A746869732E646174617D292C746869732E637265617465436861727428746869732E6F7074696F6E7350726F76696465722E67657443757272656E744F7074696F6E732829292C746869732E69';
wwv_flow_api.g_varchar2_table(149) := '6E697469616C697A6554696D656F757449643D766F696420307D2E62696E642874686973292C30297D2C6F7074696F6E7350726F76696465723A766F696420302C636F6E7461696E65723A766F696420302C7376673A766F696420302C6576656E74456D';
wwv_flow_api.g_varchar2_table(150) := '69747465723A766F696420302C63726561746543686172743A66756E6374696F6E28297B7468726F77206E6577204572726F7228224261736520636861727420747970652063616E277420626520696E7374616E7469617465642122297D2C7570646174';
wwv_flow_api.g_varchar2_table(151) := '653A66756E6374696F6E28652C692C6E297B72657475726E2065262628746869732E646174613D657C7C7B7D2C746869732E646174612E6C6162656C733D746869732E646174612E6C6162656C737C7C5B5D2C746869732E646174612E7365726965733D';
wwv_flow_api.g_varchar2_table(152) := '746869732E646174612E7365726965737C7C5B5D2C746869732E6576656E74456D69747465722E656D6974282264617461222C7B747970653A22757064617465222C646174613A746869732E646174617D29292C69262628746869732E6F7074696F6E73';
wwv_flow_api.g_varchar2_table(153) := '3D742E657874656E64287B7D2C6E3F746869732E6F7074696F6E733A746869732E64656661756C744F7074696F6E732C69292C746869732E696E697469616C697A6554696D656F757449647C7C28746869732E6F7074696F6E7350726F76696465722E72';
wwv_flow_api.g_varchar2_table(154) := '656D6F76654D6564696151756572794C697374656E65727328292C746869732E6F7074696F6E7350726F76696465723D742E6F7074696F6E7350726F766964657228746869732E6F7074696F6E732C746869732E726573706F6E736976654F7074696F6E';
wwv_flow_api.g_varchar2_table(155) := '732C746869732E6576656E74456D69747465722929292C746869732E696E697469616C697A6554696D656F757449647C7C746869732E637265617465436861727428746869732E6F7074696F6E7350726F76696465722E67657443757272656E744F7074';
wwv_flow_api.g_varchar2_table(156) := '696F6E732829292C746869737D2C6465746163683A66756E6374696F6E28297B72657475726E20746869732E696E697469616C697A6554696D656F757449643F692E636C65617254696D656F757428746869732E696E697469616C697A6554696D656F75';
wwv_flow_api.g_varchar2_table(157) := '744964293A28692E72656D6F76654576656E744C697374656E65722822726573697A65222C746869732E726573697A654C697374656E6572292C746869732E6F7074696F6E7350726F76696465722E72656D6F76654D6564696151756572794C69737465';
wwv_flow_api.g_varchar2_table(158) := '6E6572732829292C746869737D2C6F6E3A66756E6374696F6E28652C74297B72657475726E20746869732E6576656E74456D69747465722E6164644576656E7448616E646C657228652C74292C746869737D2C6F66663A66756E6374696F6E28652C7429';
wwv_flow_api.g_varchar2_table(159) := '7B72657475726E20746869732E6576656E74456D69747465722E72656D6F76654576656E7448616E646C657228652C74292C746869737D2C76657273696F6E3A742E76657273696F6E2C737570706F727473466F726569676E4F626A6563743A21317D29';
wwv_flow_api.g_varchar2_table(160) := '7D28746869737C7C676C6F62616C2C65292C66756E6374696F6E28652C74297B2275736520737472696374223B76617220693D652E646F63756D656E743B742E5376673D742E436C6173732E657874656E64287B636F6E7374727563746F723A66756E63';
wwv_flow_api.g_varchar2_table(161) := '74696F6E28652C6E2C722C612C73297B6520696E7374616E63656F6620456C656D656E743F746869732E5F6E6F64653D653A28746869732E5F6E6F64653D692E637265617465456C656D656E744E5328742E6E616D657370616365732E7376672C65292C';
wwv_flow_api.g_varchar2_table(162) := '22737667223D3D3D652626746869732E61747472287B22786D6C6E733A6374223A742E6E616D657370616365732E63747D29292C6E2626746869732E61747472286E292C722626746869732E616464436C6173732872292C61262628732626612E5F6E6F';
wwv_flow_api.g_varchar2_table(163) := '64652E66697273744368696C643F612E5F6E6F64652E696E736572744265666F726528746869732E5F6E6F64652C612E5F6E6F64652E66697273744368696C64293A612E5F6E6F64652E617070656E644368696C6428746869732E5F6E6F646529297D2C';
wwv_flow_api.g_varchar2_table(164) := '617474723A66756E6374696F6E28652C69297B72657475726E22737472696E67223D3D747970656F6620653F693F746869732E5F6E6F64652E6765744174747269627574654E5328692C65293A746869732E5F6E6F64652E676574417474726962757465';
wwv_flow_api.g_varchar2_table(165) := '2865293A284F626A6563742E6B6579732865292E666F72456163682866756E6374696F6E2869297B696628766F69642030213D3D655B695D296966282D31213D3D692E696E6465784F6628223A2229297B766172206E3D692E73706C697428223A22293B';
wwv_flow_api.g_varchar2_table(166) := '746869732E5F6E6F64652E7365744174747269627574654E5328742E6E616D657370616365735B6E5B305D5D2C692C655B695D297D656C736520746869732E5F6E6F64652E73657441747472696275746528692C655B695D297D2E62696E642874686973';
wwv_flow_api.g_varchar2_table(167) := '29292C74686973297D2C656C656D3A66756E6374696F6E28652C692C6E2C72297B72657475726E206E657720742E53766728652C692C6E2C746869732C72297D2C706172656E743A66756E6374696F6E28297B72657475726E20746869732E5F6E6F6465';
wwv_flow_api.g_varchar2_table(168) := '2E706172656E744E6F646520696E7374616E63656F6620535647456C656D656E743F6E657720742E53766728746869732E5F6E6F64652E706172656E744E6F6465293A6E756C6C7D2C726F6F743A66756E6374696F6E28297B666F722876617220653D74';
wwv_flow_api.g_varchar2_table(169) := '6869732E5F6E6F64653B2273766722213D3D652E6E6F64654E616D653B29653D652E706172656E744E6F64653B72657475726E206E657720742E5376672865297D2C717565727953656C6563746F723A66756E6374696F6E2865297B76617220693D7468';
wwv_flow_api.g_varchar2_table(170) := '69732E5F6E6F64652E717565727953656C6563746F722865293B72657475726E20693F6E657720742E5376672869293A6E756C6C7D2C717565727953656C6563746F72416C6C3A66756E6374696F6E2865297B76617220693D746869732E5F6E6F64652E';
wwv_flow_api.g_varchar2_table(171) := '717565727953656C6563746F72416C6C2865293B72657475726E20692E6C656E6774683F6E657720742E5376672E4C6973742869293A6E756C6C7D2C6765744E6F64653A66756E6374696F6E28297B72657475726E20746869732E5F6E6F64657D2C666F';
wwv_flow_api.g_varchar2_table(172) := '726569676E4F626A6563743A66756E6374696F6E28652C6E2C722C61297B69662822737472696E67223D3D747970656F662065297B76617220733D692E637265617465456C656D656E74282264697622293B732E696E6E657248544D4C3D652C653D732E';
wwv_flow_api.g_varchar2_table(173) := '66697273744368696C647D652E7365744174747269627574652822786D6C6E73222C742E6E616D657370616365732E786D6C6E73293B766172206F3D746869732E656C656D2822666F726569676E4F626A656374222C6E2C722C61293B72657475726E20';
wwv_flow_api.g_varchar2_table(174) := '6F2E5F6E6F64652E617070656E644368696C642865292C6F7D2C746578743A66756E6374696F6E2865297B72657475726E20746869732E5F6E6F64652E617070656E644368696C6428692E637265617465546578744E6F6465286529292C746869737D2C';
wwv_flow_api.g_varchar2_table(175) := '656D7074793A66756E6374696F6E28297B666F72283B746869732E5F6E6F64652E66697273744368696C643B29746869732E5F6E6F64652E72656D6F76654368696C6428746869732E5F6E6F64652E66697273744368696C64293B72657475726E207468';
wwv_flow_api.g_varchar2_table(176) := '69737D2C72656D6F76653A66756E6374696F6E28297B72657475726E20746869732E5F6E6F64652E706172656E744E6F64652E72656D6F76654368696C6428746869732E5F6E6F6465292C746869732E706172656E7428297D2C7265706C6163653A6675';
wwv_flow_api.g_varchar2_table(177) := '6E6374696F6E2865297B72657475726E20746869732E5F6E6F64652E706172656E744E6F64652E7265706C6163654368696C6428652E5F6E6F64652C746869732E5F6E6F6465292C657D2C617070656E643A66756E6374696F6E28652C74297B72657475';
wwv_flow_api.g_varchar2_table(178) := '726E20742626746869732E5F6E6F64652E66697273744368696C643F746869732E5F6E6F64652E696E736572744265666F726528652E5F6E6F64652C746869732E5F6E6F64652E66697273744368696C64293A746869732E5F6E6F64652E617070656E64';
wwv_flow_api.g_varchar2_table(179) := '4368696C6428652E5F6E6F6465292C746869737D2C636C61737365733A66756E6374696F6E28297B72657475726E20746869732E5F6E6F64652E6765744174747269627574652822636C61737322293F746869732E5F6E6F64652E676574417474726962';
wwv_flow_api.g_varchar2_table(180) := '7574652822636C61737322292E7472696D28292E73706C6974282F5C732B2F293A5B5D7D2C616464436C6173733A66756E6374696F6E2865297B72657475726E20746869732E5F6E6F64652E7365744174747269627574652822636C617373222C746869';
wwv_flow_api.g_varchar2_table(181) := '732E636C617373657328746869732E5F6E6F6465292E636F6E63617428652E7472696D28292E73706C6974282F5C732B2F29292E66696C7465722866756E6374696F6E28652C742C69297B72657475726E20692E696E6465784F662865293D3D3D747D29';
wwv_flow_api.g_varchar2_table(182) := '2E6A6F696E2822202229292C746869737D2C72656D6F7665436C6173733A66756E6374696F6E2865297B76617220743D652E7472696D28292E73706C6974282F5C732B2F293B72657475726E20746869732E5F6E6F64652E736574417474726962757465';
wwv_flow_api.g_varchar2_table(183) := '2822636C617373222C746869732E636C617373657328746869732E5F6E6F6465292E66696C7465722866756E6374696F6E2865297B72657475726E2D313D3D3D742E696E6465784F662865297D292E6A6F696E2822202229292C746869737D2C72656D6F';
wwv_flow_api.g_varchar2_table(184) := '7665416C6C436C61737365733A66756E6374696F6E28297B72657475726E20746869732E5F6E6F64652E7365744174747269627574652822636C617373222C2222292C746869737D2C6865696768743A66756E6374696F6E28297B72657475726E207468';
wwv_flow_api.g_varchar2_table(185) := '69732E5F6E6F64652E676574426F756E64696E67436C69656E745265637428292E6865696768747D2C77696474683A66756E6374696F6E28297B72657475726E20746869732E5F6E6F64652E676574426F756E64696E67436C69656E745265637428292E';
wwv_flow_api.g_varchar2_table(186) := '77696474687D2C616E696D6174653A66756E6374696F6E28652C692C6E297B72657475726E20766F696420303D3D3D69262628693D2130292C4F626A6563742E6B6579732865292E666F72456163682866756E6374696F6E2872297B66756E6374696F6E';
wwv_flow_api.g_varchar2_table(187) := '206128652C69297B76617220612C732C6F2C6C3D7B7D3B652E656173696E672626286F3D652E656173696E6720696E7374616E63656F662041727261793F652E656173696E673A742E5376672E456173696E675B652E656173696E675D2C64656C657465';
wwv_flow_api.g_varchar2_table(188) := '20652E656173696E67292C652E626567696E3D742E656E73757265556E697428652E626567696E2C226D7322292C652E6475723D742E656E73757265556E697428652E6475722C226D7322292C6F262628652E63616C634D6F64653D2273706C696E6522';
wwv_flow_api.g_varchar2_table(189) := '2C652E6B657953706C696E65733D6F2E6A6F696E28222022292C652E6B657954696D65733D22303B3122292C69262628652E66696C6C3D22667265657A65222C6C5B725D3D652E66726F6D2C746869732E61747472286C292C733D742E7175616E746974';
wwv_flow_api.g_varchar2_table(190) := '7928652E626567696E7C7C30292E76616C75652C652E626567696E3D22696E646566696E69746522292C613D746869732E656C656D2822616E696D617465222C742E657874656E64287B6174747269627574654E616D653A727D2C6529292C6926267365';
wwv_flow_api.g_varchar2_table(191) := '7454696D656F75742866756E6374696F6E28297B7472797B612E5F6E6F64652E626567696E456C656D656E7428297D63617463682874297B6C5B725D3D652E746F2C746869732E61747472286C292C612E72656D6F766528297D7D2E62696E6428746869';
wwv_flow_api.g_varchar2_table(192) := '73292C73292C6E2626612E5F6E6F64652E6164644576656E744C697374656E65722822626567696E4576656E74222C66756E6374696F6E28297B6E2E656D69742822616E696D6174696F6E426567696E222C7B656C656D656E743A746869732C616E696D';
wwv_flow_api.g_varchar2_table(193) := '6174653A612E5F6E6F64652C706172616D733A657D297D2E62696E64287468697329292C612E5F6E6F64652E6164644576656E744C697374656E65722822656E644576656E74222C66756E6374696F6E28297B6E26266E2E656D69742822616E696D6174';
wwv_flow_api.g_varchar2_table(194) := '696F6E456E64222C7B656C656D656E743A746869732C616E696D6174653A612E5F6E6F64652C706172616D733A657D292C692626286C5B725D3D652E746F2C746869732E61747472286C292C612E72656D6F76652829297D2E62696E6428746869732929';
wwv_flow_api.g_varchar2_table(195) := '7D655B725D696E7374616E63656F662041727261793F655B725D2E666F72456163682866756E6374696F6E2865297B612E62696E6428746869732928652C2131297D2E62696E64287468697329293A612E62696E6428746869732928655B725D2C69297D';
wwv_flow_api.g_varchar2_table(196) := '2E62696E64287468697329292C746869737D7D292C742E5376672E6973537570706F727465643D66756E6374696F6E2865297B72657475726E20692E696D706C656D656E746174696F6E2E686173466561747572652822687474703A2F2F7777772E7733';
wwv_flow_api.g_varchar2_table(197) := '2E6F72672F54522F53564731312F6665617475726523222B652C22312E3122297D3B742E5376672E456173696E673D7B65617365496E53696E653A5B2E34372C302C2E3734352C2E3731355D2C656173654F757453696E653A5B2E33392C2E3537352C2E';
wwv_flow_api.g_varchar2_table(198) := '3536352C315D2C65617365496E4F757453696E653A5B2E3434352C2E30352C2E35352C2E39355D2C65617365496E517561643A5B2E35352C2E3038352C2E36382C2E35335D2C656173654F7574517561643A5B2E32352C2E34362C2E34352C2E39345D2C';
wwv_flow_api.g_varchar2_table(199) := '65617365496E4F7574517561643A5B2E3435352C2E30332C2E3531352C2E3935355D2C65617365496E43756269633A5B2E35352C2E3035352C2E3637352C2E31395D2C656173654F757443756269633A5B2E3231352C2E36312C2E3335352C315D2C6561';
wwv_flow_api.g_varchar2_table(200) := '7365496E4F757443756269633A5B2E3634352C2E3034352C2E3335352C315D2C65617365496E51756172743A5B2E3839352C2E30332C2E3638352C2E32325D2C656173654F757451756172743A5B2E3136352C2E38342C2E34342C315D2C65617365496E';
wwv_flow_api.g_varchar2_table(201) := '4F757451756172743A5B2E37372C302C2E3137352C315D2C65617365496E5175696E743A5B2E3735352C2E30352C2E3835352C2E30365D2C656173654F75745175696E743A5B2E32332C312C2E33322C315D2C65617365496E4F75745175696E743A5B2E';
wwv_flow_api.g_varchar2_table(202) := '38362C302C2E30372C315D2C65617365496E4578706F3A5B2E39352C2E30352C2E3739352C2E3033355D2C656173654F75744578706F3A5B2E31392C312C2E32322C315D2C65617365496E4F75744578706F3A5B312C302C302C315D2C65617365496E43';
wwv_flow_api.g_varchar2_table(203) := '6972633A5B2E362C2E30342C2E39382C2E3333355D2C656173654F7574436972633A5B2E3037352C2E38322C2E3136352C315D2C65617365496E4F7574436972633A5B2E3738352C2E3133352C2E31352C2E38365D2C65617365496E4261636B3A5B2E36';
wwv_flow_api.g_varchar2_table(204) := '2C2D2E32382C2E3733352C2E3034355D2C656173654F75744261636B3A5B2E3137352C2E3838352C2E33322C312E3237355D2C65617365496E4F75744261636B3A5B2E36382C2D2E35352C2E3236352C312E35355D7D2C742E5376672E4C6973743D742E';
wwv_flow_api.g_varchar2_table(205) := '436C6173732E657874656E64287B636F6E7374727563746F723A66756E6374696F6E2865297B76617220693D746869733B746869732E737667456C656D656E74733D5B5D3B666F7228766172206E3D303B6E3C652E6C656E6774683B6E2B2B2974686973';
wwv_flow_api.g_varchar2_table(206) := '2E737667456C656D656E74732E70757368286E657720742E53766728655B6E5D29293B4F626A6563742E6B65797328742E5376672E70726F746F74797065292E66696C7465722866756E6374696F6E2865297B72657475726E2D313D3D3D5B22636F6E73';
wwv_flow_api.g_varchar2_table(207) := '74727563746F72222C22706172656E74222C22717565727953656C6563746F72222C22717565727953656C6563746F72416C6C222C227265706C616365222C22617070656E64222C22636C6173736573222C22686569676874222C227769647468225D2E';
wwv_flow_api.g_varchar2_table(208) := '696E6465784F662865297D292E666F72456163682866756E6374696F6E2865297B695B655D3D66756E6374696F6E28297B766172206E3D41727261792E70726F746F747970652E736C6963652E63616C6C28617267756D656E74732C30293B7265747572';
wwv_flow_api.g_varchar2_table(209) := '6E20692E737667456C656D656E74732E666F72456163682866756E6374696F6E2869297B742E5376672E70726F746F747970655B655D2E6170706C7928692C6E297D292C697D7D297D7D297D28746869737C7C676C6F62616C2C65292C66756E6374696F';
wwv_flow_api.g_varchar2_table(210) := '6E28652C74297B2275736520737472696374223B66756E6374696F6E206928652C692C6E2C722C612C73297B766172206F3D742E657874656E64287B636F6D6D616E643A613F652E746F4C6F7765724361736528293A652E746F55707065724361736528';
wwv_flow_api.g_varchar2_table(211) := '297D2C692C733F7B646174613A737D3A7B7D293B6E2E73706C69636528722C302C6F297D66756E6374696F6E206E28652C74297B652E666F72456163682866756E6374696F6E28692C6E297B725B692E636F6D6D616E642E746F4C6F7765724361736528';
wwv_flow_api.g_varchar2_table(212) := '295D2E666F72456163682866756E6374696F6E28722C61297B7428692C722C6E2C612C65297D297D297D76617220723D7B6D3A5B2278222C2279225D2C6C3A5B2278222C2279225D2C633A5B227831222C227931222C227832222C227932222C2278222C';
wwv_flow_api.g_varchar2_table(213) := '2279225D2C613A5B227278222C227279222C22784172222C226C4166222C227366222C2278222C2279225D7D2C613D7B61636375726163793A337D3B742E5376672E506174683D742E436C6173732E657874656E64287B636F6E7374727563746F723A66';
wwv_flow_api.g_varchar2_table(214) := '756E6374696F6E28652C69297B746869732E70617468456C656D656E74733D5B5D2C746869732E706F733D302C746869732E636C6F73653D652C746869732E6F7074696F6E733D742E657874656E64287B7D2C612C69297D2C706F736974696F6E3A6675';
wwv_flow_api.g_varchar2_table(215) := '6E6374696F6E2865297B72657475726E20766F69642030213D3D653F28746869732E706F733D4D6174682E6D617828302C4D6174682E6D696E28746869732E70617468456C656D656E74732E6C656E6774682C6529292C74686973293A746869732E706F';
wwv_flow_api.g_varchar2_table(216) := '737D2C72656D6F76653A66756E6374696F6E2865297B72657475726E20746869732E70617468456C656D656E74732E73706C69636528746869732E706F732C65292C746869737D2C6D6F76653A66756E6374696F6E28652C742C6E2C72297B7265747572';
wwv_flow_api.g_varchar2_table(217) := '6E206928224D222C7B783A2B652C793A2B747D2C746869732E70617468456C656D656E74732C746869732E706F732B2B2C6E2C72292C746869737D2C6C696E653A66756E6374696F6E28652C742C6E2C72297B72657475726E206928224C222C7B783A2B';
wwv_flow_api.g_varchar2_table(218) := '652C793A2B747D2C746869732E70617468456C656D656E74732C746869732E706F732B2B2C6E2C72292C746869737D2C63757276653A66756E6374696F6E28652C742C6E2C722C612C732C6F2C6C297B72657475726E2069282243222C7B78313A2B652C';
wwv_flow_api.g_varchar2_table(219) := '79313A2B742C78323A2B6E2C79323A2B722C783A2B612C793A2B737D2C746869732E70617468456C656D656E74732C746869732E706F732B2B2C6F2C6C292C746869737D2C6172633A66756E6374696F6E28652C742C6E2C722C612C732C6F2C6C2C6329';
wwv_flow_api.g_varchar2_table(220) := '7B72657475726E2069282241222C7B72783A2B652C72793A2B742C7841723A2B6E2C6C41663A2B722C73663A2B612C783A2B732C793A2B6F7D2C746869732E70617468456C656D656E74732C746869732E706F732B2B2C6C2C63292C746869737D2C7363';
wwv_flow_api.g_varchar2_table(221) := '616C653A66756E6374696F6E28652C74297B72657475726E206E28746869732E70617468456C656D656E74732C66756E6374696F6E28692C6E297B695B6E5D2A3D2278223D3D3D6E5B305D3F653A747D292C746869737D2C7472616E736C6174653A6675';
wwv_flow_api.g_varchar2_table(222) := '6E6374696F6E28652C74297B72657475726E206E28746869732E70617468456C656D656E74732C66756E6374696F6E28692C6E297B695B6E5D2B3D2278223D3D3D6E5B305D3F653A747D292C746869737D2C7472616E73666F726D3A66756E6374696F6E';
wwv_flow_api.g_varchar2_table(223) := '2865297B72657475726E206E28746869732E70617468456C656D656E74732C66756E6374696F6E28742C692C6E2C722C61297B76617220733D6528742C692C6E2C722C61293B28737C7C303D3D3D7329262628745B695D3D73297D292C746869737D2C70';
wwv_flow_api.g_varchar2_table(224) := '617273653A66756E6374696F6E2865297B76617220693D652E7265706C616365282F285B412D5A612D7A5D29285B302D395D292F672C22243120243222292E7265706C616365282F285B302D395D29285B412D5A612D7A5D292F672C2224312024322229';
wwv_flow_api.g_varchar2_table(225) := '2E73706C6974282F5B5C732C5D2B2F292E7265647563652866756E6374696F6E28652C74297B72657475726E20742E6D61746368282F5B412D5A612D7A5D2F292626652E70757368285B5D292C655B652E6C656E6774682D315D2E707573682874292C65';
wwv_flow_api.g_varchar2_table(226) := '7D2C5B5D293B225A223D3D3D695B692E6C656E6774682D315D5B305D2E746F55707065724361736528292626692E706F7028293B766172206E3D692E6D61702866756E6374696F6E2865297B76617220693D652E736869667428292C6E3D725B692E746F';
wwv_flow_api.g_varchar2_table(227) := '4C6F7765724361736528295D3B72657475726E20742E657874656E64287B636F6D6D616E643A697D2C6E2E7265647563652866756E6374696F6E28742C692C6E297B72657475726E20745B695D3D2B655B6E5D2C747D2C7B7D29297D292C613D5B746869';
wwv_flow_api.g_varchar2_table(228) := '732E706F732C305D3B72657475726E2041727261792E70726F746F747970652E707573682E6170706C7928612C6E292C41727261792E70726F746F747970652E73706C6963652E6170706C7928746869732E70617468456C656D656E74732C61292C7468';
wwv_flow_api.g_varchar2_table(229) := '69732E706F732B3D6E2E6C656E6774682C746869737D2C737472696E676966793A66756E6374696F6E28297B76617220653D4D6174682E706F772831302C746869732E6F7074696F6E732E6163637572616379293B72657475726E20746869732E706174';
wwv_flow_api.g_varchar2_table(230) := '68456C656D656E74732E7265647563652866756E6374696F6E28742C69297B766172206E3D725B692E636F6D6D616E642E746F4C6F7765724361736528295D2E6D61702866756E6374696F6E2874297B72657475726E20746869732E6F7074696F6E732E';
wwv_flow_api.g_varchar2_table(231) := '61636375726163793F4D6174682E726F756E6428695B745D2A65292F653A695B745D7D2E62696E64287468697329293B72657475726E20742B692E636F6D6D616E642B6E2E6A6F696E28222C22297D2E62696E642874686973292C2222292B2874686973';
wwv_flow_api.g_varchar2_table(232) := '2E636C6F73653F225A223A2222297D2C636C6F6E653A66756E6374696F6E2865297B76617220693D6E657720742E5376672E5061746828657C7C746869732E636C6F7365293B72657475726E20692E706F733D746869732E706F732C692E70617468456C';
wwv_flow_api.g_varchar2_table(233) := '656D656E74733D746869732E70617468456C656D656E74732E736C69636528292E6D61702866756E6374696F6E2865297B72657475726E20742E657874656E64287B7D2C65297D292C692E6F7074696F6E733D742E657874656E64287B7D2C746869732E';
wwv_flow_api.g_varchar2_table(234) := '6F7074696F6E73292C697D2C73706C69744279436F6D6D616E643A66756E6374696F6E2865297B76617220693D5B6E657720742E5376672E506174685D3B72657475726E20746869732E70617468456C656D656E74732E666F72456163682866756E6374';
wwv_flow_api.g_varchar2_table(235) := '696F6E286E297B6E2E636F6D6D616E643D3D3D652E746F5570706572436173652829262630213D3D695B692E6C656E6774682D315D2E70617468456C656D656E74732E6C656E6774682626692E70757368286E657720742E5376672E50617468292C695B';
wwv_flow_api.g_varchar2_table(236) := '692E6C656E6774682D315D2E70617468456C656D656E74732E70757368286E297D292C697D7D292C742E5376672E506174682E656C656D656E744465736372697074696F6E733D722C742E5376672E506174682E6A6F696E3D66756E6374696F6E28652C';
wwv_flow_api.g_varchar2_table(237) := '692C6E297B666F722876617220723D6E657720742E5376672E5061746828692C6E292C613D303B613C652E6C656E6774683B612B2B29666F722876617220733D655B615D2C6F3D303B6F3C732E70617468456C656D656E74732E6C656E6774683B6F2B2B';
wwv_flow_api.g_varchar2_table(238) := '29722E70617468456C656D656E74732E7075736828732E70617468456C656D656E74735B6F5D293B72657475726E20727D7D28746869737C7C676C6F62616C2C65292C66756E6374696F6E28652C74297B2275736520737472696374223B652E77696E64';
wwv_flow_api.g_varchar2_table(239) := '6F772C652E646F63756D656E743B76617220693D7B783A7B706F733A2278222C6C656E3A227769647468222C6469723A22686F72697A6F6E74616C222C7265637453746172743A227831222C72656374456E643A227832222C726563744F66667365743A';
wwv_flow_api.g_varchar2_table(240) := '227932227D2C793A7B706F733A2279222C6C656E3A22686569676874222C6469723A22766572746963616C222C7265637453746172743A227932222C72656374456E643A227931222C726563744F66667365743A227831227D7D3B742E417869733D742E';
wwv_flow_api.g_varchar2_table(241) := '436C6173732E657874656E64287B636F6E7374727563746F723A66756E6374696F6E28652C742C6E2C72297B746869732E756E6974733D652C746869732E636F756E746572556E6974733D653D3D3D692E783F692E793A692E782C746869732E63686172';
wwv_flow_api.g_varchar2_table(242) := '74526563743D742C746869732E617869734C656E6774683D745B652E72656374456E645D2D745B652E7265637453746172745D2C746869732E677269644F66667365743D745B652E726563744F66667365745D2C746869732E7469636B733D6E2C746869';
wwv_flow_api.g_varchar2_table(243) := '732E6F7074696F6E733D727D2C63726561746547726964416E644C6162656C733A66756E6374696F6E28652C692C6E2C722C61297B76617220733D725B2261786973222B746869732E756E6974732E706F732E746F55707065724361736528295D2C6F3D';
wwv_flow_api.g_varchar2_table(244) := '746869732E7469636B732E6D617028746869732E70726F6A65637456616C75652E62696E64287468697329292C6C3D746869732E7469636B732E6D617028732E6C6162656C496E746572706F6C6174696F6E466E63293B6F2E666F72456163682866756E';
wwv_flow_api.g_varchar2_table(245) := '6374696F6E28632C64297B76617220752C683D7B783A302C793A307D3B753D6F5B642B315D3F6F5B642B315D2D633A4D6174682E6D617828746869732E617869734C656E6774682D632C3330292C742E697346616C7365794275745A65726F286C5B645D';
wwv_flow_api.g_varchar2_table(246) := '2926262222213D3D6C5B645D7C7C282278223D3D3D746869732E756E6974732E706F733F28633D746869732E6368617274526563742E78312B632C682E783D722E61786973582E6C6162656C4F66667365742E782C227374617274223D3D3D722E617869';
wwv_flow_api.g_varchar2_table(247) := '73582E706F736974696F6E3F682E793D746869732E6368617274526563742E70616464696E672E746F702B722E61786973582E6C6162656C4F66667365742E792B286E3F353A3230293A682E793D746869732E6368617274526563742E79312B722E6178';
wwv_flow_api.g_varchar2_table(248) := '6973582E6C6162656C4F66667365742E792B286E3F353A323029293A28633D746869732E6368617274526563742E79312D632C682E793D722E61786973592E6C6162656C4F66667365742E792D286E3F753A30292C227374617274223D3D3D722E617869';
wwv_flow_api.g_varchar2_table(249) := '73592E706F736974696F6E3F682E783D6E3F746869732E6368617274526563742E70616464696E672E6C6566742B722E61786973592E6C6162656C4F66667365742E783A746869732E6368617274526563742E78312D31303A682E783D746869732E6368';
wwv_flow_api.g_varchar2_table(250) := '617274526563742E78322B722E61786973592E6C6162656C4F66667365742E782B3130292C732E73686F77477269642626742E6372656174654772696428632C642C746869732C746869732E677269644F66667365742C746869732E6368617274526563';
wwv_flow_api.g_varchar2_table(251) := '745B746869732E636F756E746572556E6974732E6C656E5D28292C652C5B722E636C6173734E616D65732E677269642C722E636C6173734E616D65735B746869732E756E6974732E6469725D5D2C61292C732E73686F774C6162656C2626742E63726561';
wwv_flow_api.g_varchar2_table(252) := '74654C6162656C28632C752C642C6C2C746869732C732E6F66667365742C682C692C5B722E636C6173734E616D65732E6C6162656C2C722E636C6173734E616D65735B746869732E756E6974732E6469725D2C227374617274223D3D3D732E706F736974';
wwv_flow_api.g_varchar2_table(253) := '696F6E3F722E636C6173734E616D65735B732E706F736974696F6E5D3A722E636C6173734E616D65732E656E645D2C6E2C6129297D2E62696E64287468697329297D2C70726F6A65637456616C75653A66756E6374696F6E28652C742C69297B7468726F';
wwv_flow_api.g_varchar2_table(254) := '77206E6577204572726F7228224261736520617869732063616E277420626520696E7374616E7469617465642122297D7D292C742E417869732E756E6974733D697D28746869737C7C676C6F62616C2C65292C66756E6374696F6E28652C74297B227573';
wwv_flow_api.g_varchar2_table(255) := '6520737472696374223B652E77696E646F772C652E646F63756D656E743B742E4175746F5363616C65417869733D742E417869732E657874656E64287B636F6E7374727563746F723A66756E6374696F6E28652C692C6E2C72297B76617220613D722E68';
wwv_flow_api.g_varchar2_table(256) := '6967684C6F777C7C742E676574486967684C6F7728692C722C652E706F73293B746869732E626F756E64733D742E676574426F756E6473286E5B652E72656374456E645D2D6E5B652E7265637453746172745D2C612C722E7363616C654D696E53706163';
wwv_flow_api.g_varchar2_table(257) := '657C7C32302C722E6F6E6C79496E7465676572292C746869732E72616E67653D7B6D696E3A746869732E626F756E64732E6D696E2C6D61783A746869732E626F756E64732E6D61787D2C742E4175746F5363616C65417869732E73757065722E636F6E73';
wwv_flow_api.g_varchar2_table(258) := '74727563746F722E63616C6C28746869732C652C6E2C746869732E626F756E64732E76616C7565732C72297D2C70726F6A65637456616C75653A66756E6374696F6E2865297B72657475726E20746869732E617869734C656E6774682A282B742E676574';
wwv_flow_api.g_varchar2_table(259) := '4D756C746956616C756528652C746869732E756E6974732E706F73292D746869732E626F756E64732E6D696E292F746869732E626F756E64732E72616E67657D7D297D28746869737C7C676C6F62616C2C65292C66756E6374696F6E28652C74297B2275';
wwv_flow_api.g_varchar2_table(260) := '736520737472696374223B652E77696E646F772C652E646F63756D656E743B742E46697865645363616C65417869733D742E417869732E657874656E64287B636F6E7374727563746F723A66756E6374696F6E28652C692C6E2C72297B76617220613D72';
wwv_flow_api.g_varchar2_table(261) := '2E686967684C6F777C7C742E676574486967684C6F7728692C722C652E706F73293B746869732E64697669736F723D722E64697669736F727C7C312C746869732E7469636B733D722E7469636B737C7C742E74696D657328746869732E64697669736F72';
wwv_flow_api.g_varchar2_table(262) := '292E6D61702866756E6374696F6E28652C74297B72657475726E20612E6C6F772B28612E686967682D612E6C6F77292F746869732E64697669736F722A747D2E62696E64287468697329292C746869732E7469636B732E736F72742866756E6374696F6E';
wwv_flow_api.g_varchar2_table(263) := '28652C74297B72657475726E20652D747D292C746869732E72616E67653D7B6D696E3A612E6C6F772C6D61783A612E686967687D2C742E46697865645363616C65417869732E73757065722E636F6E7374727563746F722E63616C6C28746869732C652C';
wwv_flow_api.g_varchar2_table(264) := '6E2C746869732E7469636B732C72292C746869732E737465704C656E6774683D746869732E617869734C656E6774682F746869732E64697669736F727D2C70726F6A65637456616C75653A66756E6374696F6E2865297B72657475726E20746869732E61';
wwv_flow_api.g_varchar2_table(265) := '7869734C656E6774682A282B742E6765744D756C746956616C756528652C746869732E756E6974732E706F73292D746869732E72616E67652E6D696E292F28746869732E72616E67652E6D61782D746869732E72616E67652E6D696E297D7D297D287468';
wwv_flow_api.g_varchar2_table(266) := '69737C7C676C6F62616C2C65292C66756E6374696F6E28652C74297B2275736520737472696374223B652E77696E646F772C652E646F63756D656E743B742E53746570417869733D742E417869732E657874656E64287B636F6E7374727563746F723A66';
wwv_flow_api.g_varchar2_table(267) := '756E6374696F6E28652C692C6E2C72297B742E53746570417869732E73757065722E636F6E7374727563746F722E63616C6C28746869732C652C6E2C722E7469636B732C72293B76617220613D4D6174682E6D617828312C722E7469636B732E6C656E67';
wwv_flow_api.g_varchar2_table(268) := '74682D28722E737472657463683F313A3029293B746869732E737465704C656E6774683D746869732E617869734C656E6774682F617D2C70726F6A65637456616C75653A66756E6374696F6E28652C74297B72657475726E20746869732E737465704C65';
wwv_flow_api.g_varchar2_table(269) := '6E6774682A747D7D297D28746869737C7C676C6F62616C2C65292C66756E6374696F6E28652C74297B2275736520737472696374223B652E77696E646F772C652E646F63756D656E743B76617220693D7B61786973583A7B6F66667365743A33302C706F';
wwv_flow_api.g_varchar2_table(270) := '736974696F6E3A22656E64222C6C6162656C4F66667365743A7B783A302C793A307D2C73686F774C6162656C3A21302C73686F77477269643A21302C6C6162656C496E746572706F6C6174696F6E466E633A742E6E6F6F702C747970653A766F69642030';
wwv_flow_api.g_varchar2_table(271) := '7D2C61786973593A7B6F66667365743A34302C706F736974696F6E3A227374617274222C6C6162656C4F66667365743A7B783A302C793A307D2C73686F774C6162656C3A21302C73686F77477269643A21302C6C6162656C496E746572706F6C6174696F';
wwv_flow_api.g_varchar2_table(272) := '6E466E633A742E6E6F6F702C747970653A766F696420302C7363616C654D696E53706163653A32302C6F6E6C79496E74656765723A21317D2C77696474683A766F696420302C6865696768743A766F696420302C73686F774C696E653A21302C73686F77';
wwv_flow_api.g_varchar2_table(273) := '506F696E743A21302C73686F77417265613A21312C61726561426173653A302C6C696E65536D6F6F74683A21302C73686F77477269644261636B67726F756E643A21312C6C6F773A766F696420302C686967683A766F696420302C636861727450616464';
wwv_flow_api.g_varchar2_table(274) := '696E673A7B746F703A31352C72696768743A31352C626F74746F6D3A352C6C6566743A31307D2C66756C6C57696474683A21312C72657665727365446174613A21312C636C6173734E616D65733A7B63686172743A2263742D63686172742D6C696E6522';
wwv_flow_api.g_varchar2_table(275) := '2C6C6162656C3A2263742D6C6162656C222C6C6162656C47726F75703A2263742D6C6162656C73222C7365726965733A2263742D736572696573222C6C696E653A2263742D6C696E65222C706F696E743A2263742D706F696E74222C617265613A226374';
wwv_flow_api.g_varchar2_table(276) := '2D61726561222C677269643A2263742D67726964222C6772696447726F75703A2263742D6772696473222C677269644261636B67726F756E643A2263742D677269642D6261636B67726F756E64222C766572746963616C3A2263742D766572746963616C';
wwv_flow_api.g_varchar2_table(277) := '222C686F72697A6F6E74616C3A2263742D686F72697A6F6E74616C222C73746172743A2263742D7374617274222C656E643A2263742D656E64227D7D3B742E4C696E653D742E426173652E657874656E64287B636F6E7374727563746F723A66756E6374';
wwv_flow_api.g_varchar2_table(278) := '696F6E28652C6E2C722C61297B742E4C696E652E73757065722E636F6E7374727563746F722E63616C6C28746869732C652C6E2C692C742E657874656E64287B7D2C692C72292C61297D2C63726561746543686172743A66756E6374696F6E2865297B76';
wwv_flow_api.g_varchar2_table(279) := '6172206E3D742E6E6F726D616C697A654461746128746869732E646174612C652E72657665727365446174612C2130293B746869732E7376673D742E63726561746553766728746869732E636F6E7461696E65722C652E77696474682C652E6865696768';
wwv_flow_api.g_varchar2_table(280) := '742C652E636C6173734E616D65732E6368617274293B76617220722C612C733D746869732E7376672E656C656D28226722292E616464436C61737328652E636C6173734E616D65732E6772696447726F7570292C6F3D746869732E7376672E656C656D28';
wwv_flow_api.g_varchar2_table(281) := '226722292C6C3D746869732E7376672E656C656D28226722292E616464436C61737328652E636C6173734E616D65732E6C6162656C47726F7570292C633D742E63726561746543686172745265637428746869732E7376672C652C692E70616464696E67';
wwv_flow_api.g_varchar2_table(282) := '293B723D766F696420303D3D3D652E61786973582E747970653F6E657720742E537465704178697328742E417869732E756E6974732E782C6E2E6E6F726D616C697A65642E7365726965732C632C742E657874656E64287B7D2C652E61786973582C7B74';
wwv_flow_api.g_varchar2_table(283) := '69636B733A6E2E6E6F726D616C697A65642E6C6162656C732C737472657463683A652E66756C6C57696474687D29293A652E61786973582E747970652E63616C6C28742C742E417869732E756E6974732E782C6E2E6E6F726D616C697A65642E73657269';
wwv_flow_api.g_varchar2_table(284) := '65732C632C652E6178697358292C613D766F696420303D3D3D652E61786973592E747970653F6E657720742E4175746F5363616C654178697328742E417869732E756E6974732E792C6E2E6E6F726D616C697A65642E7365726965732C632C742E657874';
wwv_flow_api.g_varchar2_table(285) := '656E64287B7D2C652E61786973592C7B686967683A742E69734E756D6572696328652E68696768293F652E686967683A652E61786973592E686967682C6C6F773A742E69734E756D6572696328652E6C6F77293F652E6C6F773A652E61786973592E6C6F';
wwv_flow_api.g_varchar2_table(286) := '777D29293A652E61786973592E747970652E63616C6C28742C742E417869732E756E6974732E792C6E2E6E6F726D616C697A65642E7365726965732C632C652E6178697359292C722E63726561746547726964416E644C6162656C7328732C6C2C746869';
wwv_flow_api.g_varchar2_table(287) := '732E737570706F727473466F726569676E4F626A6563742C652C746869732E6576656E74456D6974746572292C612E63726561746547726964416E644C6162656C7328732C6C2C746869732E737570706F727473466F726569676E4F626A6563742C652C';
wwv_flow_api.g_varchar2_table(288) := '746869732E6576656E74456D6974746572292C652E73686F77477269644261636B67726F756E642626742E637265617465477269644261636B67726F756E6428732C632C652E636C6173734E616D65732E677269644261636B67726F756E642C74686973';
wwv_flow_api.g_varchar2_table(289) := '2E6576656E74456D6974746572292C6E2E7261772E7365726965732E666F72456163682866756E6374696F6E28692C73297B766172206C3D6F2E656C656D28226722293B6C2E61747472287B2263743A7365726965732D6E616D65223A692E6E616D652C';
wwv_flow_api.g_varchar2_table(290) := '2263743A6D657461223A742E73657269616C697A6528692E6D657461297D292C6C2E616464436C617373285B652E636C6173734E616D65732E7365726965732C692E636C6173734E616D657C7C652E636C6173734E616D65732E7365726965732B222D22';
wwv_flow_api.g_varchar2_table(291) := '2B742E616C7068614E756D65726174652873295D2E6A6F696E2822202229293B76617220643D5B5D2C753D5B5D3B6E2E6E6F726D616C697A65642E7365726965735B735D2E666F72456163682866756E6374696F6E28652C6F297B766172206C3D7B783A';
wwv_flow_api.g_varchar2_table(292) := '632E78312B722E70726F6A65637456616C756528652C6F2C6E2E6E6F726D616C697A65642E7365726965735B735D292C793A632E79312D612E70726F6A65637456616C756528652C6F2C6E2E6E6F726D616C697A65642E7365726965735B735D297D3B64';
wwv_flow_api.g_varchar2_table(293) := '2E70757368286C2E782C6C2E79292C752E70757368287B76616C75653A652C76616C7565496E6465783A6F2C6D6574613A742E6765744D6574614461746128692C6F297D297D2E62696E64287468697329293B76617220683D7B6C696E65536D6F6F7468';
wwv_flow_api.g_varchar2_table(294) := '3A742E6765745365726965734F7074696F6E28692C652C226C696E65536D6F6F746822292C73686F77506F696E743A742E6765745365726965734F7074696F6E28692C652C2273686F77506F696E7422292C73686F774C696E653A742E67657453657269';
wwv_flow_api.g_varchar2_table(295) := '65734F7074696F6E28692C652C2273686F774C696E6522292C73686F77417265613A742E6765745365726965734F7074696F6E28692C652C2273686F774172656122292C61726561426173653A742E6765745365726965734F7074696F6E28692C652C22';
wwv_flow_api.g_varchar2_table(296) := '617265614261736522297D2C703D282266756E6374696F6E223D3D747970656F6620682E6C696E65536D6F6F74683F682E6C696E65536D6F6F74683A682E6C696E65536D6F6F74683F742E496E746572706F6C6174696F6E2E6D6F6E6F746F6E65437562';
wwv_flow_api.g_varchar2_table(297) := '696328293A742E496E746572706F6C6174696F6E2E6E6F6E6528292928642C75293B696628682E73686F77506F696E742626702E70617468456C656D656E74732E666F72456163682866756E6374696F6E286E297B766172206F3D6C2E656C656D28226C';
wwv_flow_api.g_varchar2_table(298) := '696E65222C7B78313A6E2E782C79313A6E2E792C78323A6E2E782B2E30312C79323A6E2E797D2C652E636C6173734E616D65732E706F696E74292E61747472287B2263743A76616C7565223A5B6E2E646174612E76616C75652E782C6E2E646174612E76';
wwv_flow_api.g_varchar2_table(299) := '616C75652E795D2E66696C74657228742E69734E756D65726963292E6A6F696E28222C22292C2263743A6D657461223A742E73657269616C697A65286E2E646174612E6D657461297D293B746869732E6576656E74456D69747465722E656D6974282264';
wwv_flow_api.g_varchar2_table(300) := '726177222C7B747970653A22706F696E74222C76616C75653A6E2E646174612E76616C75652C696E6465783A6E2E646174612E76616C7565496E6465782C6D6574613A6E2E646174612E6D6574612C7365726965733A692C736572696573496E6465783A';
wwv_flow_api.g_varchar2_table(301) := '732C61786973583A722C61786973593A612C67726F75703A6C2C656C656D656E743A6F2C783A6E2E782C793A6E2E797D297D2E62696E64287468697329292C682E73686F774C696E65297B76617220663D6C2E656C656D282270617468222C7B643A702E';
wwv_flow_api.g_varchar2_table(302) := '737472696E6769667928297D2C652E636C6173734E616D65732E6C696E652C2130293B746869732E6576656E74456D69747465722E656D6974282264726177222C7B747970653A226C696E65222C76616C7565733A6E2E6E6F726D616C697A65642E7365';
wwv_flow_api.g_varchar2_table(303) := '726965735B735D2C706174683A702E636C6F6E6528292C6368617274526563743A632C696E6465783A732C7365726965733A692C736572696573496E6465783A732C7365726965734D6574613A692E6D6574612C61786973583A722C61786973593A612C';
wwv_flow_api.g_varchar2_table(304) := '67726F75703A6C2C656C656D656E743A667D297D696628682E73686F77417265612626612E72616E6765297B766172206D3D4D6174682E6D6178284D6174682E6D696E28682E61726561426173652C612E72616E67652E6D6178292C612E72616E67652E';
wwv_flow_api.g_varchar2_table(305) := '6D696E292C673D632E79312D612E70726F6A65637456616C7565286D293B702E73706C69744279436F6D6D616E6428224D22292E66696C7465722866756E6374696F6E2865297B72657475726E20652E70617468456C656D656E74732E6C656E6774683E';
wwv_flow_api.g_varchar2_table(306) := '317D292E6D61702866756E6374696F6E2865297B76617220743D652E70617468456C656D656E74735B305D2C693D652E70617468456C656D656E74735B652E70617468456C656D656E74732E6C656E6774682D315D3B72657475726E20652E636C6F6E65';
wwv_flow_api.g_varchar2_table(307) := '282130292E706F736974696F6E2830292E72656D6F76652831292E6D6F766528742E782C67292E6C696E6528742E782C742E79292E706F736974696F6E28652E70617468456C656D656E74732E6C656E6774682B31292E6C696E6528692E782C67297D29';
wwv_flow_api.g_varchar2_table(308) := '2E666F72456163682866756E6374696F6E2874297B766172206F3D6C2E656C656D282270617468222C7B643A742E737472696E6769667928297D2C652E636C6173734E616D65732E617265612C2130293B746869732E6576656E74456D69747465722E65';
wwv_flow_api.g_varchar2_table(309) := '6D6974282264726177222C7B747970653A2261726561222C76616C7565733A6E2E6E6F726D616C697A65642E7365726965735B735D2C706174683A742E636C6F6E6528292C7365726965733A692C736572696573496E6465783A732C61786973583A722C';
wwv_flow_api.g_varchar2_table(310) := '61786973593A612C6368617274526563743A632C696E6465783A732C67726F75703A6C2C656C656D656E743A6F7D297D2E62696E64287468697329297D7D2E62696E64287468697329292C746869732E6576656E74456D69747465722E656D6974282263';
wwv_flow_api.g_varchar2_table(311) := '726561746564222C7B626F756E64733A612E626F756E64732C6368617274526563743A632C61786973583A722C61786973593A612C7376673A746869732E7376672C6F7074696F6E733A657D297D7D297D28746869737C7C676C6F62616C2C65292C6675';
wwv_flow_api.g_varchar2_table(312) := '6E6374696F6E28652C74297B2275736520737472696374223B652E77696E646F772C652E646F63756D656E743B76617220693D7B61786973583A7B6F66667365743A33302C706F736974696F6E3A22656E64222C6C6162656C4F66667365743A7B783A30';
wwv_flow_api.g_varchar2_table(313) := '2C793A307D2C73686F774C6162656C3A21302C73686F77477269643A21302C6C6162656C496E746572706F6C6174696F6E466E633A742E6E6F6F702C7363616C654D696E53706163653A33302C6F6E6C79496E74656765723A21317D2C61786973593A7B';
wwv_flow_api.g_varchar2_table(314) := '6F66667365743A34302C706F736974696F6E3A227374617274222C6C6162656C4F66667365743A7B783A302C793A307D2C73686F774C6162656C3A21302C73686F77477269643A21302C6C6162656C496E746572706F6C6174696F6E466E633A742E6E6F';
wwv_flow_api.g_varchar2_table(315) := '6F702C7363616C654D696E53706163653A32302C6F6E6C79496E74656765723A21317D2C77696474683A766F696420302C6865696768743A766F696420302C686967683A766F696420302C6C6F773A766F696420302C7265666572656E636556616C7565';
wwv_flow_api.g_varchar2_table(316) := '3A302C636861727450616464696E673A7B746F703A31352C72696768743A31352C626F74746F6D3A352C6C6566743A31307D2C73657269657342617244697374616E63653A31352C737461636B426172733A21312C737461636B4D6F64653A2261636375';
wwv_flow_api.g_varchar2_table(317) := '6D756C617465222C686F72697A6F6E74616C426172733A21312C646973747269627574655365726965733A21312C72657665727365446174613A21312C73686F77477269644261636B67726F756E643A21312C636C6173734E616D65733A7B6368617274';
wwv_flow_api.g_varchar2_table(318) := '3A2263742D63686172742D626172222C686F72697A6F6E74616C426172733A2263742D686F72697A6F6E74616C2D62617273222C6C6162656C3A2263742D6C6162656C222C6C6162656C47726F75703A2263742D6C6162656C73222C7365726965733A22';
wwv_flow_api.g_varchar2_table(319) := '63742D736572696573222C6261723A2263742D626172222C677269643A2263742D67726964222C6772696447726F75703A2263742D6772696473222C677269644261636B67726F756E643A2263742D677269642D6261636B67726F756E64222C76657274';
wwv_flow_api.g_varchar2_table(320) := '6963616C3A2263742D766572746963616C222C686F72697A6F6E74616C3A2263742D686F72697A6F6E74616C222C73746172743A2263742D7374617274222C656E643A2263742D656E64227D7D3B742E4261723D742E426173652E657874656E64287B63';
wwv_flow_api.g_varchar2_table(321) := '6F6E7374727563746F723A66756E6374696F6E28652C6E2C722C61297B742E4261722E73757065722E636F6E7374727563746F722E63616C6C28746869732C652C6E2C692C742E657874656E64287B7D2C692C72292C61297D2C63726561746543686172';
wwv_flow_api.g_varchar2_table(322) := '743A66756E6374696F6E2865297B766172206E2C723B652E646973747269627574655365726965733F286E3D742E6E6F726D616C697A654461746128746869732E646174612C652E72657665727365446174612C652E686F72697A6F6E74616C42617273';
wwv_flow_api.g_varchar2_table(323) := '3F2278223A22792229292E6E6F726D616C697A65642E7365726965733D6E2E6E6F726D616C697A65642E7365726965732E6D61702866756E6374696F6E2865297B72657475726E5B655D7D293A6E3D742E6E6F726D616C697A654461746128746869732E';
wwv_flow_api.g_varchar2_table(324) := '646174612C652E72657665727365446174612C652E686F72697A6F6E74616C426172733F2278223A227922292C746869732E7376673D742E63726561746553766728746869732E636F6E7461696E65722C652E77696474682C652E6865696768742C652E';
wwv_flow_api.g_varchar2_table(325) := '636C6173734E616D65732E63686172742B28652E686F72697A6F6E74616C426172733F2220222B652E636C6173734E616D65732E686F72697A6F6E74616C426172733A222229293B76617220613D746869732E7376672E656C656D28226722292E616464';
wwv_flow_api.g_varchar2_table(326) := '436C61737328652E636C6173734E616D65732E6772696447726F7570292C733D746869732E7376672E656C656D28226722292C6F3D746869732E7376672E656C656D28226722292E616464436C61737328652E636C6173734E616D65732E6C6162656C47';
wwv_flow_api.g_varchar2_table(327) := '726F7570293B696628652E737461636B42617273262630213D3D6E2E6E6F726D616C697A65642E7365726965732E6C656E677468297B766172206C3D742E73657269616C4D6170286E2E6E6F726D616C697A65642E7365726965732C66756E6374696F6E';
wwv_flow_api.g_varchar2_table(328) := '28297B72657475726E2041727261792E70726F746F747970652E736C6963652E63616C6C28617267756D656E7473292E6D61702866756E6374696F6E2865297B72657475726E20657D292E7265647563652866756E6374696F6E28652C74297B72657475';
wwv_flow_api.g_varchar2_table(329) := '726E7B783A652E782B28742626742E78297C7C302C793A652E792B28742626742E79297C7C307D7D2C7B783A302C793A307D297D293B723D742E676574486967684C6F77285B6C5D2C652C652E686F72697A6F6E74616C426172733F2278223A22792229';
wwv_flow_api.g_varchar2_table(330) := '7D656C736520723D742E676574486967684C6F77286E2E6E6F726D616C697A65642E7365726965732C652C652E686F72697A6F6E74616C426172733F2278223A227922293B722E686967683D2B652E686967687C7C28303D3D3D652E686967683F303A72';
wwv_flow_api.g_varchar2_table(331) := '2E68696768292C722E6C6F773D2B652E6C6F777C7C28303D3D3D652E6C6F773F303A722E6C6F77293B76617220632C642C752C682C702C663D742E63726561746543686172745265637428746869732E7376672C652C692E70616464696E67293B643D65';
wwv_flow_api.g_varchar2_table(332) := '2E646973747269627574655365726965732626652E737461636B426172733F6E2E6E6F726D616C697A65642E6C6162656C732E736C69636528302C31293A6E2E6E6F726D616C697A65642E6C6162656C732C652E686F72697A6F6E74616C426172733F28';
wwv_flow_api.g_varchar2_table(333) := '633D683D766F696420303D3D3D652E61786973582E747970653F6E657720742E4175746F5363616C654178697328742E417869732E756E6974732E782C6E2E6E6F726D616C697A65642E7365726965732C662C742E657874656E64287B7D2C652E617869';
wwv_flow_api.g_varchar2_table(334) := '73582C7B686967684C6F773A722C7265666572656E636556616C75653A307D29293A652E61786973582E747970652E63616C6C28742C742E417869732E756E6974732E782C6E2E6E6F726D616C697A65642E7365726965732C662C742E657874656E6428';
wwv_flow_api.g_varchar2_table(335) := '7B7D2C652E61786973582C7B686967684C6F773A722C7265666572656E636556616C75653A307D29292C753D703D766F696420303D3D3D652E61786973592E747970653F6E657720742E537465704178697328742E417869732E756E6974732E792C6E2E';
wwv_flow_api.g_varchar2_table(336) := '6E6F726D616C697A65642E7365726965732C662C7B7469636B733A647D293A652E61786973592E747970652E63616C6C28742C742E417869732E756E6974732E792C6E2E6E6F726D616C697A65642E7365726965732C662C652E617869735929293A2875';
wwv_flow_api.g_varchar2_table(337) := '3D683D766F696420303D3D3D652E61786973582E747970653F6E657720742E537465704178697328742E417869732E756E6974732E782C6E2E6E6F726D616C697A65642E7365726965732C662C7B7469636B733A647D293A652E61786973582E74797065';
wwv_flow_api.g_varchar2_table(338) := '2E63616C6C28742C742E417869732E756E6974732E782C6E2E6E6F726D616C697A65642E7365726965732C662C652E6178697358292C633D703D766F696420303D3D3D652E61786973592E747970653F6E657720742E4175746F5363616C654178697328';
wwv_flow_api.g_varchar2_table(339) := '742E417869732E756E6974732E792C6E2E6E6F726D616C697A65642E7365726965732C662C742E657874656E64287B7D2C652E61786973592C7B686967684C6F773A722C7265666572656E636556616C75653A307D29293A652E61786973592E74797065';
wwv_flow_api.g_varchar2_table(340) := '2E63616C6C28742C742E417869732E756E6974732E792C6E2E6E6F726D616C697A65642E7365726965732C662C742E657874656E64287B7D2C652E61786973592C7B686967684C6F773A722C7265666572656E636556616C75653A307D2929293B766172';
wwv_flow_api.g_varchar2_table(341) := '206D3D652E686F72697A6F6E74616C426172733F662E78312B632E70726F6A65637456616C75652830293A662E79312D632E70726F6A65637456616C75652830292C673D5B5D3B752E63726561746547726964416E644C6162656C7328612C6F2C746869';
wwv_flow_api.g_varchar2_table(342) := '732E737570706F727473466F726569676E4F626A6563742C652C746869732E6576656E74456D6974746572292C632E63726561746547726964416E644C6162656C7328612C6F2C746869732E737570706F727473466F726569676E4F626A6563742C652C';
wwv_flow_api.g_varchar2_table(343) := '746869732E6576656E74456D6974746572292C652E73686F77477269644261636B67726F756E642626742E637265617465477269644261636B67726F756E6428612C662C652E636C6173734E616D65732E677269644261636B67726F756E642C74686973';
wwv_flow_api.g_varchar2_table(344) := '2E6576656E74456D6974746572292C6E2E7261772E7365726965732E666F72456163682866756E6374696F6E28692C72297B76617220612C6F2C6C3D722D286E2E7261772E7365726965732E6C656E6774682D31292F323B613D652E6469737472696275';
wwv_flow_api.g_varchar2_table(345) := '7465536572696573262621652E737461636B426172733F752E617869734C656E6774682F6E2E6E6F726D616C697A65642E7365726965732E6C656E6774682F323A652E646973747269627574655365726965732626652E737461636B426172733F752E61';
wwv_flow_api.g_varchar2_table(346) := '7869734C656E6774682F323A752E617869734C656E6774682F6E2E6E6F726D616C697A65642E7365726965735B725D2E6C656E6774682F322C286F3D732E656C656D2822672229292E61747472287B2263743A7365726965732D6E616D65223A692E6E61';
wwv_flow_api.g_varchar2_table(347) := '6D652C2263743A6D657461223A742E73657269616C697A6528692E6D657461297D292C6F2E616464436C617373285B652E636C6173734E616D65732E7365726965732C692E636C6173734E616D657C7C652E636C6173734E616D65732E7365726965732B';
wwv_flow_api.g_varchar2_table(348) := '222D222B742E616C7068614E756D65726174652872295D2E6A6F696E2822202229292C6E2E6E6F726D616C697A65642E7365726965735B725D2E666F72456163682866756E6374696F6E28732C64297B76617220762C782C792C623B696628623D652E64';
wwv_flow_api.g_varchar2_table(349) := '697374726962757465536572696573262621652E737461636B426172733F723A652E646973747269627574655365726965732626652E737461636B426172733F303A642C763D652E686F72697A6F6E74616C426172733F7B783A662E78312B632E70726F';
wwv_flow_api.g_varchar2_table(350) := '6A65637456616C756528732626732E783F732E783A302C642C6E2E6E6F726D616C697A65642E7365726965735B725D292C793A662E79312D752E70726F6A65637456616C756528732626732E793F732E793A302C622C6E2E6E6F726D616C697A65642E73';
wwv_flow_api.g_varchar2_table(351) := '65726965735B725D297D3A7B783A662E78312B752E70726F6A65637456616C756528732626732E783F732E783A302C622C6E2E6E6F726D616C697A65642E7365726965735B725D292C793A662E79312D632E70726F6A65637456616C756528732626732E';
wwv_flow_api.g_varchar2_table(352) := '793F732E793A302C642C6E2E6E6F726D616C697A65642E7365726965735B725D297D2C7520696E7374616E63656F6620742E5374657041786973262628752E6F7074696F6E732E737472657463687C7C28765B752E756E6974732E706F735D2B3D612A28';
wwv_flow_api.g_varchar2_table(353) := '652E686F72697A6F6E74616C426172733F2D313A3129292C765B752E756E6974732E706F735D2B3D652E737461636B426172737C7C652E646973747269627574655365726965733F303A6C2A652E73657269657342617244697374616E63652A28652E68';
wwv_flow_api.g_varchar2_table(354) := '6F72697A6F6E74616C426172733F2D313A3129292C793D675B645D7C7C6D2C675B645D3D792D286D2D765B752E636F756E746572556E6974732E706F735D292C766F69642030213D3D73297B76617220413D7B7D3B415B752E756E6974732E706F732B22';
wwv_flow_api.g_varchar2_table(355) := '31225D3D765B752E756E6974732E706F735D2C415B752E756E6974732E706F732B2232225D3D765B752E756E6974732E706F735D2C21652E737461636B426172737C7C22616363756D756C61746522213D3D652E737461636B4D6F64652626652E737461';
wwv_flow_api.g_varchar2_table(356) := '636B4D6F64653F28415B752E636F756E746572556E6974732E706F732B2231225D3D6D2C415B752E636F756E746572556E6974732E706F732B2232225D3D765B752E636F756E746572556E6974732E706F735D293A28415B752E636F756E746572556E69';
wwv_flow_api.g_varchar2_table(357) := '74732E706F732B2231225D3D792C415B752E636F756E746572556E6974732E706F732B2232225D3D675B645D292C412E78313D4D6174682E6D696E284D6174682E6D617828412E78312C662E7831292C662E7832292C412E78323D4D6174682E6D696E28';
wwv_flow_api.g_varchar2_table(358) := '4D6174682E6D617828412E78322C662E7831292C662E7832292C412E79313D4D6174682E6D696E284D6174682E6D617828412E79312C662E7932292C662E7931292C412E79323D4D6174682E6D696E284D6174682E6D617828412E79322C662E7932292C';
wwv_flow_api.g_varchar2_table(359) := '662E7931293B76617220773D742E6765744D6574614461746128692C64293B783D6F2E656C656D28226C696E65222C412C652E636C6173734E616D65732E626172292E61747472287B2263743A76616C7565223A5B732E782C732E795D2E66696C746572';
wwv_flow_api.g_varchar2_table(360) := '28742E69734E756D65726963292E6A6F696E28222C22292C2263743A6D657461223A742E73657269616C697A652877297D292C746869732E6576656E74456D69747465722E656D6974282264726177222C742E657874656E64287B747970653A22626172';
wwv_flow_api.g_varchar2_table(361) := '222C76616C75653A732C696E6465783A642C6D6574613A772C7365726965733A692C736572696573496E6465783A722C61786973583A682C61786973593A702C6368617274526563743A662C67726F75703A6F2C656C656D656E743A787D2C4129297D7D';
wwv_flow_api.g_varchar2_table(362) := '2E62696E64287468697329297D2E62696E64287468697329292C746869732E6576656E74456D69747465722E656D6974282263726561746564222C7B626F756E64733A632E626F756E64732C6368617274526563743A662C61786973583A682C61786973';
wwv_flow_api.g_varchar2_table(363) := '593A702C7376673A746869732E7376672C6F7074696F6E733A657D297D7D297D28746869737C7C676C6F62616C2C65292C66756E6374696F6E28652C74297B2275736520737472696374223B66756E6374696F6E206928652C742C69297B766172206E3D';
wwv_flow_api.g_varchar2_table(364) := '742E783E652E783B72657475726E206E2626226578706C6F6465223D3D3D697C7C216E262622696D706C6F6465223D3D3D693F227374617274223A6E262622696D706C6F6465223D3D3D697C7C216E2626226578706C6F6465223D3D3D693F22656E6422';
wwv_flow_api.g_varchar2_table(365) := '3A226D6964646C65227D652E77696E646F772C652E646F63756D656E743B766172206E3D7B77696474683A766F696420302C6865696768743A766F696420302C636861727450616464696E673A352C636C6173734E616D65733A7B63686172745069653A';
wwv_flow_api.g_varchar2_table(366) := '2263742D63686172742D706965222C6368617274446F6E75743A2263742D63686172742D646F6E7574222C7365726965733A2263742D736572696573222C736C6963655069653A2263742D736C6963652D706965222C736C696365446F6E75743A226374';
wwv_flow_api.g_varchar2_table(367) := '2D736C6963652D646F6E7574222C736C696365446F6E7574536F6C69643A2263742D736C6963652D646F6E75742D736F6C6964222C6C6162656C3A2263742D6C6162656C227D2C7374617274416E676C653A302C746F74616C3A766F696420302C646F6E';
wwv_flow_api.g_varchar2_table(368) := '75743A21312C646F6E7574536F6C69643A21312C646F6E757457696474683A36302C73686F774C6162656C3A21302C6C6162656C4F66667365743A302C6C6162656C506F736974696F6E3A22696E73696465222C6C6162656C496E746572706F6C617469';
wwv_flow_api.g_varchar2_table(369) := '6F6E466E633A742E6E6F6F702C6C6162656C446972656374696F6E3A226E65757472616C222C72657665727365446174613A21312C69676E6F7265456D70747956616C7565733A21317D3B742E5069653D742E426173652E657874656E64287B636F6E73';
wwv_flow_api.g_varchar2_table(370) := '74727563746F723A66756E6374696F6E28652C692C722C61297B742E5069652E73757065722E636F6E7374727563746F722E63616C6C28746869732C652C692C6E2C742E657874656E64287B7D2C6E2C72292C61297D2C63726561746543686172743A66';
wwv_flow_api.g_varchar2_table(371) := '756E6374696F6E2865297B76617220722C612C732C6F2C6C2C633D742E6E6F726D616C697A654461746128746869732E64617461292C643D5B5D2C753D652E7374617274416E676C653B746869732E7376673D742E63726561746553766728746869732E';
wwv_flow_api.g_varchar2_table(372) := '636F6E7461696E65722C652E77696474682C652E6865696768742C652E646F6E75743F652E636C6173734E616D65732E6368617274446F6E75743A652E636C6173734E616D65732E6368617274506965292C613D742E6372656174654368617274526563';
wwv_flow_api.g_varchar2_table(373) := '7428746869732E7376672C652C6E2E70616464696E67292C733D4D6174682E6D696E28612E776964746828292F322C612E68656967687428292F32292C6C3D652E746F74616C7C7C632E6E6F726D616C697A65642E7365726965732E7265647563652866';
wwv_flow_api.g_varchar2_table(374) := '756E6374696F6E28652C74297B72657475726E20652B747D2C30293B76617220683D742E7175616E7469747928652E646F6E75745769647468293B2225223D3D3D682E756E6974262628682E76616C75652A3D732F313030292C732D3D652E646F6E7574';
wwv_flow_api.g_varchar2_table(375) := '262621652E646F6E7574536F6C69643F682E76616C75652F323A302C6F3D226F757473696465223D3D3D652E6C6162656C506F736974696F6E7C7C652E646F6E7574262621652E646F6E7574536F6C69643F733A2263656E746572223D3D3D652E6C6162';
wwv_flow_api.g_varchar2_table(376) := '656C506F736974696F6E3F303A652E646F6E7574536F6C69643F732D682E76616C75652F323A732F322C6F2B3D652E6C6162656C4F66667365743B76617220703D7B783A612E78312B612E776964746828292F322C793A612E79322B612E686569676874';
wwv_flow_api.g_varchar2_table(377) := '28292F327D2C663D313D3D3D632E7261772E7365726965732E66696C7465722866756E6374696F6E2865297B72657475726E20652E6861734F776E50726F7065727479282276616C756522293F30213D3D652E76616C75653A30213D3D657D292E6C656E';
wwv_flow_api.g_varchar2_table(378) := '6774683B632E7261772E7365726965732E666F72456163682866756E6374696F6E28652C74297B645B745D3D746869732E7376672E656C656D282267222C6E756C6C2C6E756C6C297D2E62696E64287468697329292C652E73686F774C6162656C262628';
wwv_flow_api.g_varchar2_table(379) := '723D746869732E7376672E656C656D282267222C6E756C6C2C6E756C6C29292C632E7261772E7365726965732E666F72456163682866756E6374696F6E286E2C61297B69662830213D3D632E6E6F726D616C697A65642E7365726965735B615D7C7C2165';
wwv_flow_api.g_varchar2_table(380) := '2E69676E6F7265456D70747956616C756573297B645B615D2E61747472287B2263743A7365726965732D6E616D65223A6E2E6E616D657D292C645B615D2E616464436C617373285B652E636C6173734E616D65732E7365726965732C6E2E636C6173734E';
wwv_flow_api.g_varchar2_table(381) := '616D657C7C652E636C6173734E616D65732E7365726965732B222D222B742E616C7068614E756D65726174652861295D2E6A6F696E2822202229293B766172206D3D6C3E303F752B632E6E6F726D616C697A65642E7365726965735B615D2F6C2A333630';
wwv_flow_api.g_varchar2_table(382) := '3A302C673D4D6174682E6D617828302C752D28303D3D3D617C7C663F303A2E3229293B6D2D673E3D3335392E39392626286D3D672B3335392E3939293B76617220762C782C792C623D742E706F6C6172546F43617274657369616E28702E782C702E792C';
wwv_flow_api.g_varchar2_table(383) := '732C67292C413D742E706F6C6172546F43617274657369616E28702E782C702E792C732C6D292C773D6E657720742E5376672E506174682821652E646F6E75747C7C652E646F6E7574536F6C6964292E6D6F766528412E782C412E79292E61726328732C';
wwv_flow_api.g_varchar2_table(384) := '732C302C6D2D753E3138302C302C622E782C622E79293B652E646F6E75743F652E646F6E7574536F6C6964262628793D732D682E76616C75652C763D742E706F6C6172546F43617274657369616E28702E782C702E792C792C752D28303D3D3D617C7C66';
wwv_flow_api.g_varchar2_table(385) := '3F303A2E3229292C783D742E706F6C6172546F43617274657369616E28702E782C702E792C792C6D292C772E6C696E6528762E782C762E79292C772E61726328792C792C302C6D2D753E3138302C312C782E782C782E7929293A772E6C696E6528702E78';
wwv_flow_api.g_varchar2_table(386) := '2C702E79293B76617220433D652E636C6173734E616D65732E736C6963655069653B652E646F6E7574262628433D652E636C6173734E616D65732E736C696365446F6E75742C652E646F6E7574536F6C6964262628433D652E636C6173734E616D65732E';
wwv_flow_api.g_varchar2_table(387) := '736C696365446F6E7574536F6C696429293B76617220453D645B615D2E656C656D282270617468222C7B643A772E737472696E6769667928297D2C43293B696628452E61747472287B2263743A76616C7565223A632E6E6F726D616C697A65642E736572';
wwv_flow_api.g_varchar2_table(388) := '6965735B615D2C2263743A6D657461223A742E73657269616C697A65286E2E6D657461297D292C652E646F6E7574262621652E646F6E7574536F6C6964262628452E5F6E6F64652E7374796C652E7374726F6B6557696474683D682E76616C75652B2270';
wwv_flow_api.g_varchar2_table(389) := '7822292C746869732E6576656E74456D69747465722E656D6974282264726177222C7B747970653A22736C696365222C76616C75653A632E6E6F726D616C697A65642E7365726965735B615D2C746F74616C4461746153756D3A6C2C696E6465783A612C';
wwv_flow_api.g_varchar2_table(390) := '6D6574613A6E2E6D6574612C7365726965733A6E2C67726F75703A645B615D2C656C656D656E743A452C706174683A772E636C6F6E6528292C63656E7465723A702C7261646975733A732C7374617274416E676C653A752C656E64416E676C653A6D7D29';
wwv_flow_api.g_varchar2_table(391) := '2C652E73686F774C6162656C297B76617220533B533D313D3D3D632E7261772E7365726965732E6C656E6774683F7B783A702E782C793A702E797D3A742E706F6C6172546F43617274657369616E28702E782C702E792C6F2C752B286D2D75292F32293B';
wwv_flow_api.g_varchar2_table(392) := '766172205F3B5F3D632E6E6F726D616C697A65642E6C6162656C73262621742E697346616C7365794275745A65726F28632E6E6F726D616C697A65642E6C6162656C735B615D293F632E6E6F726D616C697A65642E6C6162656C735B615D3A632E6E6F72';
wwv_flow_api.g_varchar2_table(393) := '6D616C697A65642E7365726965735B615D3B766172204F3D652E6C6162656C496E746572706F6C6174696F6E466E63285F2C61293B6966284F7C7C303D3D3D4F297B76617220543D722E656C656D282274657874222C7B64783A532E782C64793A532E79';
wwv_flow_api.g_varchar2_table(394) := '2C22746578742D616E63686F72223A6928702C532C652E6C6162656C446972656374696F6E297D2C652E636C6173734E616D65732E6C6162656C292E746578742822222B4F293B746869732E6576656E74456D69747465722E656D697428226472617722';
wwv_flow_api.g_varchar2_table(395) := '2C7B747970653A226C6162656C222C696E6465783A612C67726F75703A722C656C656D656E743A542C746578743A22222B4F2C783A532E782C793A532E797D297D7D753D6D7D7D2E62696E64287468697329292C746869732E6576656E74456D69747465';
wwv_flow_api.g_varchar2_table(396) := '722E656D6974282263726561746564222C7B6368617274526563743A612C7376673A746869732E7376672C6F7074696F6E733A657D297D2C64657465726D696E65416E63686F72506F736974696F6E3A697D297D28746869737C7C676C6F62616C2C6529';
wwv_flow_api.g_varchar2_table(397) := '2C657D292C66756E6374696F6E28652C74297B226F626A656374223D3D747970656F66206578706F727473262622756E646566696E656422213D747970656F66206D6F64756C653F6D6F64756C652E6578706F7274733D7428293A2266756E6374696F6E';
wwv_flow_api.g_varchar2_table(398) := '223D3D747970656F6620646566696E652626646566696E652E616D643F646566696E652874293A652E444F4D5075726966793D7428297D28746869732C66756E6374696F6E28297B2275736520737472696374223B66756E6374696F6E206528652C7429';
wwv_flow_api.g_varchar2_table(399) := '7B6726266728652C6E756C6C293B666F722876617220693D742E6C656E6774683B692D2D3B297B766172206E3D745B695D3B69662822737472696E67223D3D747970656F66206E297B76617220723D6E2E746F4C6F7765724361736528293B72213D3D6E';
wwv_flow_api.g_varchar2_table(400) := '2626284F626A6563742E697346726F7A656E2874297C7C28745B695D3D72292C6E3D72297D655B6E5D3D21307D72657475726E20657D66756E6374696F6E20742865297B76617220743D7B7D2C693D766F696420303B666F72286920696E20652976286D';
wwv_flow_api.g_varchar2_table(401) := '2C652C5B695D29262628745B695D3D655B695D293B72657475726E20747D66756E6374696F6E20692865297B69662841727261792E69734172726179286529297B666F722876617220743D302C693D417272617928652E6C656E677468293B743C652E6C';
wwv_flow_api.g_varchar2_table(402) := '656E6774683B742B2B29695B745D3D655B745D3B72657475726E20697D72657475726E2041727261792E66726F6D2865297D66756E6374696F6E206E28297B76617220723D617267756D656E74732E6C656E6774683E302626766F69642030213D3D6172';
wwv_flow_api.g_varchar2_table(403) := '67756D656E74735B305D3F617267756D656E74735B305D3A4428292C643D66756E6374696F6E2865297B72657475726E206E2865297D3B696628642E76657273696F6E3D22322E302E37222C642E72656D6F7665643D5B5D2C21727C7C21722E646F6375';
wwv_flow_api.g_varchar2_table(404) := '6D656E747C7C39213D3D722E646F63756D656E742E6E6F6465547970652972657475726E20642E6973537570706F727465643D21312C643B766172206D3D722E646F63756D656E742C673D21312C763D21312C783D722E646F63756D656E742C523D722E';
wwv_flow_api.g_varchar2_table(405) := '446F63756D656E74467261676D656E742C4D3D722E48544D4C54656D706C617465456C656D656E742C6B3D722E4E6F64652C7A3D722E4E6F646546696C7465722C493D722E4E616D65644E6F64654D61702C503D766F696420303D3D3D493F722E4E616D';
wwv_flow_api.g_varchar2_table(406) := '65644E6F64654D61707C7C722E4D6F7A4E616D6564417474724D61703A492C6A3D722E546578742C483D722E436F6D6D656E742C423D722E444F4D5061727365722C463D722E5472757374656454797065733B6966282266756E6374696F6E223D3D7479';
wwv_flow_api.g_varchar2_table(407) := '70656F66204D297B76617220553D782E637265617465456C656D656E74282274656D706C61746522293B552E636F6E74656E742626552E636F6E74656E742E6F776E6572446F63756D656E74262628783D552E636F6E74656E742E6F776E6572446F6375';
wwv_flow_api.g_varchar2_table(408) := '6D656E74297D76617220243D4E28462C6D292C563D243F242E63726561746548544D4C282222293A22222C473D782C583D472E696D706C656D656E746174696F6E2C593D472E6372656174654E6F64654974657261746F722C713D472E676574456C656D';
wwv_flow_api.g_varchar2_table(409) := '656E747342795461674E616D652C573D472E637265617465446F63756D656E74467261676D656E742C513D6D2E696D706F72744E6F64652C4A3D7B7D3B642E6973537570706F727465643D582626766F69642030213D3D582E63726561746548544D4C44';
wwv_flow_api.g_varchar2_table(410) := '6F63756D656E74262639213D3D782E646F63756D656E744D6F64653B766172205A3D792C4B3D622C65653D412C74653D772C69653D452C6E653D532C72653D432C61653D6E756C6C2C73653D65287B7D2C5B5D2E636F6E63617428692861292C69287329';
wwv_flow_api.g_varchar2_table(411) := '2C69286F292C69286C292C6928632929292C6F653D6E756C6C2C6C653D65287B7D2C5B5D2E636F6E63617428692875292C692868292C692870292C6928662929292C63653D6E756C6C2C64653D6E756C6C2C75653D21302C68653D21302C70653D21312C';
wwv_flow_api.g_varchar2_table(412) := '66653D21312C6D653D21312C67653D21312C76653D21312C78653D21312C79653D21312C62653D21312C41653D21312C77653D21312C43653D21302C45653D21302C53653D21312C5F653D7B7D2C4F653D65287B7D2C5B22616E6E6F746174696F6E2D78';
wwv_flow_api.g_varchar2_table(413) := '6D6C222C22617564696F222C22636F6C67726F7570222C2264657363222C22666F726569676E6F626A656374222C2268656164222C22696672616D65222C226D617468222C226D69222C226D6E222C226D6F222C226D73222C226D74657874222C226E6F';
wwv_flow_api.g_varchar2_table(414) := '656D626564222C226E6F6672616D6573222C22706C61696E74657874222C22736372697074222C227374796C65222C22737667222C2274656D706C617465222C227468656164222C227469746C65222C22766964656F222C22786D70225D292C54653D65';
wwv_flow_api.g_varchar2_table(415) := '287B7D2C5B22617564696F222C22766964656F222C22696D67222C22736F75726365222C22696D616765225D292C4C653D6E756C6C2C44653D65287B7D2C5B22616C74222C22636C617373222C22666F72222C226964222C226C6162656C222C226E616D';
wwv_flow_api.g_varchar2_table(416) := '65222C227061747465726E222C22706C616365686F6C646572222C2273756D6D617279222C227469746C65222C2276616C7565222C227374796C65222C22786D6C6E73225D292C4E653D6E756C6C2C52653D782E637265617465456C656D656E74282266';
wwv_flow_api.g_varchar2_table(417) := '6F726D22292C4D653D66756E6374696F6E286E297B4E6526264E653D3D3D6E7C7C286E2626226F626A656374223D3D3D28766F696420303D3D3D6E3F22756E646566696E6564223A5F286E29297C7C286E3D7B7D292C61653D22414C4C4F5745445F5441';
wwv_flow_api.g_varchar2_table(418) := '475322696E206E3F65287B7D2C6E2E414C4C4F5745445F54414753293A73652C6F653D22414C4C4F5745445F4154545222696E206E3F65287B7D2C6E2E414C4C4F5745445F41545452293A6C652C4C653D224144445F5552495F534146455F4154545222';
wwv_flow_api.g_varchar2_table(419) := '696E206E3F652874284465292C6E2E4144445F5552495F534146455F41545452293A44652C63653D22464F524249445F5441475322696E206E3F65287B7D2C6E2E464F524249445F54414753293A7B7D2C64653D22464F524249445F4154545222696E20';
wwv_flow_api.g_varchar2_table(420) := '6E3F65287B7D2C6E2E464F524249445F41545452293A7B7D2C5F653D225553455F50524F46494C455322696E206E26266E2E5553455F50524F46494C45532C75653D2131213D3D6E2E414C4C4F575F415249415F415454522C68653D2131213D3D6E2E41';
wwv_flow_api.g_varchar2_table(421) := '4C4C4F575F444154415F415454522C70653D6E2E414C4C4F575F554E4B4E4F574E5F50524F544F434F4C537C7C21312C66653D6E2E534146455F464F525F4A51554552597C7C21312C6D653D6E2E534146455F464F525F54454D504C415445537C7C2131';
wwv_flow_api.g_varchar2_table(422) := '2C67653D6E2E57484F4C455F444F43554D454E547C7C21312C79653D6E2E52455455524E5F444F4D7C7C21312C62653D6E2E52455455524E5F444F4D5F465241474D454E547C7C21312C41653D6E2E52455455524E5F444F4D5F494D504F52547C7C2131';
wwv_flow_api.g_varchar2_table(423) := '2C77653D6E2E52455455524E5F545255535445445F545950457C7C21312C78653D6E2E464F5243455F424F44597C7C21312C43653D2131213D3D6E2E53414E4954495A455F444F4D2C45653D2131213D3D6E2E4B4545505F434F4E54454E542C53653D6E';
wwv_flow_api.g_varchar2_table(424) := '2E494E5F504C4143457C7C21312C72653D6E2E414C4C4F5745445F5552495F5245474558507C7C72652C6D6526262868653D2131292C626526262879653D2130292C5F6526262861653D65287B7D2C5B5D2E636F6E636174286928632929292C6F653D5B';
wwv_flow_api.g_varchar2_table(425) := '5D2C21303D3D3D5F652E68746D6C262628652861652C61292C65286F652C7529292C21303D3D3D5F652E737667262628652861652C73292C65286F652C68292C65286F652C6629292C21303D3D3D5F652E73766746696C74657273262628652861652C6F';
wwv_flow_api.g_varchar2_table(426) := '292C65286F652C68292C65286F652C6629292C21303D3D3D5F652E6D6174684D6C262628652861652C6C292C65286F652C70292C65286F652C662929292C6E2E4144445F5441475326262861653D3D3D736526262861653D7428616529292C652861652C';
wwv_flow_api.g_varchar2_table(427) := '6E2E4144445F5441475329292C6E2E4144445F415454522626286F653D3D3D6C652626286F653D74286F6529292C65286F652C6E2E4144445F4154545229292C6E2E4144445F5552495F534146455F41545452262665284C652C6E2E4144445F5552495F';
wwv_flow_api.g_varchar2_table(428) := '534146455F41545452292C456526262861655B222374657874225D3D2130292C67652626652861652C5B2268746D6C222C2268656164222C22626F6479225D292C61652E7461626C65262628652861652C5B2274626F6479225D292C64656C6574652063';
wwv_flow_api.g_varchar2_table(429) := '652E74626F6479292C4C26264C286E292C4E653D6E297D2C6B653D66756E6374696F6E2865297B642E72656D6F7665642E70757368287B656C656D656E743A657D293B7472797B652E706172656E744E6F64652E72656D6F76654368696C642865297D63';
wwv_flow_api.g_varchar2_table(430) := '617463682874297B652E6F7574657248544D4C3D567D7D2C7A653D66756E6374696F6E28652C74297B7472797B642E72656D6F7665642E70757368287B6174747269627574653A742E6765744174747269627574654E6F64652865292C66726F6D3A747D';
wwv_flow_api.g_varchar2_table(431) := '297D63617463682865297B642E72656D6F7665642E70757368287B6174747269627574653A6E756C6C2C66726F6D3A747D297D742E72656D6F76654174747269627574652865297D2C49653D66756E6374696F6E2874297B76617220693D766F69642030';
wwv_flow_api.g_varchar2_table(432) := '2C6E3D766F696420303B696628786529743D223C72656D6F76653E3C2F72656D6F76653E222B743B656C73657B76617220723D742E6D61746368282F5E5B5C735D2B2F293B286E3D722626725B305D29262628743D742E736C696365286E2E6C656E6774';
wwv_flow_api.g_varchar2_table(433) := '6829297D69662867297472797B693D286E65772042292E706172736546726F6D537472696E6728742C22746578742F68746D6C22297D63617463682865297B7D696628762626652863652C5B227469746C65225D292C21697C7C21692E646F63756D656E';
wwv_flow_api.g_varchar2_table(434) := '74456C656D656E74297B76617220613D28693D582E63726561746548544D4C446F63756D656E7428222229292E626F64793B612E706172656E744E6F64652E72656D6F76654368696C6428612E706172656E744E6F64652E6669727374456C656D656E74';
wwv_flow_api.g_varchar2_table(435) := '4368696C64292C612E6F7574657248544D4C3D243F242E63726561746548544D4C2874293A747D72657475726E207426266E2626692E626F64792E696E736572744265666F726528782E637265617465546578744E6F6465286E292C692E626F64792E63';
wwv_flow_api.g_varchar2_table(436) := '68696C644E6F6465735B305D7C7C6E756C6C292C712E63616C6C28692C67653F2268746D6C223A22626F647922295B305D7D3B642E6973537570706F7274656426262866756E6374696F6E28297B7472797B496528273C7376673E3C703E3C7465787461';
wwv_flow_api.g_varchar2_table(437) := '7265613E3C696D67207372633D223C2F74657874617265613E3C696D67207372633D78206162633D312F2F223E27292E717565727953656C6563746F72282273766720696D672229262628673D2130297D63617463682865297B7D7D28292C66756E6374';
wwv_flow_api.g_varchar2_table(438) := '696F6E28297B7472797B76617220653D496528223C782F3E3C7469746C653E266C743B2F7469746C652667743B266C743B696D672667743B22293B2F3C5C2F7469746C652F2E7465737428652E717565727953656C6563746F7228227469746C6522292E';
wwv_flow_api.g_varchar2_table(439) := '696E6E657248544D4C29262628763D2130297D63617463682865297B7D7D2829293B7661722050653D66756E6374696F6E2865297B72657475726E20592E63616C6C28652E6F776E6572446F63756D656E747C7C652C652C7A2E53484F575F454C454D45';
wwv_flow_api.g_varchar2_table(440) := '4E547C7A2E53484F575F434F4D4D454E547C7A2E53484F575F544558542C66756E6374696F6E28297B72657475726E207A2E46494C5445525F4143434550547D2C2131297D2C6A653D66756E6374696F6E2865297B72657475726E226F626A656374223D';
wwv_flow_api.g_varchar2_table(441) := '3D3D28766F696420303D3D3D6B3F22756E646566696E6564223A5F286B29293F6520696E7374616E63656F66206B3A652626226F626A656374223D3D3D28766F696420303D3D3D653F22756E646566696E6564223A5F286529292626226E756D62657222';
wwv_flow_api.g_varchar2_table(442) := '3D3D747970656F6620652E6E6F646554797065262622737472696E67223D3D747970656F6620652E6E6F64654E616D657D2C48653D66756E6374696F6E28652C742C69297B4A5B655D26264A5B655D2E666F72456163682866756E6374696F6E2865297B';
wwv_flow_api.g_varchar2_table(443) := '652E63616C6C28642C742C692C4E65297D297D2C42653D66756E6374696F6E2865297B76617220743D766F696420303B696628486528226265666F726553616E6974697A65456C656D656E7473222C652C6E756C6C292C66756E6374696F6E2865297B72';
wwv_flow_api.g_varchar2_table(444) := '657475726E21286520696E7374616E63656F66206A7C7C6520696E7374616E63656F6620487C7C22737472696E67223D3D747970656F6620652E6E6F64654E616D65262622737472696E67223D3D747970656F6620652E74657874436F6E74656E742626';
wwv_flow_api.g_varchar2_table(445) := '2266756E6374696F6E223D3D747970656F6620652E72656D6F76654368696C642626652E6174747269627574657320696E7374616E63656F66205026262266756E6374696F6E223D3D747970656F6620652E72656D6F7665417474726962757465262622';
wwv_flow_api.g_varchar2_table(446) := '66756E6374696F6E223D3D747970656F6620652E736574417474726962757465262622737472696E67223D3D747970656F6620652E6E616D657370616365555249297D2865292972657475726E206B652865292C21303B76617220693D652E6E6F64654E';
wwv_flow_api.g_varchar2_table(447) := '616D652E746F4C6F7765724361736528293B6966284865282275706F6E53616E6974697A65456C656D656E74222C652C7B7461674E616D653A692C616C6C6F776564546167733A61657D292C2822737667223D3D3D697C7C226D617468223D3D3D692926';
wwv_flow_api.g_varchar2_table(448) := '2630213D3D652E717565727953656C6563746F72416C6C2822702C20627222292E6C656E6774682972657475726E206B652865292C21303B6966282161655B695D7C7C63655B695D297B69662845652626214F655B695D26262266756E6374696F6E223D';
wwv_flow_api.g_varchar2_table(449) := '3D747970656F6620652E696E7365727441646A6163656E7448544D4C297472797B766172206E3D652E696E6E657248544D4C3B652E696E7365727441646A6163656E7448544D4C28224166746572456E64222C243F242E63726561746548544D4C286E29';
wwv_flow_api.g_varchar2_table(450) := '3A6E297D63617463682865297B7D72657475726E206B652865292C21307D72657475726E226E6F736372697074223D3D3D6926262F3C5C2F6E6F7363726970742F692E7465737428652E696E6E657248544D4C293F286B652865292C2130293A226E6F65';
wwv_flow_api.g_varchar2_table(451) := '6D626564223D3D3D6926262F3C5C2F6E6F656D6265642F692E7465737428652E696E6E657248544D4C293F286B652865292C2130293A282166657C7C652E6669727374456C656D656E744368696C647C7C652E636F6E74656E742626652E636F6E74656E';
wwv_flow_api.g_varchar2_table(452) := '742E6669727374456C656D656E744368696C647C7C212F3C2F672E7465737428652E74657874436F6E74656E74297C7C28642E72656D6F7665642E70757368287B656C656D656E743A652E636C6F6E654E6F646528297D292C652E696E6E657248544D4C';
wwv_flow_api.g_varchar2_table(453) := '3F652E696E6E657248544D4C3D652E696E6E657248544D4C2E7265706C616365282F3C2F672C22266C743B22293A652E696E6E657248544D4C3D652E74657874436F6E74656E742E7265706C616365282F3C2F672C22266C743B2229292C6D652626333D';
wwv_flow_api.g_varchar2_table(454) := '3D3D652E6E6F646554797065262628743D28743D28743D652E74657874436F6E74656E74292E7265706C616365285A2C22202229292E7265706C616365284B2C222022292C652E74657874436F6E74656E74213D3D74262628642E72656D6F7665642E70';
wwv_flow_api.g_varchar2_table(455) := '757368287B656C656D656E743A652E636C6F6E654E6F646528297D292C652E74657874436F6E74656E743D7429292C48652822616674657253616E6974697A65456C656D656E7473222C652C6E756C6C292C2131297D2C46653D66756E6374696F6E2865';
wwv_flow_api.g_varchar2_table(456) := '2C742C69297B6966284365262628226964223D3D3D747C7C226E616D65223D3D3D74292626286920696E20787C7C6920696E205265292972657475726E21313B6966286865262665652E74657374287429293B656C7365206966287565262674652E7465';
wwv_flow_api.g_varchar2_table(457) := '7374287429293B656C73657B696628216F655B745D7C7C64655B745D2972657475726E21313B6966284C655B745D293B656C73652069662872652E7465737428692E7265706C616365286E652C22222929293B656C7365206966282273726322213D3D74';
wwv_flow_api.g_varchar2_table(458) := '262622786C696E6B3A6872656622213D3D742626226872656622213D3D747C7C22736372697074223D3D3D657C7C30213D3D692E696E6465784F662822646174613A22297C7C2154655B655D297B696628706526262169652E7465737428692E7265706C';
wwv_flow_api.g_varchar2_table(459) := '616365286E652C22222929293B656C736520696628692972657475726E21317D656C73653B7D72657475726E21307D2C55653D66756E6374696F6E2865297B76617220743D766F696420302C693D766F696420302C6E3D766F696420302C723D766F6964';
wwv_flow_api.g_varchar2_table(460) := '20302C613D766F696420303B486528226265666F726553616E6974697A6541747472696275746573222C652C6E756C6C293B76617220733D652E617474726962757465733B69662873297B766172206F3D7B617474724E616D653A22222C617474725661';
wwv_flow_api.g_varchar2_table(461) := '6C75653A22222C6B656570417474723A21302C616C6C6F776564417474726962757465733A6F657D3B666F7228613D732E6C656E6774683B612D2D3B297B766172206C3D743D735B615D2C633D6C2E6E616D652C753D6C2E6E616D657370616365555249';
wwv_flow_api.g_varchar2_table(462) := '3B696628693D742E76616C75652E7472696D28292C6E3D632E746F4C6F7765724361736528292C6F2E617474724E616D653D6E2C6F2E6174747256616C75653D692C6F2E6B656570417474723D21302C4865282275706F6E53616E6974697A6541747472';
wwv_flow_api.g_varchar2_table(463) := '6962757465222C652C6F292C693D6F2E6174747256616C75652C226E616D65223D3D3D6E262622494D47223D3D3D652E6E6F64654E616D652626732E696429723D732E69642C733D4F28542C732C5B5D292C7A6528226964222C65292C7A6528632C6529';
wwv_flow_api.g_varchar2_table(464) := '2C732E696E6465784F662872293E612626652E73657441747472696275746528226964222C722E76616C7565293B656C73657B69662822494E505554223D3D3D652E6E6F64654E616D6526262274797065223D3D3D6E26262266696C65223D3D3D692626';
wwv_flow_api.g_varchar2_table(465) := '6F2E6B656570417474722626286F655B6E5D7C7C2164655B6E5D2929636F6E74696E75653B226964223D3D3D632626652E73657441747472696275746528632C2222292C7A6528632C65297D6966286F2E6B65657041747472296966282F7376677C6D61';
wwv_flow_api.g_varchar2_table(466) := '74682F692E7465737428652E6E616D6573706163655552492926266E65772052656745787028223C2F28222B4F626A6563742E6B657973284F65292E6A6F696E28227C22292B2229222C226922292E74657374286929297A6528632C65293B656C73657B';
wwv_flow_api.g_varchar2_table(467) := '6D65262628693D28693D692E7265706C616365285A2C22202229292E7265706C616365284B2C22202229293B76617220683D652E6E6F64654E616D652E746F4C6F7765724361736528293B696628466528682C6E2C6929297472797B753F652E73657441';
wwv_flow_api.g_varchar2_table(468) := '74747269627574654E5328752C632C69293A652E73657441747472696275746528632C69292C642E72656D6F7665642E706F7028297D63617463682865297B7D7D7D48652822616674657253616E6974697A6541747472696275746573222C652C6E756C';
wwv_flow_api.g_varchar2_table(469) := '6C297D7D2C24653D66756E6374696F6E20652874297B76617220693D766F696420302C6E3D50652874293B666F7228486528226265666F726553616E6974697A65536861646F77444F4D222C742C6E756C6C293B693D6E2E6E6578744E6F646528293B29';
wwv_flow_api.g_varchar2_table(470) := '4865282275706F6E53616E6974697A65536861646F774E6F6465222C692C6E756C6C292C42652869297C7C28692E636F6E74656E7420696E7374616E63656F66205226266528692E636F6E74656E74292C5565286929293B48652822616674657253616E';
wwv_flow_api.g_varchar2_table(471) := '6974697A65536861646F77444F4D222C742C6E756C6C297D3B72657475726E20642E73616E6974697A653D66756E6374696F6E28652C74297B76617220693D766F696420302C6E3D766F696420302C613D766F696420302C733D766F696420302C6F3D76';
wwv_flow_api.g_varchar2_table(472) := '6F696420303B696628657C7C28653D225C783363212D2D5C78336522292C22737472696E6722213D747970656F6620652626216A65286529297B6966282266756E6374696F6E22213D747970656F6620652E746F537472696E67297468726F77206E6577';
wwv_flow_api.g_varchar2_table(473) := '20547970654572726F722822746F537472696E67206973206E6F7420612066756E6374696F6E22293B69662822737472696E6722213D747970656F6628653D652E746F537472696E67282929297468726F77206E657720547970654572726F7228226469';
wwv_flow_api.g_varchar2_table(474) := '727479206973206E6F74206120737472696E672C2061626F7274696E6722297D69662821642E6973537570706F72746564297B696628226F626A656374223D3D3D5F28722E746F53746174696348544D4C297C7C2266756E6374696F6E223D3D74797065';
wwv_flow_api.g_varchar2_table(475) := '6F6620722E746F53746174696348544D4C297B69662822737472696E67223D3D747970656F6620652972657475726E20722E746F53746174696348544D4C2865293B6966286A652865292972657475726E20722E746F53746174696348544D4C28652E6F';
wwv_flow_api.g_varchar2_table(476) := '7574657248544D4C297D72657475726E20657D69662876657C7C4D652874292C642E72656D6F7665643D5B5D2C5365293B656C7365206966286520696E7374616E63656F66206B29313D3D3D286E3D28693D496528225C783363212D2D5C783365222929';
wwv_flow_api.g_varchar2_table(477) := '2E6F776E6572446F63756D656E742E696D706F72744E6F646528652C213029292E6E6F646554797065262622424F4459223D3D3D6E2E6E6F64654E616D653F693D6E3A2248544D4C223D3D3D6E2E6E6F64654E616D653F693D6E3A692E617070656E6443';
wwv_flow_api.g_varchar2_table(478) := '68696C64286E293B656C73657B6966282179652626216D6526262167652626776526262D313D3D3D652E696E6465784F6628223C22292972657475726E20243F242E63726561746548544D4C2865293A653B6966282128693D4965286529292972657475';
wwv_flow_api.g_varchar2_table(479) := '726E2079653F6E756C6C3A567D692626786526266B6528692E66697273744368696C64293B666F7228766172206C3D50652853653F653A69293B613D6C2E6E6578744E6F646528293B29333D3D3D612E6E6F6465547970652626613D3D3D737C7C426528';
wwv_flow_api.g_varchar2_table(480) := '61297C7C28612E636F6E74656E7420696E7374616E63656F6620522626246528612E636F6E74656E74292C55652861292C733D61293B696628733D6E756C6C2C53652972657475726E20653B6966287965297B696628626529666F72286F3D572E63616C';
wwv_flow_api.g_varchar2_table(481) := '6C28692E6F776E6572446F63756D656E74293B692E66697273744368696C643B296F2E617070656E644368696C6428692E66697273744368696C64293B656C7365206F3D693B72657475726E2041652626286F3D512E63616C6C286D2C6F2C213029292C';
wwv_flow_api.g_varchar2_table(482) := '6F7D76617220633D67653F692E6F7574657248544D4C3A692E696E6E657248544D4C3B72657475726E206D65262628633D28633D632E7265706C616365285A2C22202229292E7265706C616365284B2C22202229292C24262677653F242E637265617465';
wwv_flow_api.g_varchar2_table(483) := '48544D4C2863293A637D2C642E736574436F6E6669673D66756E6374696F6E2865297B4D652865292C76653D21307D2C642E636C656172436F6E6669673D66756E6374696F6E28297B4E653D6E756C6C2C76653D21317D2C642E697356616C6964417474';
wwv_flow_api.g_varchar2_table(484) := '7269627574653D66756E6374696F6E28652C742C69297B4E657C7C4D65287B7D293B766172206E3D652E746F4C6F7765724361736528292C723D742E746F4C6F7765724361736528293B72657475726E204665286E2C722C69297D2C642E616464486F6F';
wwv_flow_api.g_varchar2_table(485) := '6B3D66756E6374696F6E28652C74297B2266756E6374696F6E223D3D747970656F6620742626284A5B655D3D4A5B655D7C7C5B5D2C4A5B655D2E70757368287429297D2C642E72656D6F7665486F6F6B3D66756E6374696F6E2865297B4A5B655D26264A';
wwv_flow_api.g_varchar2_table(486) := '5B655D2E706F7028297D2C642E72656D6F7665486F6F6B733D66756E6374696F6E2865297B4A5B655D2626284A5B655D3D5B5D297D2C642E72656D6F7665416C6C486F6F6B733D66756E6374696F6E28297B4A3D7B7D7D2C647D76617220723D4F626A65';
wwv_flow_api.g_varchar2_table(487) := '63742E667265657A657C7C66756E6374696F6E2865297B72657475726E20657D2C613D72285B2261222C2261626272222C226163726F6E796D222C2261646472657373222C2261726561222C2261727469636C65222C226173696465222C22617564696F';
wwv_flow_api.g_varchar2_table(488) := '222C2262222C22626469222C2262646F222C22626967222C22626C696E6B222C22626C6F636B71756F7465222C22626F6479222C226272222C22627574746F6E222C2263616E766173222C2263617074696F6E222C2263656E746572222C226369746522';
wwv_flow_api.g_varchar2_table(489) := '2C22636F6465222C22636F6C222C22636F6C67726F7570222C22636F6E74656E74222C2264617461222C22646174616C697374222C226464222C226465636F7261746F72222C2264656C222C2264657461696C73222C2264666E222C22646972222C2264';
wwv_flow_api.g_varchar2_table(490) := '6976222C22646C222C226474222C22656C656D656E74222C22656D222C226669656C64736574222C2266696763617074696F6E222C22666967757265222C22666F6E74222C22666F6F746572222C22666F726D222C226831222C226832222C226833222C';
wwv_flow_api.g_varchar2_table(491) := '226834222C226835222C226836222C2268656164222C22686561646572222C226867726F7570222C226872222C2268746D6C222C2269222C22696D67222C22696E707574222C22696E73222C226B6264222C226C6162656C222C226C6567656E64222C22';
wwv_flow_api.g_varchar2_table(492) := '6C69222C226D61696E222C226D6170222C226D61726B222C226D617271756565222C226D656E75222C226D656E756974656D222C226D65746572222C226E6176222C226E6F6272222C226F6C222C226F707467726F7570222C226F7074696F6E222C226F';
wwv_flow_api.g_varchar2_table(493) := '7574707574222C2270222C22707265222C2270726F6772657373222C2271222C227270222C227274222C2272756279222C2273222C2273616D70222C2273656374696F6E222C2273656C656374222C22736861646F77222C22736D616C6C222C22736F75';
wwv_flow_api.g_varchar2_table(494) := '726365222C22737061636572222C227370616E222C22737472696B65222C227374726F6E67222C227374796C65222C22737562222C2273756D6D617279222C22737570222C227461626C65222C2274626F6479222C227464222C2274656D706C61746522';
wwv_flow_api.g_varchar2_table(495) := '2C227465787461726561222C2274666F6F74222C227468222C227468656164222C2274696D65222C227472222C22747261636B222C227474222C2275222C22756C222C22766172222C22766964656F222C22776272225D292C733D72285B22737667222C';
wwv_flow_api.g_varchar2_table(496) := '2261222C22616C74676C797068222C22616C74676C797068646566222C22616C74676C7970686974656D222C22616E696D617465636F6C6F72222C22616E696D6174656D6F74696F6E222C22616E696D6174657472616E73666F726D222C22617564696F';
wwv_flow_api.g_varchar2_table(497) := '222C2263616E766173222C22636972636C65222C22636C697070617468222C2264656673222C2264657363222C22656C6C69707365222C2266696C746572222C22666F6E74222C2267222C22676C797068222C22676C797068726566222C22686B65726E';
wwv_flow_api.g_varchar2_table(498) := '222C22696D616765222C226C696E65222C226C696E6561726772616469656E74222C226D61726B6572222C226D61736B222C226D65746164617461222C226D70617468222C2270617468222C227061747465726E222C22706F6C79676F6E222C22706F6C';
wwv_flow_api.g_varchar2_table(499) := '796C696E65222C2272616469616C6772616469656E74222C2272656374222C2273746F70222C227374796C65222C22737769746368222C2273796D626F6C222C2274657874222C227465787470617468222C227469746C65222C2274726566222C227473';
wwv_flow_api.g_varchar2_table(500) := '70616E222C22766964656F222C2276696577222C22766B65726E225D292C6F3D72285B226665426C656E64222C226665436F6C6F724D6174726978222C226665436F6D706F6E656E745472616E73666572222C226665436F6D706F73697465222C226665';
wwv_flow_api.g_varchar2_table(501) := '436F6E766F6C76654D6174726978222C226665446966667573654C69676874696E67222C226665446973706C6163656D656E744D6170222C22666544697374616E744C69676874222C226665466C6F6F64222C22666546756E6341222C22666546756E63';
wwv_flow_api.g_varchar2_table(502) := '42222C22666546756E6347222C22666546756E6352222C226665476175737369616E426C7572222C2266654D65726765222C2266654D657267654E6F6465222C2266654D6F7270686F6C6F6779222C2266654F6666736574222C226665506F696E744C69';
wwv_flow_api.g_varchar2_table(503) := '676874222C22666553706563756C61724C69676874696E67222C22666553706F744C69676874222C22666554696C65222C22666554757262756C656E6365225D292C6C3D72285B226D617468222C226D656E636C6F7365222C226D6572726F72222C226D';
wwv_flow_api.g_varchar2_table(504) := '66656E636564222C226D66726163222C226D676C797068222C226D69222C226D6C6162656C65647472222C226D6D756C746973637269707473222C226D6E222C226D6F222C226D6F766572222C226D706164646564222C226D7068616E746F6D222C226D';
wwv_flow_api.g_varchar2_table(505) := '726F6F74222C226D726F77222C226D73222C226D7370616365222C226D73717274222C226D7374796C65222C226D737562222C226D737570222C226D737562737570222C226D7461626C65222C226D7464222C226D74657874222C226D7472222C226D75';
wwv_flow_api.g_varchar2_table(506) := '6E646572222C226D756E6465726F766572225D292C633D72285B222374657874225D292C643D4F626A6563742E667265657A657C7C66756E6374696F6E2865297B72657475726E20657D2C753D64285B22616363657074222C22616374696F6E222C2261';
wwv_flow_api.g_varchar2_table(507) := '6C69676E222C22616C74222C226175746F636F6D706C657465222C226261636B67726F756E64222C226267636F6C6F72222C22626F72646572222C2263656C6C70616464696E67222C2263656C6C73706163696E67222C22636865636B6564222C226369';
wwv_flow_api.g_varchar2_table(508) := '7465222C22636C617373222C22636C656172222C22636F6C6F72222C22636F6C73222C22636F6C7370616E222C22636F6E74726F6C73222C22636F6F726473222C2263726F73736F726967696E222C226461746574696D65222C2264656661756C74222C';
wwv_flow_api.g_varchar2_table(509) := '22646972222C2264697361626C6564222C22646F776E6C6F6164222C22656E6374797065222C2266616365222C22666F72222C2268656164657273222C22686569676874222C2268696464656E222C2268696768222C2268726566222C22687265666C61';
wwv_flow_api.g_varchar2_table(510) := '6E67222C226964222C22696E74656772697479222C2269736D6170222C226C6162656C222C226C616E67222C226C697374222C226C6F6F70222C226C6F77222C226D6178222C226D61786C656E677468222C226D65646961222C226D6574686F64222C22';
wwv_flow_api.g_varchar2_table(511) := '6D696E222C226D696E6C656E677468222C226D756C7469706C65222C226E616D65222C226E6F7368616465222C226E6F76616C6964617465222C226E6F77726170222C226F70656E222C226F7074696D756D222C227061747465726E222C22706C616365';
wwv_flow_api.g_varchar2_table(512) := '686F6C646572222C22706F73746572222C227072656C6F6164222C2270756264617465222C22726164696F67726F7570222C22726561646F6E6C79222C2272656C222C227265717569726564222C22726576222C227265766572736564222C22726F6C65';
wwv_flow_api.g_varchar2_table(513) := '222C22726F7773222C22726F777370616E222C227370656C6C636865636B222C2273636F7065222C2273656C6563746564222C227368617065222C2273697A65222C2273697A6573222C227370616E222C227372636C616E67222C227374617274222C22';
wwv_flow_api.g_varchar2_table(514) := '737263222C22737263736574222C2273746570222C227374796C65222C2273756D6D617279222C22746162696E646578222C227469746C65222C2274797065222C227573656D6170222C2276616C69676E222C2276616C7565222C227769647468222C22';
wwv_flow_api.g_varchar2_table(515) := '786D6C6E73225D292C683D64285B22616363656E742D686569676874222C22616363756D756C617465222C226164646974697665222C22616C69676E6D656E742D626173656C696E65222C22617363656E74222C226174747269627574656E616D65222C';
wwv_flow_api.g_varchar2_table(516) := '2261747472696275746574797065222C22617A696D757468222C22626173656672657175656E6379222C22626173656C696E652D7368696674222C22626567696E222C2262696173222C226279222C22636C617373222C22636C6970222C22636C69702D';
wwv_flow_api.g_varchar2_table(517) := '70617468222C22636C69702D72756C65222C22636F6C6F72222C22636F6C6F722D696E746572706F6C6174696F6E222C22636F6C6F722D696E746572706F6C6174696F6E2D66696C74657273222C22636F6C6F722D70726F66696C65222C22636F6C6F72';
wwv_flow_api.g_varchar2_table(518) := '2D72656E646572696E67222C226378222C226379222C2264222C226478222C226479222C2264696666757365636F6E7374616E74222C22646972656374696F6E222C22646973706C6179222C2264697669736F72222C22647572222C22656467656D6F64';
wwv_flow_api.g_varchar2_table(519) := '65222C22656C65766174696F6E222C22656E64222C2266696C6C222C2266696C6C2D6F706163697479222C2266696C6C2D72756C65222C2266696C746572222C2266696C746572756E697473222C22666C6F6F642D636F6C6F72222C22666C6F6F642D6F';
wwv_flow_api.g_varchar2_table(520) := '706163697479222C22666F6E742D66616D696C79222C22666F6E742D73697A65222C22666F6E742D73697A652D61646A757374222C22666F6E742D73747265746368222C22666F6E742D7374796C65222C22666F6E742D76617269616E74222C22666F6E';
wwv_flow_api.g_varchar2_table(521) := '742D776569676874222C226678222C226679222C226731222C226732222C22676C7970682D6E616D65222C22676C797068726566222C226772616469656E74756E697473222C226772616469656E747472616E73666F726D222C22686569676874222C22';
wwv_flow_api.g_varchar2_table(522) := '68726566222C226964222C22696D6167652D72656E646572696E67222C22696E222C22696E32222C226B222C226B31222C226B32222C226B33222C226B34222C226B65726E696E67222C226B6579706F696E7473222C226B657973706C696E6573222C22';
wwv_flow_api.g_varchar2_table(523) := '6B657974696D6573222C226C616E67222C226C656E67746861646A757374222C226C65747465722D73706163696E67222C226B65726E656C6D6174726978222C226B65726E656C756E69746C656E677468222C226C69676874696E672D636F6C6F72222C';
wwv_flow_api.g_varchar2_table(524) := '226C6F63616C222C226D61726B65722D656E64222C226D61726B65722D6D6964222C226D61726B65722D7374617274222C226D61726B6572686569676874222C226D61726B6572756E697473222C226D61726B65727769647468222C226D61736B636F6E';
wwv_flow_api.g_varchar2_table(525) := '74656E74756E697473222C226D61736B756E697473222C226D6178222C226D61736B222C226D65646961222C226D6574686F64222C226D6F6465222C226D696E222C226E616D65222C226E756D6F637461766573222C226F6666736574222C226F706572';
wwv_flow_api.g_varchar2_table(526) := '61746F72222C226F706163697479222C226F72646572222C226F7269656E74222C226F7269656E746174696F6E222C226F726967696E222C226F766572666C6F77222C227061696E742D6F72646572222C2270617468222C22706174686C656E67746822';
wwv_flow_api.g_varchar2_table(527) := '2C227061747465726E636F6E74656E74756E697473222C227061747465726E7472616E73666F726D222C227061747465726E756E697473222C22706F696E7473222C227072657365727665616C706861222C227072657365727665617370656374726174';
wwv_flow_api.g_varchar2_table(528) := '696F222C227072696D6974697665756E697473222C2272222C227278222C227279222C22726164697573222C2272656678222C2272656679222C22726570656174636F756E74222C22726570656174647572222C2272657374617274222C22726573756C';
wwv_flow_api.g_varchar2_table(529) := '74222C22726F74617465222C227363616C65222C2273656564222C2273686170652D72656E646572696E67222C2273706563756C6172636F6E7374616E74222C2273706563756C61726578706F6E656E74222C227370726561646D6574686F64222C2273';
wwv_flow_api.g_varchar2_table(530) := '7464646576696174696F6E222C2273746974636874696C6573222C2273746F702D636F6C6F72222C2273746F702D6F706163697479222C227374726F6B652D646173686172726179222C227374726F6B652D646173686F6666736574222C227374726F6B';
wwv_flow_api.g_varchar2_table(531) := '652D6C696E65636170222C227374726F6B652D6C696E656A6F696E222C227374726F6B652D6D697465726C696D6974222C227374726F6B652D6F706163697479222C227374726F6B65222C227374726F6B652D7769647468222C227374796C65222C2273';
wwv_flow_api.g_varchar2_table(532) := '7572666163657363616C65222C22746162696E646578222C2274617267657478222C2274617267657479222C227472616E73666F726D222C22746578742D616E63686F72222C22746578742D6465636F726174696F6E222C22746578742D72656E646572';
wwv_flow_api.g_varchar2_table(533) := '696E67222C22746578746C656E677468222C2274797065222C227531222C227532222C22756E69636F6465222C2276616C756573222C2276696577626F78222C227669736962696C697479222C2276657273696F6E222C22766572742D6164762D79222C';
wwv_flow_api.g_varchar2_table(534) := '22766572742D6F726967696E2D78222C22766572742D6F726967696E2D79222C227769647468222C22776F72642D73706163696E67222C2277726170222C2277726974696E672D6D6F6465222C22786368616E6E656C73656C6563746F72222C22796368';
wwv_flow_api.g_varchar2_table(535) := '616E6E656C73656C6563746F72222C2278222C227831222C227832222C22786D6C6E73222C2279222C227931222C227932222C227A222C227A6F6F6D616E6470616E225D292C703D64285B22616363656E74222C22616363656E74756E646572222C2261';
wwv_flow_api.g_varchar2_table(536) := '6C69676E222C22626576656C6C6564222C22636C6F7365222C22636F6C756D6E73616C69676E222C22636F6C756D6E6C696E6573222C22636F6C756D6E7370616E222C2264656E6F6D616C69676E222C226465707468222C22646972222C22646973706C';
wwv_flow_api.g_varchar2_table(537) := '6179222C22646973706C61797374796C65222C22656E636F64696E67222C2266656E6365222C226672616D65222C22686569676874222C2268726566222C226964222C226C617267656F70222C226C656E677468222C226C696E65746869636B6E657373';
wwv_flow_api.g_varchar2_table(538) := '222C226C7370616365222C226C71756F7465222C226D6174686261636B67726F756E64222C226D617468636F6C6F72222C226D61746873697A65222C226D61746876617269616E74222C226D617873697A65222C226D696E73697A65222C226D6F766162';
wwv_flow_api.g_varchar2_table(539) := '6C656C696D697473222C226E6F746174696F6E222C226E756D616C69676E222C226F70656E222C22726F77616C69676E222C22726F776C696E6573222C22726F7773706163696E67222C22726F777370616E222C22727370616365222C227271756F7465';
wwv_flow_api.g_varchar2_table(540) := '222C227363726970746C6576656C222C227363726970746D696E73697A65222C2273637269707473697A656D756C7469706C696572222C2273656C656374696F6E222C22736570617261746F72222C22736570617261746F7273222C2273747265746368';
wwv_flow_api.g_varchar2_table(541) := '79222C227375627363726970747368696674222C227375707363726970747368696674222C2273796D6D6574726963222C22766F6666736574222C227769647468222C22786D6C6E73225D292C663D64285B22786C696E6B3A68726566222C22786D6C3A';
wwv_flow_api.g_varchar2_table(542) := '6964222C22786C696E6B3A7469746C65222C22786D6C3A7370616365222C22786D6C6E733A786C696E6B225D292C6D3D4F626A6563742E6861734F776E50726F70657274792C673D4F626A6563742E73657450726F746F747970654F662C763D2822756E';
wwv_flow_api.g_varchar2_table(543) := '646566696E656422213D747970656F66205265666C65637426265265666C656374292E6170706C793B767C7C28763D66756E6374696F6E28652C742C69297B72657475726E20652E6170706C7928742C69297D293B76617220783D4F626A6563742E7365';
wwv_flow_api.g_varchar2_table(544) := '616C7C7C66756E6374696F6E2865297B72657475726E20657D2C793D78282F5C7B5C7B5B5C735C535D2A7C5B5C735C535D2A5C7D5C7D2F676D292C623D78282F3C255B5C735C535D2A7C5B5C735C535D2A253E2F676D292C413D78282F5E646174612D5B';
wwv_flow_api.g_varchar2_table(545) := '5C2D5C772E5C75303042372D5C75464646465D2F292C773D78282F5E617269612D5B5C2D5C775D2B242F292C433D78282F5E283F3A283F3A283F3A667C6874297470733F7C6D61696C746F7C74656C7C63616C6C746F7C6369647C786D7070293A7C5B5E';
wwv_flow_api.g_varchar2_table(546) := '612D7A5D7C5B612D7A2B2E5C2D5D2B283F3A5B5E612D7A2B2E5C2D3A5D7C2429292F69292C453D78282F5E283F3A5C772B7363726970747C64617461293A2F69292C533D78282F5B5C75303030302D5C75303032305C75303041305C75313638305C7531';
wwv_flow_api.g_varchar2_table(547) := '3830455C75323030302D5C75323032395C75323035665C75333030305D2F67292C5F3D2266756E6374696F6E223D3D747970656F662053796D626F6C26262273796D626F6C223D3D747970656F662053796D626F6C2E6974657261746F723F66756E6374';
wwv_flow_api.g_varchar2_table(548) := '696F6E2865297B72657475726E20747970656F6620657D3A66756E6374696F6E2865297B72657475726E206526262266756E6374696F6E223D3D747970656F662053796D626F6C2626652E636F6E7374727563746F723D3D3D53796D626F6C262665213D';
wwv_flow_api.g_varchar2_table(549) := '3D53796D626F6C2E70726F746F747970653F2273796D626F6C223A747970656F6620657D2C4F3D2822756E646566696E656422213D747970656F66205265666C65637426265265666C656374292E6170706C792C543D41727261792E70726F746F747970';
wwv_flow_api.g_varchar2_table(550) := '652E736C6963652C4C3D4F626A6563742E667265657A652C443D66756E6374696F6E28297B72657475726E22756E646566696E6564223D3D747970656F662077696E646F773F6E756C6C3A77696E646F777D3B4F7C7C284F3D66756E6374696F6E28652C';
wwv_flow_api.g_varchar2_table(551) := '742C69297B72657475726E20652E6170706C7928742C69297D293B766172204E3D66756E6374696F6E28652C74297B696628226F626A65637422213D3D28766F696420303D3D3D653F22756E646566696E6564223A5F286529297C7C2266756E6374696F';
wwv_flow_api.g_varchar2_table(552) := '6E22213D747970656F6620652E637265617465506F6C6963792972657475726E206E756C6C3B76617220693D6E756C6C2C6E3D22646174612D74742D706F6C6963792D737566666978223B742E63757272656E745363726970742626742E63757272656E';
wwv_flow_api.g_varchar2_table(553) := '745363726970742E686173417474726962757465286E29262628693D742E63757272656E745363726970742E676574417474726962757465286E29293B76617220723D22646F6D707572696679222B28693F2223222B693A2222293B7472797B72657475';
wwv_flow_api.g_varchar2_table(554) := '726E20652E637265617465506F6C69637928722C7B63726561746548544D4C3A66756E6374696F6E2865297B72657475726E20657D7D297D63617463682865297B72657475726E20636F6E736F6C652E7761726E28225472757374656454797065732070';
wwv_flow_api.g_varchar2_table(555) := '6F6C69637920222B722B2220636F756C64206E6F7420626520637265617465642E22292C6E756C6C7D7D3B72657475726E206E28297D293B766172206D6174657269616C43617264733D66756E6374696F6E28297B2275736520737472696374223B7661';
wwv_flow_api.g_varchar2_table(556) := '7220653D7B76657273696F6E3A22312E322E35222C6973446566696E6564416E644E6F744E756C6C3A66756E6374696F6E2865297B72657475726E20766F69642030213D3D6526266E756C6C213D3D657D2C6973415045583A66756E6374696F6E28297B';
wwv_flow_api.g_varchar2_table(557) := '72657475726E22756E646566696E656422213D747970656F6620617065787D2C64656275673A7B696E666F3A66756E6374696F6E2874297B652E69734150455828292626617065782E64656275672E696E666F2874297D2C6572726F723A66756E637469';
wwv_flow_api.g_varchar2_table(558) := '6F6E2874297B652E69734150455828293F617065782E64656275672E6572726F722874293A636F6E736F6C652E6572726F722874297D7D2C65736361706548544D4C3A66756E6374696F6E2874297B6966286E756C6C3D3D3D742972657475726E206E75';
wwv_flow_api.g_varchar2_table(559) := '6C6C3B696628766F69642030213D3D74297B696628226F626A656374223D3D747970656F662074297472797B743D4A534F4E2E737472696E676966792874297D63617463682865297B7D72657475726E20652E69734150455828293F617065782E757469';
wwv_flow_api.g_varchar2_table(560) := '6C2E65736361706548544D4C28537472696E67287429293A28743D537472696E67287429292E7265706C616365282F262F672C2226616D703B22292E7265706C616365282F3C2F672C22266C743B22292E7265706C616365282F3E2F672C222667743B22';
wwv_flow_api.g_varchar2_table(561) := '292E7265706C616365282F222F672C222671756F743B22292E7265706C616365282F272F672C2226237832373B22292E7265706C616365282F5C2F2F672C2226237832463B22297D7D2C6C6F616465723A7B73746172743A66756E6374696F6E2874297B';
wwv_flow_api.g_varchar2_table(562) := '696628652E697341504558282929617065782E7574696C2E73686F775370696E6E65722824287429293B656C73657B76617220693D2428223C7370616E3E3C2F7370616E3E22293B692E6174747228226964222C226C6F61646572222B74292C692E6164';
wwv_flow_api.g_varchar2_table(563) := '64436C617373282263742D6C6F6164657222293B766172206E3D2428223C693E3C2F693E22293B6E2E616464436C617373282266612066612D726566726573682066612D32782066612D616E696D2D7370696E22292C6E2E63737328226261636B67726F';
wwv_flow_api.g_varchar2_table(564) := '756E64222C2272676261283132312C3132312C3132312C302E362922292C6E2E6373732822626F726465722D726164697573222C223130302522292C6E2E637373282270616464696E67222C223135707822292C6E2E6373732822636F6C6F72222C2277';
wwv_flow_api.g_varchar2_table(565) := '6869746522292C692E617070656E64286E292C242874292E617070656E642869297D7D2C73746F703A66756E6374696F6E2865297B2428652B22203E202E752D50726F63657373696E6722292E72656D6F766528292C2428652B22203E202E63742D6C6F';
wwv_flow_api.g_varchar2_table(566) := '6164657222292E72656D6F766528297D7D2C6A736F6E53617665457874656E643A66756E6374696F6E28652C74297B76617220693D7B7D2C6E3D7B7D3B69662822737472696E67223D3D747970656F662074297472797B6E3D4A534F4E2E706172736528';
wwv_flow_api.g_varchar2_table(567) := '74297D63617463682865297B636F6E736F6C652E6572726F7228224572726F72207768696C652074727920746F20706172736520746172676574436F6E6669672E20506C6561736520636865636B20796F757220436F6E666967204A534F4E2E20537461';
wwv_flow_api.g_varchar2_table(568) := '6E6461726420436F6E6669672077696C6C20626520757365642E22292C636F6E736F6C652E6572726F722865292C636F6E736F6C652E6572726F722874297D656C7365206E3D743B7472797B693D242E657874656E642821302C652C6E297D6361746368';
wwv_flow_api.g_varchar2_table(569) := '2874297B636F6E736F6C652E6572726F7228224572726F72207768696C652074727920746F206D657267652032204A534F4E7320696E746F207374616E64617264204A534F4E20696620616E7920617474726962757465206973206D697373696E672E20';
wwv_flow_api.g_varchar2_table(570) := '506C6561736520636865636B20796F757220436F6E666967204A534F4E2E205374616E6461726420436F6E6669672077696C6C20626520757365642E22292C636F6E736F6C652E6572726F722874292C693D652C636F6E736F6C652E6572726F72286929';
wwv_flow_api.g_varchar2_table(571) := '7D72657475726E20697D2C6E6F446174614D6573736167653A7B73686F773A66756E6374696F6E28652C74297B76617220693D2428223C6469763E3C2F6469763E22292E63737328226D617267696E222C223132707822292E6373732822746578742D61';
wwv_flow_api.g_varchar2_table(572) := '6C69676E222C2263656E74657222292E637373282270616464696E67222C2236347078203022292E63737328227769647468222C223130302522292E616464436C61737328226E6F64617461666F756E646D65737361676522292C6E3D2428223C646976';
wwv_flow_api.g_varchar2_table(573) := '3E3C2F6469763E22292C723D2428223C7370616E3E3C2F7370616E3E22292E616464436C6173732822666122292E616464436C617373282266612D73656172636822292E616464436C617373282266612D327822292E6373732822686569676874222C22';
wwv_flow_api.g_varchar2_table(574) := '3332707822292E63737328227769647468222C223332707822292E6373732822636F6C6F72222C222344304430443022292E63737328226D617267696E2D626F74746F6D222C223136707822293B6E2E617070656E642872293B76617220613D2428223C';
wwv_flow_api.g_varchar2_table(575) := '7370616E3E3C2F7370616E3E22292E746578742874292E6373732822646973706C6179222C22626C6F636B22292E6373732822636F6C6F72222C222337303730373022292E6373732822666F6E742D73697A65222C223132707822293B692E617070656E';
wwv_flow_api.g_varchar2_table(576) := '64286E292E617070656E642861292C242865292E617070656E642869297D2C686964653A66756E6374696F6E2865297B242865292E6368696C6472656E28222E6E6F64617461666F756E646D65737361676522292E72656D6F766528297D7D7D3B726574';
wwv_flow_api.g_varchar2_table(577) := '75726E7B696E697469616C697A653A66756E6374696F6E28742C692C6E2C722C612C732C6F2C6C2C63297B66756E6374696F6E20642874297B72657475726E2131213D3D6F3F652E65736361706548544D4C2874293A2131213D3D6C3F444F4D50757269';
wwv_flow_api.g_varchar2_table(578) := '66792E73616E6974697A6528742C6D293A747D66756E6374696F6E20752869297B792E656D70747928292C692E726F772626692E726F772E6C656E6774683E303F66756E6374696F6E28652C69297B696628652626652E6C656E6774683E30297B766172';
wwv_flow_api.g_varchar2_table(579) := '206E3D682879292C723D303B242E6561636828652C66756E6374696F6E28652C61297B722B3D782E6361726457696474682C612E434152445F5449544C453D6428612E434152445F5449544C45292C612E434152445F56414C55453D6428612E43415244';
wwv_flow_api.g_varchar2_table(580) := '5F56414C5545292C612E434152445F464F4F5445523D6428612E434152445F464F4F544552292C612E434152445F545950453F2269636F6E223D3D3D612E434152445F545950452E746F4C6F7765724361736528293F6628652C6E2C612C69293A66756E';
wwv_flow_api.g_varchar2_table(581) := '6374696F6E28652C692C6E2C722C61297B76617220733D226261636B67726F756E643A206C696E6561722D6772616469656E742836306465672C2068736C28222B32332A65253335302B222C203535252C20363025292C2068736C28222B32332A652533';
wwv_flow_api.g_varchar2_table(582) := '35302B222C203530252C2036302529293B626F782D736861646F773A203020313270782032307078202D313070782072676261283233302C203233302C203233302C20302E3238292C203020347078203230707820307078207267626128302C20302C20';
wwv_flow_api.g_varchar2_table(583) := '302C20302E3132292C20302037707820387078202D3570782072676261283233302C203233302C203233302C20302E32293B222C6F3D7B66756C6C57696474683A21302C636861727450616464696E673A7B626F74746F6D3A2D31322C746F703A32382C';
wwv_flow_api.g_varchar2_table(584) := '72696768743A33302C6C6566743A2D357D7D2C6C3D7B7D3B69662861262622737472696E67223D3D747970656F662061297472797B6C3D4A534F4E2E70617273652861297D63617463682865297B636F6E736F6C652E6C6F6728224572726F7220776869';
wwv_flow_api.g_varchar2_table(585) := '6C652074727920746F20706172736520434152445F43484152545F434F4E4649473A20222B652B61297D656C7365206C3D613B242E657874656E642821302C6F2C6C293B76617220633D2263742D63686172742D222B742B652C643D2428223C6469763E';
wwv_flow_api.g_varchar2_table(586) := '3C2F6469763E22293B642E616464436C6173732822732D672D636F6C2D222B722E636172645769647468293B76617220753D2428223C6469763E3C2F6469763E22293B752E616464436C617373282261742D6361726422293B76617220683D2428223C64';
wwv_flow_api.g_varchar2_table(587) := '69763E3C2F6469763E22293B682E616464436C6173732822636172642D68656164657220636172642D636861727422292C682E6174747228227374796C65222C6E2E434152445F4845414445525F5354594C457C7C73293B76617220703D2428223C6469';
wwv_flow_api.g_varchar2_table(588) := '763E3C2F6469763E22293B702E616464436C617373282263742D636861727422292C702E6174747228226964222C63292C682E617070656E642870292C752E617070656E642868293B76617220663D2428223C6469763E3C2F6469763E22293B662E6164';
wwv_flow_api.g_varchar2_table(589) := '64436C6173732822636172642D636F6E74656E7422293B766172206D3D766F69642030213D6E2E434152445F5449544C4526266E2E434152445F5449544C452E6C656E6774683E303F6E2E434152445F5449544C453A22223B662E617070656E6428273C';
wwv_flow_api.g_varchar2_table(590) := '7020636C6173733D2263617465676F7279223E272B6D2B223C2F703E22293B76617220673D766F69642030213D6E2E434152445F56414C554526266E2E434152445F56414C55452E6C656E6774683E303F6E2E434152445F56414C55453A222D223B662E';
wwv_flow_api.g_varchar2_table(591) := '617070656E6428273C683220636C6173733D227469746C65223E272B672B223C2F68323E22292C752E617070656E642866293B76617220763D2428223C6469763E3C2F6469763E22293B762E616464436C6173732822636172642D666F6F74657222293B';
wwv_flow_api.g_varchar2_table(592) := '76617220783D2428223C6469763E3C2F6469763E22293B6E2E434152445F464F4F54455226262828783D2428223C6469763E3C2F6469763E2229292E616464436C6173732822737461747322292C782E617070656E64286E2E434152445F464F4F544552';
wwv_flow_api.g_varchar2_table(593) := '29293B696628762E617070656E642878292C752E617070656E642876292C642E617070656E642875292C6E2E434152445F4C494E4B297B76617220793D2428223C613E3C2F613E22293B792E61747472282268726566222C6E2E434152445F4C494E4B29';
wwv_flow_api.g_varchar2_table(594) := '2C792E617070656E642864292C692E617070656E642879297D656C736520692E617070656E642864293B76617220623B6966286E2E434152445F43484152545F44415441297B76617220413D7B7D3B69662822737472696E67223D3D747970656F66206E';
wwv_flow_api.g_varchar2_table(595) := '2E434152445F43484152545F44415441297472797B413D4A534F4E2E7061727365286E2E434152445F43484152545F44415441297D63617463682865297B636F6E736F6C652E6C6F6728224572726F72207768696C652074727920746F20706172736520';
wwv_flow_api.g_varchar2_table(596) := '434152445F43484152545F4441544122292C636F6E736F6C652E6C6F672865292C636F6E736F6C652E6C6F67286E2E434152445F43484152545F44415441297D656C736520413D6E2E434152445F43484152545F444154413B737769746368286E2E4341';
wwv_flow_api.g_varchar2_table(597) := '52445F545950452E746F4C6F776572436173652829297B636173652263686172742D6C696E65223A623D6E65772043686172746973742E4C696E65282223222B632C412C6F293B627265616B3B636173652263686172742D626172223A623D6E65772043';
wwv_flow_api.g_varchar2_table(598) := '686172746973742E426172282223222B632C412C6F293B627265616B3B636173652263686172742D706965223A6F2E636861727450616464696E673D7B7D2C623D6E65772043686172746973742E506965282223222B632C412C6F293B627265616B3B64';
wwv_flow_api.g_varchar2_table(599) := '656661756C743A636F6E736F6C652E6C6F6728224E6F2076616C6964204368617274207479706522297D76617220773D766F69642030213D6E2E434152445F49434F4E5F434F4C4F5226266E2E434152445F49434F4E5F434F4C4F522E6C656E6774683E';
wwv_flow_api.g_varchar2_table(600) := '303F6E2E434152445F49434F4E5F434F4C4F523A227768697465223B622E6F6E282264726177222C66756E6374696F6E2865297B76617220743D7B7D3B6966286E2E434152445F43484152545F44415441262622737472696E67223D3D747970656F6620';
wwv_flow_api.g_varchar2_table(601) := '6E2E434152445F43484152545F44415441297472797B743D4A534F4E2E7061727365286E2E434152445F43484152545F44415441297D63617463682865297B636F6E736F6C652E6C6F6728224572726F72207768696C652074727920746F207061727365';
wwv_flow_api.g_varchar2_table(602) := '20434152445F43484152545F434F4E4649473A20222B652B61297D656C736520743D6E2E434152445F43484152545F444154413B742E636F6C6F7273262628773D742E636F6C6F72735B652E696E6465785D7C7C742E636F6C6F72735B305D292C226261';
wwv_flow_api.g_varchar2_table(603) := '7222213D3D652E747970652626226C696E6522213D3D652E74797065262622706F696E7422213D3D652E747970657C7C286F2E7374726F6B6557696474683F652E656C656D656E742E61747472287B7374796C653A227374726F6B653A2020222B772B22';
wwv_flow_api.g_varchar2_table(604) := '3B207374726F6B652D77696474683A222B6F2E7374726F6B6557696474682B2270783B227D293A652E656C656D656E742E61747472287B7374796C653A227374726F6B653A2020222B777D29292C22736C696365223D3D3D652E747970652626652E656C';
wwv_flow_api.g_varchar2_table(605) := '656D656E742E61747472287B7374796C653A2266696C6C3A20222B772B223B2066696C6C2D6F7061636974793A20222B28742E636F6C6F72733F2E363A28652E696E6465782531302B32292F3130297D292C2261726561223D3D3D652E74797065262665';
wwv_flow_api.g_varchar2_table(606) := '2E656C656D656E742E61747472287B7374796C653A2266696C6C3A20222B772B223B2066696C6C2D6F7061636974793A20222B28652E696E6465782531302B32292F31307D292C21303D3D3D6F2E646F6E75742626286F2E736C69636557696474682626';
wwv_flow_api.g_varchar2_table(607) := '242870292E66696E6428222E63742D736C6963652D646F6E757422292E63737328227374726F6B652D7769647468222C6F2E736C69636557696474682E746F537472696E6728292B22707822292C652E656C656D656E742E61747472287B7374796C653A';
wwv_flow_api.g_varchar2_table(608) := '227374726F6B652D6F7061636974793A20222B282D652E696E6465782531302B3130292F31302B223B207374726F6B653A2020222B777D292C242870292E66696E6428222E63742D6C6162656C22292E63737328227374726F6B65222C22696E69746961';
wwv_flow_api.g_varchar2_table(609) := '6C22292C242870292E66696E6428222E63742D6C6162656C22292E637373282266696C6C222C742E636F6C6F72733F227768697465223A7729292C242870292E66696E6428222E63742D736C6963652D70696522292E6174747228227374726F6B65222C';
wwv_flow_api.g_varchar2_table(610) := '742E636F6C6F72733F227267626128302C302C302C3029223A77292C242870292E66696E6428222E63742D736C6963652D646F6E757422292E6174747228227374726F6B65222C77292C242870292E66696E6428222E63742D6C6162656C22292E637373';
wwv_flow_api.g_varchar2_table(611) := '2822636F6C6F72222C742E636F6C6F72733F227768697465223A77292C242870292E66696E6428222E63742D6772696422292E63737328227374726F6B65222C742E636F6C6F72733F227768697465223A77292C242870292E66696E6428222E63742D67';
wwv_flow_api.g_varchar2_table(612) := '72696422292E63737328226F706163697479222C222E3422297D297D7D28652C6E2C612C692C612E434152445F43484152545F434F4E464947293A6628652C6E2C612C69292C723E3D31322626286E3D682879292C723D30297D297D7D28692E726F772C';
wwv_flow_api.g_varchar2_table(613) := '78293A28792E63737328226D696E2D686569676874222C2222292C652E6E6F446174614D6573736167652E73686F7728792C6E29297D66756E6374696F6E20682865297B76617220743D2428223C6469763E3C2F6469763E22293B72657475726E20742E';
wwv_flow_api.g_varchar2_table(614) := '616464436C6173732822732D672D726F7722292C652E617070656E642874292C747D66756E6374696F6E207028297B69662869297B652E6C6F616465722E73746172742879293B76617220743D613B617065782E7365727665722E706C7567696E28692C';
wwv_flow_api.g_varchar2_table(615) := '7B706167654974656D733A747D2C7B737563636573733A752C6572726F723A66756E6374696F6E2865297B792E656D70747928292C636F6E736F6C652E6C6F6728652E726573706F6E736554657874297D2C64617461547970653A226A736F6E227D297D';
wwv_flow_api.g_varchar2_table(616) := '656C7365207472797B652E6C6F616465722E73746172742879292C73657454696D656F75742866756E6374696F6E28297B7528646174614A534F4E297D2C353030297D63617463682865297B636F6E736F6C652E6C6F6728226E6565642064617461206A';
wwv_flow_api.g_varchar2_table(617) := '736F6E22292C636F6E736F6C652E6C6F672865297D7D66756E6374696F6E206628742C692C6E2C72297B76617220613D2428223C6469763E3C2F6469763E22293B612E616464436C6173732822732D672D636F6C2D222B722E636172645769647468293B';
wwv_flow_api.g_varchar2_table(618) := '76617220733D2428223C6469763E3C2F6469763E22293B696628732E616464436C617373282261742D636172642061742D636172642D737461747322292C6E2E434152445F49434F4E297B766172206F3D2428223C6469763E3C2F6469763E22293B6F2E';
wwv_flow_api.g_varchar2_table(619) := '616464436C6173732822636172642D68656164657222293B766172206C3D2428223C693E3C2F693E22293B6966286E2E434152445F49434F4E26262266612D223D3D3D6E2E434152445F49434F4E2E73756273747228302C2266612D222E6C656E677468';
wwv_flow_api.g_varchar2_table(620) := '29297B76617220633D766F69642030213D6E2E434152445F49434F4E5F434F4C4F5226266E2E434152445F49434F4E5F434F4C4F522E6C656E6774683E303F6E2E434152445F49434F4E5F434F4C4F523A227768697465222C643D226261636B67726F75';
wwv_flow_api.g_varchar2_table(621) := '6E643A206C696E6561722D6772616469656E742836306465672C2068736C28222B32332A74253335302B222C203535252C20363025292C2068736C28222B32332A74253335302B222C203530252C2036302529293B626F782D736861646F773A20302031';
wwv_flow_api.g_varchar2_table(622) := '3270782032307078202D313070782072676261283233302C203233302C203233302C20302E3238292C203020347078203230707820307078207267626128302C20302C20302C20302E3132292C20302037707820387078202D3570782072676261283233';
wwv_flow_api.g_varchar2_table(623) := '302C203233302C203233302C20302E32293B223B6C2E616464436C6173732822666120222B6E2E434152445F49434F4E292C6C2E6373732822636F6C6F72222C63292C6F2E6174747228227374796C65222C6E2E434152445F4845414445525F5354594C';
wwv_flow_api.g_varchar2_table(624) := '457C7C64297D656C736520652E6973446566696E6564416E644E6F744E756C6C286E2E434152445F4845414445525F5354594C452926266F2E6174747228227374796C65222C6E2E434152445F4845414445525F5354594C45292C6F2E63737328226261';
wwv_flow_api.g_varchar2_table(625) := '636B67726F756E642D696D616765222C2275726C28222B6E2E434152445F49434F4E2B222922293B6F2E617070656E64286C292C732E617070656E64286F297D76617220753D2428223C6469763E3C2F6469763E22293B696628752E616464436C617373';
wwv_flow_api.g_varchar2_table(626) := '2822636172642D636F6E74656E7422292C652E6973446566696E6564416E644E6F744E756C6C286E2E434152445F5449544C4529297B76617220683D2428223C703E3C2F703E22293B682E616464436C617373282263617465676F727922292C682E6874';
wwv_flow_api.g_varchar2_table(627) := '6D6C286E2E434152445F5449544C45292C752E617070656E642868292C6F2E637373282270616464696E67222C223135707822297D656C7365206F2E637373282270616464696E67222C2235707822293B76617220703D2428223C68323E3C2F68323E22';
wwv_flow_api.g_varchar2_table(628) := '293B702E616464436C61737328227469746C6522292C652E6973446566696E6564416E644E6F744E756C6C286E2E434152445F56414C5545292626702E68746D6C286E2E434152445F56414C5545292C752E617070656E642870292C732E617070656E64';
wwv_flow_api.g_varchar2_table(629) := '2875293B76617220663D2428223C6469763E3C2F6469763E22293B662E616464436C6173732822636172642D666F6F74657222293B766172206D3D2428223C6469763E3C2F6469763E22293B6966286E2E434152445F464F4F544552262628286D3D2428';
wwv_flow_api.g_varchar2_table(630) := '223C6469763E3C2F6469763E2229292E616464436C6173732822737461747322292C6D2E617070656E64286E2E434152445F464F4F54455229292C662E617070656E64286D292C732E617070656E642866292C612E617070656E642873292C6E2E434152';
wwv_flow_api.g_varchar2_table(631) := '445F4C494E4B297B76617220673D2428223C613E3C2F613E22293B672E61747472282268726566222C6E2E434152445F4C494E4B292C672E617070656E642861292C692E617070656E642867297D656C736520692E617070656E642861297D766172206D';
wwv_flow_api.g_varchar2_table(632) := '2C673D7B414C4C4F5745445F415454523A5B226163636573736B6579222C22616C69676E222C22616C74222C22616C77617973222C226175746F636F6D706C657465222C226175746F706C6179222C22626F72646572222C2263656C6C70616464696E67';
wwv_flow_api.g_varchar2_table(633) := '222C2263656C6C73706163696E67222C2263686172736574222C22636C617373222C22646972222C22686569676874222C2268726566222C226964222C226C616E67222C226E616D65222C2272656C222C227265717569726564222C22737263222C2273';
wwv_flow_api.g_varchar2_table(634) := '74796C65222C2273756D6D617279222C22746162696E646578222C22746172676574222C227469746C65222C2274797065222C2276616C7565222C227769647468225D2C414C4C4F5745445F544147533A5B2261222C2261646472657373222C2262222C';
wwv_flow_api.g_varchar2_table(635) := '22626C6F636B71756F7465222C226272222C2263617074696F6E222C22636F6465222C226464222C22646976222C22646C222C226474222C22656D222C2266696763617074696F6E222C22666967757265222C226831222C226832222C226833222C2268';
wwv_flow_api.g_varchar2_table(636) := '34222C226835222C226836222C226872222C2269222C22696D67222C226C6162656C222C226C69222C226E6C222C226F6C222C2270222C22707265222C2273222C227370616E222C22737472696B65222C227374726F6E67222C22737562222C22737570';
wwv_flow_api.g_varchar2_table(637) := '222C227461626C65222C2274626F6479222C227464222C227468222C227468656164222C227472222C2275222C22756C225D7D3B2131213D3D6C2626286D3D633F652E6A736F6E53617665457874656E6428672C63293A67293B76617220763D24282223';
wwv_flow_api.g_varchar2_table(638) := '222B74293B696628762E6C656E6774683E30297B76617220783D7B7D3B783D652E6A736F6E53617665457874656E64287B6361726457696474683A342C726566726573683A307D2C72293B76617220793D66756E6374696F6E2865297B76617220743D24';
wwv_flow_api.g_varchar2_table(639) := '28223C6469763E3C2F6469763E22293B72657475726E20742E616464436C6173732822732D672D636F6E7461696E657222292C742E63737328226D696E2D686569676874222C22313730707822292C652E617070656E642874292C747D2876293B702829';
wwv_flow_api.g_varchar2_table(640) := '3B7472797B617065782E6A5175657279282223222B73292E62696E6428226170657872656672657368222C66756E6374696F6E28297B303D3D792E6368696C6472656E28227370616E22292E6C656E67746826267028297D297D63617463682865297B63';
wwv_flow_api.g_varchar2_table(641) := '6F6E736F6C652E6C6F67282243616E27742062696E642072656672657368206576656E74206F6E20222B732B222E2041706578206973206D697373696E6722292C636F6E736F6C652E6C6F672865297D782E726566726573683E302626736574496E7465';
wwv_flow_api.g_varchar2_table(642) := '7276616C2866756E6374696F6E28297B303D3D792E6368696C6472656E28227370616E22292E6C656E67746826267028297D2C3165332A782E72656672657368297D656C736520636F6E736F6C652E6C6F67282243616E27742066696E6420706172656E';
wwv_flow_api.g_varchar2_table(643) := '7449443A20222B74297D7D7D28293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(31841054463682142636)
,p_plugin_id=>wwv_flow_api.id(50649497605321085949)
,p_file_name=>'materialcards.pkgd.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '4368617274733A0D0A0D0A68747470733A2F2F67696F6E6B756E7A2E6769746875622E696F2F63686172746973742D6A732F3A0D0A0D0A4D4954204C6963656E73650D0A0D0A436F707972696768742028632920323031332047696F6E204B756E7A203C';
wwv_flow_api.g_varchar2_table(2) := '67696F6E2E6B756E7A40676D61696C2E636F6D3E0D0A0D0A5065726D697373696F6E20697320686572656279206772616E7465642C2066726565206F66206368617267652C20746F20616E7920706572736F6E206F627461696E696E67206120636F7079';
wwv_flow_api.g_varchar2_table(3) := '206F66207468697320736F66747761726520616E64206173736F63696174656420646F63756D656E746174696F6E2066696C657320287468652022536F66747761726522292C20746F206465616C20696E2074686520536F66747761726520776974686F';
wwv_flow_api.g_varchar2_table(4) := '7574207265737472696374696F6E2C20696E636C7564696E6720776974686F7574206C696D69746174696F6E207468652072696768747320746F207573652C20636F70792C206D6F646966792C206D657267652C207075626C6973682C20646973747269';
wwv_flow_api.g_varchar2_table(5) := '627574652C207375626C6963656E73652C20616E642F6F722073656C6C20636F70696573206F662074686520536F6674776172652C20616E6420746F207065726D697420706572736F6E7320746F2077686F6D2074686520536F66747761726520697320';
wwv_flow_api.g_varchar2_table(6) := '6675726E697368656420746F20646F20736F2C207375626A65637420746F2074686520666F6C6C6F77696E6720636F6E646974696F6E733A0D0A0D0A5468652061626F766520636F70797269676874206E6F7469636520616E642074686973207065726D';
wwv_flow_api.g_varchar2_table(7) := '697373696F6E206E6F74696365207368616C6C20626520696E636C7564656420696E20616C6C20636F70696573206F72207375627374616E7469616C20706F7274696F6E73206F662074686520536F6674776172652E0D0A0D0A54484520534F46545741';
wwv_flow_api.g_varchar2_table(8) := '52452049532050524F564944454420224153204953222C20574954484F55542057415252414E5459204F4620414E59204B494E442C2045585052455353204F5220494D504C4945442C20494E434C5544494E4720425554204E4F54204C494D4954454420';
wwv_flow_api.g_varchar2_table(9) := '544F205448452057415252414E54494553204F46204D45524348414E544142494C4954592C204649544E45535320464F52204120504152544943554C415220505552504F534520414E44204E4F4E494E4652494E47454D454E542E20494E204E4F204556';
wwv_flow_api.g_varchar2_table(10) := '454E54205348414C4C2054484520415554484F5253204F5220434F5059524947485420484F4C44455253204245204C4941424C4520464F5220414E5920434C41494D2C2044414D41474553204F52204F54484552204C494142494C4954592C2057484554';
wwv_flow_api.g_varchar2_table(11) := '48455220494E20414E20414354494F4E204F4620434F4E54524143542C20544F5254204F52204F54484552574953452C2041524953494E472046524F4D2C204F5554204F46204F5220494E20434F4E4E454354494F4E20574954482054484520534F4654';
wwv_flow_api.g_varchar2_table(12) := '57415245204F522054484520555345204F52204F54484552204445414C494E475320494E2054484520534F4654574152452E0D0A0D0A4361726473204373733A0D0A0D0A68747470733A2F2F6769746875622E636F6D2F637265617469766574696D6F66';
wwv_flow_api.g_varchar2_table(13) := '66696369616C2F6D6174657269616C2D64617368626F6172643A0D0A0D0A4D4954204C6963656E73650D0A0D0A436F707972696768742028632920323031372043726561746976652054696D0D0A0D0A5065726D697373696F6E20697320686572656279';
wwv_flow_api.g_varchar2_table(14) := '206772616E7465642C2066726565206F66206368617267652C20746F20616E7920706572736F6E206F627461696E696E67206120636F7079206F66207468697320736F66747761726520616E64206173736F63696174656420646F63756D656E74617469';
wwv_flow_api.g_varchar2_table(15) := '6F6E2066696C657320287468652022536F66747761726522292C20746F206465616C20696E2074686520536F66747761726520776974686F7574207265737472696374696F6E2C20696E636C7564696E6720776974686F7574206C696D69746174696F6E';
wwv_flow_api.g_varchar2_table(16) := '207468652072696768747320746F207573652C20636F70792C206D6F646966792C206D657267652C207075626C6973682C20646973747269627574652C207375626C6963656E73652C20616E642F6F722073656C6C20636F70696573206F662074686520';
wwv_flow_api.g_varchar2_table(17) := '536F6674776172652C20616E6420746F207065726D697420706572736F6E7320746F2077686F6D2074686520536F667477617265206973206675726E697368656420746F20646F20736F2C207375626A65637420746F2074686520666F6C6C6F77696E67';
wwv_flow_api.g_varchar2_table(18) := '20636F6E646974696F6E733A0D0A0D0A5468652061626F766520636F70797269676874206E6F7469636520616E642074686973207065726D697373696F6E206E6F74696365207368616C6C20626520696E636C7564656420696E20616C6C20636F706965';
wwv_flow_api.g_varchar2_table(19) := '73206F72207375627374616E7469616C20706F7274696F6E73206F662074686520536F6674776172652E0D0A0D0A54484520534F4654574152452049532050524F564944454420224153204953222C20574954484F55542057415252414E5459204F4620';
wwv_flow_api.g_varchar2_table(20) := '414E59204B494E442C2045585052455353204F5220494D504C4945442C20494E434C5544494E4720425554204E4F54204C494D4954454420544F205448452057415252414E54494553204F46204D45524348414E544142494C4954592C204649544E4553';
wwv_flow_api.g_varchar2_table(21) := '5320464F52204120504152544943554C415220505552504F534520414E44204E4F4E494E4652494E47454D454E542E20494E204E4F204556454E54205348414C4C2054484520415554484F5253204F5220434F5059524947485420484F4C444552532042';
wwv_flow_api.g_varchar2_table(22) := '45204C4941424C4520464F5220414E5920434C41494D2C2044414D41474553204F52204F54484552204C494142494C4954592C205748455448455220494E20414E20414354494F4E204F4620434F4E54524143542C20544F5254204F52204F5448455257';
wwv_flow_api.g_varchar2_table(23) := '4953452C2041524953494E472046524F4D2C204F5554204F46204F5220494E20434F4E4E454354494F4E20574954482054484520534F465457415245204F522054484520555345204F52204F54484552204445414C494E475320494E2054484520534F46';
wwv_flow_api.g_varchar2_table(24) := '54574152452E0D0A0D0A6A51756572793A0D0A0D0A68747470733A2F2F6769746875622E636F6D2F6A71756572792F6A71756572793A0D0A0D0A436F70797269676874204A5320466F756E646174696F6E20616E64206F7468657220636F6E7472696275';
wwv_flow_api.g_varchar2_table(25) := '746F72732C2068747470733A2F2F6A732E666F756E646174696F6E2F0D0A0D0A5468697320736F66747761726520636F6E7369737473206F6620766F6C756E7461727920636F6E747269627574696F6E73206D616465206279206D616E790D0A696E6469';
wwv_flow_api.g_varchar2_table(26) := '76696475616C732E20466F7220657861637420636F6E747269627574696F6E20686973746F72792C2073656520746865207265766973696F6E20686973746F72790D0A617661696C61626C652061742068747470733A2F2F6769746875622E636F6D2F6A';
wwv_flow_api.g_varchar2_table(27) := '71756572792F6A71756572790D0A0D0A54686520666F6C6C6F77696E67206C6963656E7365206170706C69657320746F20616C6C207061727473206F66207468697320736F667477617265206578636570742061730D0A646F63756D656E746564206265';
wwv_flow_api.g_varchar2_table(28) := '6C6F773A0D0A0D0A3D3D3D3D0D0A0D0A5065726D697373696F6E20697320686572656279206772616E7465642C2066726565206F66206368617267652C20746F20616E7920706572736F6E206F627461696E696E670D0A6120636F7079206F6620746869';
wwv_flow_api.g_varchar2_table(29) := '7320736F66747761726520616E64206173736F63696174656420646F63756D656E746174696F6E2066696C657320287468650D0A22536F66747761726522292C20746F206465616C20696E2074686520536F66747761726520776974686F757420726573';
wwv_flow_api.g_varchar2_table(30) := '7472696374696F6E2C20696E636C7564696E670D0A776974686F7574206C696D69746174696F6E207468652072696768747320746F207573652C20636F70792C206D6F646966792C206D657267652C207075626C6973682C0D0A64697374726962757465';
wwv_flow_api.g_varchar2_table(31) := '2C207375626C6963656E73652C20616E642F6F722073656C6C20636F70696573206F662074686520536F6674776172652C20616E6420746F0D0A7065726D697420706572736F6E7320746F2077686F6D2074686520536F66747761726520697320667572';
wwv_flow_api.g_varchar2_table(32) := '6E697368656420746F20646F20736F2C207375626A65637420746F0D0A74686520666F6C6C6F77696E6720636F6E646974696F6E733A0D0A0D0A5468652061626F766520636F70797269676874206E6F7469636520616E642074686973207065726D6973';
wwv_flow_api.g_varchar2_table(33) := '73696F6E206E6F74696365207368616C6C2062650D0A696E636C7564656420696E20616C6C20636F70696573206F72207375627374616E7469616C20706F7274696F6E73206F662074686520536F6674776172652E0D0A0D0A54484520534F4654574152';
wwv_flow_api.g_varchar2_table(34) := '452049532050524F564944454420224153204953222C20574954484F55542057415252414E5459204F4620414E59204B494E442C0D0A45585052455353204F5220494D504C4945442C20494E434C5544494E4720425554204E4F54204C494D4954454420';
wwv_flow_api.g_varchar2_table(35) := '544F205448452057415252414E54494553204F460D0A4D45524348414E544142494C4954592C204649544E45535320464F52204120504152544943554C415220505552504F534520414E440D0A4E4F4E494E4652494E47454D454E542E20494E204E4F20';
wwv_flow_api.g_varchar2_table(36) := '4556454E54205348414C4C2054484520415554484F5253204F5220434F5059524947485420484F4C444552532042450D0A4C4941424C4520464F5220414E5920434C41494D2C2044414D41474553204F52204F54484552204C494142494C4954592C2057';
wwv_flow_api.g_varchar2_table(37) := '48455448455220494E20414E20414354494F4E0D0A4F4620434F4E54524143542C20544F5254204F52204F54484552574953452C2041524953494E472046524F4D2C204F5554204F46204F5220494E20434F4E4E454354494F4E0D0A5749544820544845';
wwv_flow_api.g_varchar2_table(38) := '20534F465457415245204F522054484520555345204F52204F54484552204445414C494E475320494E2054484520534F4654574152452E0D0A0D0A3D3D3D3D0D0A0D0A416C6C2066696C6573206C6F636174656420696E20746865206E6F64655F6D6F64';
wwv_flow_api.g_varchar2_table(39) := '756C657320616E642065787465726E616C206469726563746F72696573206172650D0A65787465726E616C6C79206D61696E7461696E6564206C69627261726965732075736564206279207468697320736F667477617265207768696368206861766520';
wwv_flow_api.g_varchar2_table(40) := '74686569720D0A6F776E206C6963656E7365733B207765207265636F6D6D656E6420796F752072656164207468656D2C206173207468656972207465726D73206D6179206469666665722066726F6D0D0A746865207465726D732061626F76652E0D0A0D';
wwv_flow_api.g_varchar2_table(41) := '0A626F6F7473747261703A0D0A0D0A68747470733A2F2F6769746875622E636F6D2F747762732F626F6F7473747261703A0D0A0D0A546865204D4954204C6963656E736520284D4954290D0A0D0A436F707972696768742028632920323031312D323031';
wwv_flow_api.g_varchar2_table(42) := '3720547769747465722C20496E632E0D0A436F707972696768742028632920323031312D323031372054686520426F6F74737472617020417574686F72730D0A0D0A5065726D697373696F6E20697320686572656279206772616E7465642C2066726565';
wwv_flow_api.g_varchar2_table(43) := '206F66206368617267652C20746F20616E7920706572736F6E206F627461696E696E67206120636F70790D0A6F66207468697320736F66747761726520616E64206173736F63696174656420646F63756D656E746174696F6E2066696C65732028746865';
wwv_flow_api.g_varchar2_table(44) := '2022536F66747761726522292C20746F206465616C0D0A696E2074686520536F66747761726520776974686F7574207265737472696374696F6E2C20696E636C7564696E6720776974686F7574206C696D69746174696F6E20746865207269676874730D';
wwv_flow_api.g_varchar2_table(45) := '0A746F207573652C20636F70792C206D6F646966792C206D657267652C207075626C6973682C20646973747269627574652C207375626C6963656E73652C20616E642F6F722073656C6C0D0A636F70696573206F662074686520536F6674776172652C20';
wwv_flow_api.g_varchar2_table(46) := '616E6420746F207065726D697420706572736F6E7320746F2077686F6D2074686520536F6674776172652069730D0A6675726E697368656420746F20646F20736F2C207375626A65637420746F2074686520666F6C6C6F77696E6720636F6E646974696F';
wwv_flow_api.g_varchar2_table(47) := '6E733A0D0A0D0A5468652061626F766520636F70797269676874206E6F7469636520616E642074686973207065726D697373696F6E206E6F74696365207368616C6C20626520696E636C7564656420696E0D0A616C6C20636F70696573206F7220737562';
wwv_flow_api.g_varchar2_table(48) := '7374616E7469616C20706F7274696F6E73206F662074686520536F6674776172652E0D0A0D0A54484520534F4654574152452049532050524F564944454420224153204953222C20574954484F55542057415252414E5459204F4620414E59204B494E44';
wwv_flow_api.g_varchar2_table(49) := '2C2045585052455353204F520D0A494D504C4945442C20494E434C5544494E4720425554204E4F54204C494D4954454420544F205448452057415252414E54494553204F46204D45524348414E544142494C4954592C0D0A4649544E45535320464F5220';
wwv_flow_api.g_varchar2_table(50) := '4120504152544943554C415220505552504F534520414E44204E4F4E494E4652494E47454D454E542E20494E204E4F204556454E54205348414C4C205448450D0A415554484F5253204F5220434F5059524947485420484F4C44455253204245204C4941';
wwv_flow_api.g_varchar2_table(51) := '424C4520464F5220414E5920434C41494D2C2044414D41474553204F52204F544845520D0A4C494142494C4954592C205748455448455220494E20414E20414354494F4E204F4620434F4E54524143542C20544F5254204F52204F54484552574953452C';
wwv_flow_api.g_varchar2_table(52) := '2041524953494E472046524F4D2C0D0A4F5554204F46204F5220494E20434F4E4E454354494F4E20574954482054484520534F465457415245204F522054484520555345204F52204F54484552204445414C494E475320494E0D0A54484520534F465457';
wwv_flow_api.g_varchar2_table(53) := '4152452E0D0A0D0A466F6E742041504558204C6963656E73650D0A0D0A466F6E74733A0D0A53494C204F464C20312E31204C6963656E7365202868747470733A2F2F736372697074732E73696C2E6F72672F4F464C290D0A0D0A49636F6E7320616E6420';
wwv_flow_api.g_varchar2_table(54) := '436F64653A0D0A4D4954204C6963656E7365202868747470733A2F2F6F70656E736F757263652E6F72672F6C6963656E7365732F4D4954290D0A0D0A2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D';
wwv_flow_api.g_varchar2_table(55) := '2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A53494C204F50454E20464F4E54204C4943454E53450D0A200D0A56657273696F6E20312E31202D20323620466562727561727920323030370D0A505245414D424C450D0A200D0A54686520676F616C';
wwv_flow_api.g_varchar2_table(56) := '73206F6620746865204F70656E20466F6E74204C6963656E736520284F464C292061726520746F207374696D756C61746520776F726C64776964650D0A646576656C6F706D656E74206F6620636F6C6C61626F72617469766520666F6E742070726F6A65';
wwv_flow_api.g_varchar2_table(57) := '6374732C20746F20737570706F72742074686520666F6E74206372656174696F6E0D0A6566666F727473206F662061636164656D696320616E64206C696E6775697374696320636F6D6D756E69746965732C20616E6420746F2070726F76696465206120';
wwv_flow_api.g_varchar2_table(58) := '6672656520616E640D0A6F70656E206672616D65776F726B20696E20776869636820666F6E7473206D61792062652073686172656420616E6420696D70726F76656420696E20706172746E6572736869700D0A77697468206F74686572732E0D0A200D0A';
wwv_flow_api.g_varchar2_table(59) := '546865204F464C20616C6C6F777320746865206C6963656E73656420666F6E747320746F20626520757365642C20737475646965642C206D6F64696669656420616E640D0A7265646973747269627574656420667265656C79206173206C6F6E67206173';
wwv_flow_api.g_varchar2_table(60) := '207468657920617265206E6F7420736F6C64206279207468656D73656C7665732E205468650D0A666F6E74732C20696E636C7564696E6720616E79206465726976617469766520776F726B732C2063616E2062652062756E646C65642C20656D62656464';
wwv_flow_api.g_varchar2_table(61) := '65642C0D0A7265646973747269627574656420616E642F6F7220736F6C64207769746820616E7920736F6674776172652070726F7669646564207468617420616E792072657365727665640D0A6E616D657320617265206E6F7420757365642062792064';
wwv_flow_api.g_varchar2_table(62) := '65726976617469766520776F726B732E2054686520666F6E747320616E642064657269766174697665732C0D0A686F77657665722C2063616E6E6F742062652072656C656173656420756E64657220616E79206F746865722074797065206F66206C6963';
wwv_flow_api.g_varchar2_table(63) := '656E73652E205468650D0A726571756972656D656E7420666F7220666F6E747320746F2072656D61696E20756E6465722074686973206C6963656E736520646F6573206E6F74206170706C790D0A746F20616E7920646F63756D656E7420637265617465';
wwv_flow_api.g_varchar2_table(64) := '64207573696E672074686520666F6E7473206F722074686569722064657269766174697665732E0D0A444546494E4954494F4E530D0A200D0A22466F6E7420536F667477617265222072656665727320746F2074686520736574206F662066696C657320';
wwv_flow_api.g_varchar2_table(65) := '72656C65617365642062792074686520436F707972696768740D0A486F6C64657228732920756E6465722074686973206C6963656E736520616E6420636C6561726C79206D61726B656420617320737563682E2054686973206D61790D0A696E636C7564';
wwv_flow_api.g_varchar2_table(66) := '6520736F757263652066696C65732C206275696C64207363726970747320616E6420646F63756D656E746174696F6E2E0D0A200D0A22526573657276656420466F6E74204E616D65222072656665727320746F20616E79206E616D657320737065636966';
wwv_flow_api.g_varchar2_table(67) := '6965642061732073756368206166746572207468650D0A636F707972696768742073746174656D656E742873292E0D0A200D0A224F726967696E616C2056657273696F6E222072656665727320746F2074686520636F6C6C656374696F6E206F6620466F';
wwv_flow_api.g_varchar2_table(68) := '6E7420536F66747761726520636F6D706F6E656E74732061730D0A64697374726962757465642062792074686520436F7079726967687420486F6C6465722873292E0D0A200D0A224D6F6469666965642056657273696F6E222072656665727320746F20';
wwv_flow_api.g_varchar2_table(69) := '616E792064657269766174697665206D61646520627920616464696E6720746F2C2064656C6574696E672C0D0A6F7220737562737469747574696E67209720696E2070617274206F7220696E2077686F6C65209720616E79206F662074686520636F6D70';
wwv_flow_api.g_varchar2_table(70) := '6F6E656E7473206F66207468650D0A4F726967696E616C2056657273696F6E2C206279206368616E67696E6720666F726D617473206F7220627920706F7274696E672074686520466F6E7420536F66747761726520746F20610D0A6E657720656E766972';
wwv_flow_api.g_varchar2_table(71) := '6F6E6D656E742E0D0A200D0A22417574686F72222072656665727320746F20616E792064657369676E65722C20656E67696E6565722C2070726F6772616D6D65722C20746563686E6963616C0D0A777269746572206F72206F7468657220706572736F6E';
wwv_flow_api.g_varchar2_table(72) := '2077686F20636F6E747269627574656420746F2074686520466F6E7420536F6674776172652E0D0A5045524D495353494F4E202620434F4E444954494F4E530D0A200D0A5065726D697373696F6E20697320686572656279206772616E7465642C206672';
wwv_flow_api.g_varchar2_table(73) := '6565206F66206368617267652C20746F20616E7920706572736F6E206F627461696E696E670D0A6120636F7079206F662074686520466F6E7420536F6674776172652C20746F207573652C2073747564792C20636F70792C206D657267652C20656D6265';
wwv_flow_api.g_varchar2_table(74) := '642C206D6F646966792C0D0A7265646973747269627574652C20616E642073656C6C206D6F64696669656420616E6420756E6D6F64696669656420636F70696573206F662074686520466F6E740D0A536F6674776172652C207375626A65637420746F20';
wwv_flow_api.g_varchar2_table(75) := '74686520666F6C6C6F77696E6720636F6E646974696F6E733A0D0A200D0A3129204E6569746865722074686520466F6E7420536F667477617265206E6F7220616E79206F662069747320696E646976696475616C20636F6D706F6E656E74732C0D0A696E';
wwv_flow_api.g_varchar2_table(76) := '204F726967696E616C206F72204D6F6469666965642056657273696F6E732C206D617920626520736F6C6420627920697473656C662E0D0A200D0A3229204F726967696E616C206F72204D6F6469666965642056657273696F6E73206F66207468652046';
wwv_flow_api.g_varchar2_table(77) := '6F6E7420536F667477617265206D61792062652062756E646C65642C0D0A7265646973747269627574656420616E642F6F7220736F6C64207769746820616E7920736F6674776172652C2070726F76696465642074686174206561636820636F70790D0A';
wwv_flow_api.g_varchar2_table(78) := '636F6E7461696E73207468652061626F766520636F70797269676874206E6F7469636520616E642074686973206C6963656E73652E2054686573652063616E2062650D0A696E636C7564656420656974686572206173207374616E642D616C6F6E652074';
wwv_flow_api.g_varchar2_table(79) := '6578742066696C65732C2068756D616E2D7265616461626C652068656164657273206F720D0A696E2074686520617070726F707269617465206D616368696E652D7265616461626C65206D65746164617461206669656C64732077697468696E20746578';
wwv_flow_api.g_varchar2_table(80) := '74206F720D0A62696E6172792066696C6573206173206C6F6E672061732074686F7365206669656C64732063616E20626520656173696C79207669657765642062792074686520757365722E0D0A200D0A3329204E6F204D6F6469666965642056657273';
wwv_flow_api.g_varchar2_table(81) := '696F6E206F662074686520466F6E7420536F667477617265206D6179207573652074686520526573657276656420466F6E740D0A4E616D6528732920756E6C657373206578706C69636974207772697474656E207065726D697373696F6E206973206772';
wwv_flow_api.g_varchar2_table(82) := '616E7465642062792074686520636F72726573706F6E64696E670D0A436F7079726967687420486F6C6465722E2054686973207265737472696374696F6E206F6E6C79206170706C69657320746F20746865207072696D61727920666F6E74206E616D65';
wwv_flow_api.g_varchar2_table(83) := '2061730D0A70726573656E74656420746F207468652075736572732E0D0A200D0A342920546865206E616D65287329206F662074686520436F7079726967687420486F6C646572287329206F722074686520417574686F72287329206F66207468652046';
wwv_flow_api.g_varchar2_table(84) := '6F6E740D0A536F667477617265207368616C6C206E6F74206265207573656420746F2070726F6D6F74652C20656E646F727365206F722061647665727469736520616E790D0A4D6F6469666965642056657273696F6E2C2065786365707420746F206163';
wwv_flow_api.g_varchar2_table(85) := '6B6E6F776C656467652074686520636F6E747269627574696F6E287329206F66207468650D0A436F7079726967687420486F6C64657228732920616E642074686520417574686F72287329206F722077697468207468656972206578706C696369742077';
wwv_flow_api.g_varchar2_table(86) := '72697474656E0D0A7065726D697373696F6E2E0D0A200D0A35292054686520466F6E7420536F6674776172652C206D6F646966696564206F7220756E6D6F6469666965642C20696E2070617274206F7220696E2077686F6C652C0D0A6D75737420626520';
wwv_flow_api.g_varchar2_table(87) := '646973747269627574656420656E746972656C7920756E6465722074686973206C6963656E73652C20616E64206D757374206E6F742062650D0A646973747269627574656420756E64657220616E79206F74686572206C6963656E73652E205468652072';
wwv_flow_api.g_varchar2_table(88) := '6571756972656D656E7420666F7220666F6E747320746F0D0A72656D61696E20756E6465722074686973206C6963656E736520646F6573206E6F74206170706C7920746F20616E7920646F63756D656E7420637265617465640D0A7573696E6720746865';
wwv_flow_api.g_varchar2_table(89) := '20466F6E7420536F6674776172652E0D0A5445524D494E4154494F4E0D0A200D0A54686973206C6963656E7365206265636F6D6573206E756C6C20616E6420766F696420696620616E79206F66207468652061626F766520636F6E646974696F6E732061';
wwv_flow_api.g_varchar2_table(90) := '72650D0A6E6F74206D65742E0D0A0D0A444953434C41494D45520D0A54484520464F4E5420534F4654574152452049532050524F564944454420224153204953222C20574954484F55542057415252414E5459204F4620414E59204B494E442C0D0A4558';
wwv_flow_api.g_varchar2_table(91) := '5052455353204F5220494D504C4945442C20494E434C5544494E4720425554204E4F54204C494D4954454420544F20414E592057415252414E54494553204F460D0A4D45524348414E544142494C4954592C204649544E45535320464F52204120504152';
wwv_flow_api.g_varchar2_table(92) := '544943554C415220505552504F534520414E44204E4F4E494E4652494E47454D454E540D0A4F4620434F505952494748542C20504154454E542C2054524144454D41524B2C204F52204F544845522052494748542E20494E204E4F204556454E54205348';
wwv_flow_api.g_varchar2_table(93) := '414C4C205448450D0A434F5059524947485420484F4C444552204245204C4941424C4520464F5220414E5920434C41494D2C2044414D41474553204F52204F54484552204C494142494C4954592C0D0A494E434C5544494E4720414E592047454E455241';
wwv_flow_api.g_varchar2_table(94) := '4C2C205350454349414C2C20494E4449524543542C20494E434944454E54414C2C204F5220434F4E53455155454E5449414C0D0A44414D414745532C205748455448455220494E20414E20414354494F4E204F4620434F4E54524143542C20544F525420';
wwv_flow_api.g_varchar2_table(95) := '4F52204F54484552574953452C2041524953494E470D0A46524F4D2C204F5554204F462054484520555345204F5220494E4142494C49545920544F205553452054484520464F4E5420534F465457415245204F522046524F4D0D0A4F5448455220444541';
wwv_flow_api.g_varchar2_table(96) := '4C494E475320494E2054484520464F4E5420534F4654574152452E0D0A200D0A0D0A2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A466F6E7420';
wwv_flow_api.g_varchar2_table(97) := '417765736F6D65204353532C204C4553532C20616E6420534153532066696C6573207765726520726563656976656420756E6465722074686520666F6C6C6F77696E67206C6963656E73653A0D0A200D0A5065726D697373696F6E206973206865726562';
wwv_flow_api.g_varchar2_table(98) := '79206772616E7465642C2066726565206F66206368617267652C20746F20616E7920706572736F6E206F627461696E696E67206120636F70790D0A6F66207468697320736F66747761726520616E64206173736F63696174656420646F63756D656E7461';
wwv_flow_api.g_varchar2_table(99) := '74696F6E2066696C657320287468652022536F66747761726522292C20746F206465616C0D0A696E2074686520536F66747761726520776974686F7574207265737472696374696F6E2C20696E636C7564696E6720776974686F7574206C696D69746174';
wwv_flow_api.g_varchar2_table(100) := '696F6E20746865207269676874730D0A746F207573652C20636F70792C206D6F646966792C206D657267652C207075626C6973682C20646973747269627574652C207375626C6963656E73652C20616E642F6F722073656C6C0D0A636F70696573206F66';
wwv_flow_api.g_varchar2_table(101) := '2074686520536F6674776172652C20616E6420746F207065726D697420706572736F6E7320746F2077686F6D2074686520536F6674776172652069730D0A6675726E697368656420746F20646F20736F2C207375626A65637420746F2074686520666F6C';
wwv_flow_api.g_varchar2_table(102) := '6C6F77696E6720636F6E646974696F6E733A0D0A200D0A5468652061626F766520636F70797269676874206E6F7469636520616E642074686973207065726D697373696F6E206E6F74696365207368616C6C20626520696E636C7564656420696E0D0A61';
wwv_flow_api.g_varchar2_table(103) := '6C6C20636F70696573206F72207375627374616E7469616C20706F7274696F6E73206F662074686520536F6674776172652E0D0A200D0A54484520534F4654574152452049532050524F564944454420224153204953222C20574954484F555420574152';
wwv_flow_api.g_varchar2_table(104) := '52414E5459204F4620414E59204B494E442C2045585052455353204F520D0A494D504C4945442C20494E434C5544494E4720425554204E4F54204C494D4954454420544F205448452057415252414E54494553204F46204D45524348414E544142494C49';
wwv_flow_api.g_varchar2_table(105) := '54592C0D0A4649544E45535320464F52204120504152544943554C415220505552504F534520414E44204E4F4E494E4652494E47454D454E542E20494E204E4F204556454E54205348414C4C205448450D0A415554484F5253204F5220434F5059524947';
wwv_flow_api.g_varchar2_table(106) := '485420484F4C44455253204245204C4941424C4520464F5220414E5920434C41494D2C2044414D41474553204F52204F544845520D0A4C494142494C4954592C205748455448455220494E20414E20414354494F4E204F4620434F4E54524143542C2054';
wwv_flow_api.g_varchar2_table(107) := '4F5254204F52204F54484552574953452C2041524953494E472046524F4D2C0D0A4F5554204F46204F5220494E20434F4E4E454354494F4E20574954482054484520534F465457415245204F522054484520555345204F52204F54484552204445414C49';
wwv_flow_api.g_varchar2_table(108) := '4E475320494E0D0A54484520534F4654574152452E0D0A0D0A68747470733A2F2F6769746875622E636F6D2F6375726535332F444F4D5075726966790D0A0D0A444F4D5075726966790D0A436F707972696768742032303135204D6172696F2048656964';
wwv_flow_api.g_varchar2_table(109) := '65726963680D0A0D0A444F4D507572696679206973206672656520736F6674776172653B20796F752063616E2072656469737472696275746520697420616E642F6F72206D6F6469667920697420756E646572207468650D0A7465726D73206F66206569';
wwv_flow_api.g_varchar2_table(110) := '746865723A0D0A0D0A61292074686520417061636865204C6963656E73652056657273696F6E20322E302C206F720D0A622920746865204D6F7A696C6C61205075626C6963204C6963656E73652056657273696F6E20322E300D0A0D0A2D2D2D2D2D2D2D';
wwv_flow_api.g_varchar2_table(111) := '2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A0D0A4C6963656E73656420756E646572207468652041706163686520';
wwv_flow_api.g_varchar2_table(112) := '4C6963656E73652C2056657273696F6E20322E30202874686520224C6963656E736522293B0D0A796F75206D6179206E6F742075736520746869732066696C652065786365707420696E20636F6D706C69616E6365207769746820746865204C6963656E';
wwv_flow_api.g_varchar2_table(113) := '73652E0D0A596F75206D6179206F627461696E206120636F7079206F6620746865204C6963656E73652061740D0A0D0A20202020687474703A2F2F7777772E6170616368652E6F72672F6C6963656E7365732F4C4943454E53452D322E300D0A0D0A2020';
wwv_flow_api.g_varchar2_table(114) := '2020556E6C657373207265717569726564206279206170706C696361626C65206C6177206F722061677265656420746F20696E2077726974696E672C20736F6674776172650D0A20202020646973747269627574656420756E64657220746865204C6963';
wwv_flow_api.g_varchar2_table(115) := '656E7365206973206469737472696275746564206F6E20616E20224153204953222042415349532C0D0A20202020574954484F55542057415252414E54494553204F5220434F4E444954494F4E53204F4620414E59204B494E442C206569746865722065';
wwv_flow_api.g_varchar2_table(116) := '787072657373206F7220696D706C6965642E0D0A2020202053656520746865204C6963656E736520666F7220746865207370656369666963206C616E677561676520676F7665726E696E67207065726D697373696F6E7320616E640D0A202020206C696D';
wwv_flow_api.g_varchar2_table(117) := '69746174696F6E7320756E64657220746865204C6963656E73652E0D0A0D0A2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D';
wwv_flow_api.g_varchar2_table(118) := '2D2D2D2D2D2D2D2D0D0A4D6F7A696C6C61205075626C6963204C6963656E73652C2076657273696F6E20322E300D0A0D0A312E20446566696E6974696F6E730D0A0D0A312E312E2093436F6E7472696275746F72940D0A0D0A20202020206D65616E7320';
wwv_flow_api.g_varchar2_table(119) := '6561636820696E646976696475616C206F72206C6567616C20656E74697479207468617420637265617465732C20636F6E747269627574657320746F207468650D0A20202020206372656174696F6E206F662C206F72206F776E7320436F766572656420';
wwv_flow_api.g_varchar2_table(120) := '536F6674776172652E0D0A0D0A312E322E2093436F6E7472696275746F722056657273696F6E940D0A0D0A20202020206D65616E732074686520636F6D62696E6174696F6E206F662074686520436F6E747269627574696F6E73206F66206F7468657273';
wwv_flow_api.g_varchar2_table(121) := '2028696620616E7929207573656420627920610D0A2020202020436F6E7472696275746F7220616E64207468617420706172746963756C617220436F6E7472696275746F72927320436F6E747269627574696F6E2E0D0A0D0A312E332E2093436F6E7472';
wwv_flow_api.g_varchar2_table(122) := '69627574696F6E940D0A0D0A20202020206D65616E7320436F766572656420536F667477617265206F66206120706172746963756C617220436F6E7472696275746F722E0D0A0D0A312E342E2093436F766572656420536F667477617265940D0A0D0A20';
wwv_flow_api.g_varchar2_table(123) := '202020206D65616E7320536F7572636520436F646520466F726D20746F2077686963682074686520696E697469616C20436F6E7472696275746F7220686173206174746163686564207468650D0A20202020206E6F7469636520696E2045786869626974';
wwv_flow_api.g_varchar2_table(124) := '20412C207468652045786563757461626C6520466F726D206F66207375636820536F7572636520436F646520466F726D2C20616E640D0A20202020204D6F64696669636174696F6E73206F66207375636820536F7572636520436F646520466F726D2C20';
wwv_flow_api.g_varchar2_table(125) := '696E2065616368206361736520696E636C7564696E6720706F7274696F6E730D0A202020202074686572656F662E0D0A0D0A312E352E2093496E636F6D70617469626C652057697468205365636F6E64617279204C6963656E736573940D0A2020202020';
wwv_flow_api.g_varchar2_table(126) := '6D65616E730D0A0D0A2020202020612E20746861742074686520696E697469616C20436F6E7472696275746F722068617320617474616368656420746865206E6F746963652064657363726962656420696E0D0A20202020202020204578686962697420';
wwv_flow_api.g_varchar2_table(127) := '4220746F2074686520436F766572656420536F6674776172653B206F720D0A0D0A2020202020622E20746861742074686520436F766572656420536F66747761726520776173206D61646520617661696C61626C6520756E64657220746865207465726D';
wwv_flow_api.g_varchar2_table(128) := '73206F662076657273696F6E0D0A2020202020202020312E31206F72206561726C696572206F6620746865204C6963656E73652C20627574206E6F7420616C736F20756E64657220746865207465726D73206F6620610D0A20202020202020205365636F';
wwv_flow_api.g_varchar2_table(129) := '6E64617279204C6963656E73652E0D0A0D0A312E362E209345786563757461626C6520466F726D940D0A0D0A20202020206D65616E7320616E7920666F726D206F662074686520776F726B206F74686572207468616E20536F7572636520436F64652046';
wwv_flow_api.g_varchar2_table(130) := '6F726D2E0D0A0D0A312E372E20934C617267657220576F726B940D0A0D0A20202020206D65616E73206120776F726B207468617420636F6D62696E657320436F766572656420536F6674776172652077697468206F74686572206D6174657269616C2C20';
wwv_flow_api.g_varchar2_table(131) := '696E20612073657061726174650D0A202020202066696C65206F722066696C65732C2074686174206973206E6F7420436F766572656420536F6674776172652E0D0A0D0A312E382E20934C6963656E7365940D0A0D0A20202020206D65616E7320746869';
wwv_flow_api.g_varchar2_table(132) := '7320646F63756D656E742E0D0A0D0A312E392E20934C6963656E7361626C65940D0A0D0A20202020206D65616E7320686176696E672074686520726967687420746F206772616E742C20746F20746865206D6178696D756D20657874656E7420706F7373';
wwv_flow_api.g_varchar2_table(133) := '69626C652C2077686574686572206174207468650D0A202020202074696D65206F662074686520696E697469616C206772616E74206F722073756273657175656E746C792C20616E7920616E6420616C6C206F66207468652072696768747320636F6E76';
wwv_flow_api.g_varchar2_table(134) := '657965642062790D0A202020202074686973204C6963656E73652E0D0A0D0A312E31302E20934D6F64696669636174696F6E73940D0A0D0A20202020206D65616E7320616E79206F662074686520666F6C6C6F77696E673A0D0A0D0A2020202020612E20';
wwv_flow_api.g_varchar2_table(135) := '616E792066696C6520696E20536F7572636520436F646520466F726D207468617420726573756C74732066726F6D20616E206164646974696F6E20746F2C2064656C6574696F6E0D0A202020202020202066726F6D2C206F72206D6F6469666963617469';
wwv_flow_api.g_varchar2_table(136) := '6F6E206F662074686520636F6E74656E7473206F6620436F766572656420536F6674776172653B206F720D0A0D0A2020202020622E20616E79206E65772066696C6520696E20536F7572636520436F646520466F726D207468617420636F6E7461696E73';
wwv_flow_api.g_varchar2_table(137) := '20616E7920436F766572656420536F6674776172652E0D0A0D0A312E31312E2093506174656E7420436C61696D7394206F66206120436F6E7472696275746F720D0A0D0A2020202020206D65616E7320616E7920706174656E7420636C61696D2873292C';
wwv_flow_api.g_varchar2_table(138) := '20696E636C7564696E6720776974686F7574206C696D69746174696F6E2C206D6574686F642C2070726F636573732C0D0A202020202020616E642061707061726174757320636C61696D732C20696E20616E7920706174656E74204C6963656E7361626C';
wwv_flow_api.g_varchar2_table(139) := '65206279207375636820436F6E7472696275746F7220746861740D0A202020202020776F756C6420626520696E6672696E6765642C2062757420666F7220746865206772616E74206F6620746865204C6963656E73652C20627920746865206D616B696E';
wwv_flow_api.g_varchar2_table(140) := '672C0D0A2020202020207573696E672C2073656C6C696E672C206F66666572696E6720666F722073616C652C20686176696E67206D6164652C20696D706F72742C206F72207472616E73666572206F660D0A202020202020656974686572206974732043';
wwv_flow_api.g_varchar2_table(141) := '6F6E747269627574696F6E73206F722069747320436F6E7472696275746F722056657273696F6E2E0D0A0D0A312E31322E20935365636F6E64617279204C6963656E7365940D0A0D0A2020202020206D65616E73206569746865722074686520474E5520';
wwv_flow_api.g_varchar2_table(142) := '47656E6572616C205075626C6963204C6963656E73652C2056657273696F6E20322E302C2074686520474E55204C65737365720D0A20202020202047656E6572616C205075626C6963204C6963656E73652C2056657273696F6E20322E312C2074686520';
wwv_flow_api.g_varchar2_table(143) := '474E552041666665726F2047656E6572616C205075626C69630D0A2020202020204C6963656E73652C2056657273696F6E20332E302C206F7220616E79206C617465722076657273696F6E73206F662074686F7365206C6963656E7365732E0D0A0D0A31';
wwv_flow_api.g_varchar2_table(144) := '2E31332E2093536F7572636520436F646520466F726D940D0A0D0A2020202020206D65616E732074686520666F726D206F662074686520776F726B2070726566657272656420666F72206D616B696E67206D6F64696669636174696F6E732E0D0A0D0A31';
wwv_flow_api.g_varchar2_table(145) := '2E31342E2093596F759420286F722093596F757294290D0A0D0A2020202020206D65616E7320616E20696E646976696475616C206F722061206C6567616C20656E746974792065786572636973696E672072696768747320756E64657220746869730D0A';
wwv_flow_api.g_varchar2_table(146) := '2020202020204C6963656E73652E20466F72206C6567616C20656E7469746965732C2093596F759420696E636C7564657320616E7920656E74697479207468617420636F6E74726F6C732C2069730D0A202020202020636F6E74726F6C6C65642062792C';
wwv_flow_api.g_varchar2_table(147) := '206F7220697320756E64657220636F6D6D6F6E20636F6E74726F6C207769746820596F752E20466F7220707572706F736573206F6620746869730D0A202020202020646566696E6974696F6E2C2093636F6E74726F6C94206D65616E7320286129207468';
wwv_flow_api.g_varchar2_table(148) := '6520706F7765722C20646972656374206F7220696E6469726563742C20746F2063617573650D0A20202020202074686520646972656374696F6E206F72206D616E6167656D656E74206F66207375636820656E746974792C207768657468657220627920';
wwv_flow_api.g_varchar2_table(149) := '636F6E7472616374206F720D0A2020202020206F74686572776973652C206F7220286229206F776E657273686970206F66206D6F7265207468616E2066696674792070657263656E74202835302529206F66207468650D0A2020202020206F7574737461';
wwv_flow_api.g_varchar2_table(150) := '6E64696E6720736861726573206F722062656E6566696369616C206F776E657273686970206F66207375636820656E746974792E0D0A0D0A0D0A322E204C6963656E7365204772616E747320616E6420436F6E646974696F6E730D0A0D0A322E312E2047';
wwv_flow_api.g_varchar2_table(151) := '72616E74730D0A0D0A20202020204561636820436F6E7472696275746F7220686572656279206772616E747320596F75206120776F726C642D776964652C20726F79616C74792D667265652C0D0A20202020206E6F6E2D6578636C7573697665206C6963';
wwv_flow_api.g_varchar2_table(152) := '656E73653A0D0A0D0A2020202020612E20756E64657220696E74656C6C65637475616C2070726F70657274792072696768747320286F74686572207468616E20706174656E74206F722074726164656D61726B290D0A20202020202020204C6963656E73';
wwv_flow_api.g_varchar2_table(153) := '61626C65206279207375636820436F6E7472696275746F7220746F207573652C20726570726F647563652C206D616B6520617661696C61626C652C0D0A20202020202020206D6F646966792C20646973706C61792C20706572666F726D2C206469737472';
wwv_flow_api.g_varchar2_table(154) := '69627574652C20616E64206F7468657277697365206578706C6F6974206974730D0A2020202020202020436F6E747269627574696F6E732C20656974686572206F6E20616E20756E6D6F6469666965642062617369732C2077697468204D6F6469666963';
wwv_flow_api.g_varchar2_table(155) := '6174696F6E732C206F722061730D0A202020202020202070617274206F662061204C617267657220576F726B3B20616E640D0A0D0A2020202020622E20756E64657220506174656E7420436C61696D73206F66207375636820436F6E7472696275746F72';
wwv_flow_api.g_varchar2_table(156) := '20746F206D616B652C207573652C2073656C6C2C206F6666657220666F720D0A202020202020202073616C652C2068617665206D6164652C20696D706F72742C20616E64206F7468657277697365207472616E7366657220656974686572206974732043';
wwv_flow_api.g_varchar2_table(157) := '6F6E747269627574696F6E730D0A20202020202020206F722069747320436F6E7472696275746F722056657273696F6E2E0D0A0D0A322E322E2045666665637469766520446174650D0A0D0A2020202020546865206C6963656E736573206772616E7465';
wwv_flow_api.g_varchar2_table(158) := '6420696E2053656374696F6E20322E312077697468207265737065637420746F20616E7920436F6E747269627574696F6E206265636F6D650D0A202020202065666665637469766520666F72206561636820436F6E747269627574696F6E206F6E207468';
wwv_flow_api.g_varchar2_table(159) := '6520646174652074686520436F6E7472696275746F722066697273742064697374726962757465730D0A20202020207375636820436F6E747269627574696F6E2E0D0A0D0A322E332E204C696D69746174696F6E73206F6E204772616E742053636F7065';
wwv_flow_api.g_varchar2_table(160) := '0D0A0D0A2020202020546865206C6963656E736573206772616E74656420696E20746869732053656374696F6E20322061726520746865206F6E6C7920726967687473206772616E74656420756E64657220746869730D0A20202020204C6963656E7365';
wwv_flow_api.g_varchar2_table(161) := '2E204E6F206164646974696F6E616C20726967687473206F72206C6963656E7365732077696C6C20626520696D706C6965642066726F6D2074686520646973747269627574696F6E0D0A20202020206F72206C6963656E73696E67206F6620436F766572';
wwv_flow_api.g_varchar2_table(162) := '656420536F66747761726520756E6465722074686973204C6963656E73652E204E6F74776974687374616E64696E672053656374696F6E0D0A2020202020322E312862292061626F76652C206E6F20706174656E74206C6963656E736520697320677261';
wwv_flow_api.g_varchar2_table(163) := '6E746564206279206120436F6E7472696275746F723A0D0A0D0A2020202020612E20666F7220616E7920636F64652074686174206120436F6E7472696275746F72206861732072656D6F7665642066726F6D20436F766572656420536F6674776172653B';
wwv_flow_api.g_varchar2_table(164) := '206F720D0A0D0A2020202020622E20666F7220696E6672696E67656D656E7473206361757365642062793A2028692920596F757220616E6420616E79206F7468657220746869726420706172747992730D0A20202020202020206D6F6469666963617469';
wwv_flow_api.g_varchar2_table(165) := '6F6E73206F6620436F766572656420536F6674776172652C206F7220286969292074686520636F6D62696E6174696F6E206F66206974730D0A2020202020202020436F6E747269627574696F6E732077697468206F7468657220736F6674776172652028';
wwv_flow_api.g_varchar2_table(166) := '6578636570742061732070617274206F662069747320436F6E7472696275746F720D0A202020202020202056657273696F6E293B206F720D0A0D0A2020202020632E20756E64657220506174656E7420436C61696D7320696E6672696E67656420627920';
wwv_flow_api.g_varchar2_table(167) := '436F766572656420536F66747761726520696E2074686520616273656E6365206F66206974730D0A2020202020202020436F6E747269627574696F6E732E0D0A0D0A202020202054686973204C6963656E736520646F6573206E6F74206772616E742061';
wwv_flow_api.g_varchar2_table(168) := '6E792072696768747320696E207468652074726164656D61726B732C2073657276696365206D61726B732C206F720D0A20202020206C6F676F73206F6620616E7920436F6E7472696275746F722028657863657074206173206D6179206265206E656365';
wwv_flow_api.g_varchar2_table(169) := '737361727920746F20636F6D706C792077697468207468650D0A20202020206E6F7469636520726571756972656D656E747320696E2053656374696F6E20332E34292E0D0A0D0A322E342E2053756273657175656E74204C6963656E7365730D0A0D0A20';
wwv_flow_api.g_varchar2_table(170) := '202020204E6F20436F6E7472696275746F72206D616B6573206164646974696F6E616C206772616E7473206173206120726573756C74206F6620596F75722063686F69636520746F0D0A2020202020646973747269627574652074686520436F76657265';
wwv_flow_api.g_varchar2_table(171) := '6420536F66747761726520756E64657220612073756273657175656E742076657273696F6E206F662074686973204C6963656E73650D0A2020202020287365652053656374696F6E2031302E3229206F7220756E64657220746865207465726D73206F66';
wwv_flow_api.g_varchar2_table(172) := '2061205365636F6E64617279204C6963656E736520286966207065726D69747465640D0A2020202020756E64657220746865207465726D73206F662053656374696F6E20332E33292E0D0A0D0A322E352E20526570726573656E746174696F6E0D0A0D0A';
wwv_flow_api.g_varchar2_table(173) := '20202020204561636820436F6E7472696275746F7220726570726573656E747320746861742074686520436F6E7472696275746F722062656C69657665732069747320436F6E747269627574696F6E730D0A202020202061726520697473206F72696769';
wwv_flow_api.g_varchar2_table(174) := '6E616C206372656174696F6E287329206F72206974206861732073756666696369656E742072696768747320746F206772616E74207468650D0A202020202072696768747320746F2069747320436F6E747269627574696F6E7320636F6E766579656420';
wwv_flow_api.g_varchar2_table(175) := '62792074686973204C6963656E73652E0D0A0D0A322E362E2046616972205573650D0A0D0A202020202054686973204C6963656E7365206973206E6F7420696E74656E64656420746F206C696D697420616E792072696768747320596F75206861766520';
wwv_flow_api.g_varchar2_table(176) := '756E646572206170706C696361626C650D0A2020202020636F7079726967687420646F637472696E6573206F662066616972207573652C2066616972206465616C696E672C206F72206F74686572206571756976616C656E74732E0D0A0D0A322E372E20';
wwv_flow_api.g_varchar2_table(177) := '436F6E646974696F6E730D0A0D0A202020202053656374696F6E7320332E312C20332E322C20332E332C20616E6420332E342061726520636F6E646974696F6E73206F6620746865206C6963656E736573206772616E74656420696E0D0A202020202053';
wwv_flow_api.g_varchar2_table(178) := '656374696F6E20322E312E0D0A0D0A0D0A332E20526573706F6E736962696C69746965730D0A0D0A332E312E20446973747269627574696F6E206F6620536F7572636520466F726D0D0A0D0A2020202020416C6C20646973747269627574696F6E206F66';
wwv_flow_api.g_varchar2_table(179) := '20436F766572656420536F66747761726520696E20536F7572636520436F646520466F726D2C20696E636C7564696E6720616E790D0A20202020204D6F64696669636174696F6E73207468617420596F7520637265617465206F7220746F207768696368';
wwv_flow_api.g_varchar2_table(180) := '20596F7520636F6E747269627574652C206D75737420626520756E646572207468650D0A20202020207465726D73206F662074686973204C6963656E73652E20596F75206D75737420696E666F726D20726563697069656E747320746861742074686520';
wwv_flow_api.g_varchar2_table(181) := '536F7572636520436F646520466F726D0D0A20202020206F662074686520436F766572656420536F66747761726520697320676F7665726E656420627920746865207465726D73206F662074686973204C6963656E73652C20616E6420686F770D0A2020';
wwv_flow_api.g_varchar2_table(182) := '202020746865792063616E206F627461696E206120636F7079206F662074686973204C6963656E73652E20596F75206D6179206E6F7420617474656D707420746F20616C746572206F720D0A202020202072657374726963742074686520726563697069';
wwv_flow_api.g_varchar2_table(183) := '656E7473922072696768747320696E2074686520536F7572636520436F646520466F726D2E0D0A0D0A332E322E20446973747269627574696F6E206F662045786563757461626C6520466F726D0D0A0D0A2020202020496620596F752064697374726962';
wwv_flow_api.g_varchar2_table(184) := '75746520436F766572656420536F66747761726520696E2045786563757461626C6520466F726D207468656E3A0D0A0D0A2020202020612E207375636820436F766572656420536F667477617265206D75737420616C736F206265206D61646520617661';
wwv_flow_api.g_varchar2_table(185) := '696C61626C6520696E20536F7572636520436F646520466F726D2C0D0A202020202020202061732064657363726962656420696E2053656374696F6E20332E312C20616E6420596F75206D75737420696E666F726D20726563697069656E7473206F6620';
wwv_flow_api.g_varchar2_table(186) := '7468650D0A202020202020202045786563757461626C6520466F726D20686F7720746865792063616E206F627461696E206120636F7079206F66207375636820536F7572636520436F646520466F726D2062790D0A2020202020202020726561736F6E61';
wwv_flow_api.g_varchar2_table(187) := '626C65206D65616E7320696E20612074696D656C79206D616E6E65722C206174206120636861726765206E6F206D6F7265207468616E2074686520636F73740D0A20202020202020206F6620646973747269627574696F6E20746F207468652072656369';
wwv_flow_api.g_varchar2_table(188) := '7069656E743B20616E640D0A0D0A2020202020622E20596F75206D6179206469737472696275746520737563682045786563757461626C6520466F726D20756E64657220746865207465726D73206F662074686973204C6963656E73652C0D0A20202020';
wwv_flow_api.g_varchar2_table(189) := '202020206F72207375626C6963656E736520697420756E64657220646966666572656E74207465726D732C2070726F7669646564207468617420746865206C6963656E736520666F720D0A20202020202020207468652045786563757461626C6520466F';
wwv_flow_api.g_varchar2_table(190) := '726D20646F6573206E6F7420617474656D707420746F206C696D6974206F7220616C7465722074686520726563697069656E7473920D0A202020202020202072696768747320696E2074686520536F7572636520436F646520466F726D20756E64657220';
wwv_flow_api.g_varchar2_table(191) := '74686973204C6963656E73652E0D0A0D0A332E332E20446973747269627574696F6E206F662061204C617267657220576F726B0D0A0D0A2020202020596F75206D61792063726561746520616E6420646973747269627574652061204C61726765722057';
wwv_flow_api.g_varchar2_table(192) := '6F726B20756E646572207465726D73206F6620596F75722063686F6963652C0D0A202020202070726F7669646564207468617420596F7520616C736F20636F6D706C7920776974682074686520726571756972656D656E7473206F662074686973204C69';
wwv_flow_api.g_varchar2_table(193) := '63656E736520666F72207468650D0A2020202020436F766572656420536F6674776172652E20496620746865204C617267657220576F726B206973206120636F6D62696E6174696F6E206F6620436F766572656420536F6674776172650D0A2020202020';
wwv_flow_api.g_varchar2_table(194) := '77697468206120776F726B20676F7665726E6564206279206F6E65206F72206D6F7265205365636F6E64617279204C6963656E7365732C20616E642074686520436F76657265640D0A2020202020536F667477617265206973206E6F7420496E636F6D70';
wwv_flow_api.g_varchar2_table(195) := '617469626C652057697468205365636F6E64617279204C6963656E7365732C2074686973204C6963656E7365207065726D6974730D0A2020202020596F7520746F206164646974696F6E616C6C792064697374726962757465207375636820436F766572';
wwv_flow_api.g_varchar2_table(196) := '656420536F66747761726520756E64657220746865207465726D73206F660D0A202020202073756368205365636F6E64617279204C6963656E73652873292C20736F20746861742074686520726563697069656E74206F6620746865204C617267657220';
wwv_flow_api.g_varchar2_table(197) := '576F726B206D61792C2061740D0A20202020207468656972206F7074696F6E2C206675727468657220646973747269627574652074686520436F766572656420536F66747761726520756E64657220746865207465726D73206F660D0A20202020206569';
wwv_flow_api.g_varchar2_table(198) := '746865722074686973204C6963656E7365206F722073756368205365636F6E64617279204C6963656E73652873292E0D0A0D0A332E342E204E6F74696365730D0A0D0A2020202020596F75206D6179206E6F742072656D6F7665206F7220616C74657220';
wwv_flow_api.g_varchar2_table(199) := '746865207375627374616E6365206F6620616E79206C6963656E7365206E6F74696365732028696E636C7564696E670D0A2020202020636F70797269676874206E6F74696365732C20706174656E74206E6F74696365732C20646973636C61696D657273';
wwv_flow_api.g_varchar2_table(200) := '206F662077617272616E74792C206F72206C696D69746174696F6E730D0A20202020206F66206C696162696C6974792920636F6E7461696E65642077697468696E2074686520536F7572636520436F646520466F726D206F662074686520436F76657265';
wwv_flow_api.g_varchar2_table(201) := '640D0A2020202020536F6674776172652C20657863657074207468617420596F75206D617920616C74657220616E79206C6963656E7365206E6F746963657320746F2074686520657874656E740D0A2020202020726571756972656420746F2072656D65';
wwv_flow_api.g_varchar2_table(202) := '6479206B6E6F776E206661637475616C20696E616363757261636965732E0D0A0D0A332E352E204170706C69636174696F6E206F66204164646974696F6E616C205465726D730D0A0D0A2020202020596F75206D61792063686F6F736520746F206F6666';
wwv_flow_api.g_varchar2_table(203) := '65722C20616E6420746F2063686172676520612066656520666F722C2077617272616E74792C20737570706F72742C0D0A2020202020696E64656D6E697479206F72206C696162696C697479206F626C69676174696F6E7320746F206F6E65206F72206D';
wwv_flow_api.g_varchar2_table(204) := '6F726520726563697069656E7473206F6620436F76657265640D0A2020202020536F6674776172652E20486F77657665722C20596F75206D617920646F20736F206F6E6C79206F6E20596F7572206F776E20626568616C662C20616E64206E6F74206F6E';
wwv_flow_api.g_varchar2_table(205) := '20626568616C660D0A20202020206F6620616E7920436F6E7472696275746F722E20596F75206D757374206D616B65206974206162736F6C7574656C7920636C656172207468617420616E7920737563680D0A202020202077617272616E74792C207375';
wwv_flow_api.g_varchar2_table(206) := '70706F72742C20696E64656D6E6974792C206F72206C696162696C697479206F626C69676174696F6E206973206F66666572656420627920596F750D0A2020202020616C6F6E652C20616E6420596F752068657265627920616772656520746F20696E64';
wwv_flow_api.g_varchar2_table(207) := '656D6E69667920657665727920436F6E7472696275746F7220666F7220616E790D0A20202020206C696162696C69747920696E637572726564206279207375636820436F6E7472696275746F72206173206120726573756C74206F662077617272616E74';
wwv_flow_api.g_varchar2_table(208) := '792C20737570706F72742C0D0A2020202020696E64656D6E697479206F72206C696162696C697479207465726D7320596F75206F666665722E20596F75206D617920696E636C756465206164646974696F6E616C0D0A2020202020646973636C61696D65';
wwv_flow_api.g_varchar2_table(209) := '7273206F662077617272616E747920616E64206C696D69746174696F6E73206F66206C696162696C69747920737065636966696320746F20616E790D0A20202020206A7572697364696374696F6E2E0D0A0D0A342E20496E6162696C69747920746F2043';
wwv_flow_api.g_varchar2_table(210) := '6F6D706C792044756520746F2053746174757465206F7220526567756C6174696F6E0D0A0D0A202020496620697420697320696D706F737369626C6520666F7220596F7520746F20636F6D706C79207769746820616E79206F6620746865207465726D73';
wwv_flow_api.g_varchar2_table(211) := '206F662074686973204C6963656E73650D0A20202077697468207265737065637420746F20736F6D65206F7220616C6C206F662074686520436F766572656420536F6674776172652064756520746F20737461747574652C206A7564696369616C0D0A20';
wwv_flow_api.g_varchar2_table(212) := '20206F726465722C206F7220726567756C6174696F6E207468656E20596F75206D7573743A2028612920636F6D706C79207769746820746865207465726D73206F662074686973204C6963656E73650D0A202020746F20746865206D6178696D756D2065';
wwv_flow_api.g_varchar2_table(213) := '7874656E7420706F737369626C653B20616E642028622920646573637269626520746865206C696D69746174696F6E7320616E642074686520636F64650D0A20202074686579206166666563742E2053756368206465736372697074696F6E206D757374';
wwv_flow_api.g_varchar2_table(214) := '20626520706C6163656420696E206120746578742066696C6520696E636C75646564207769746820616C6C0D0A202020646973747269627574696F6E73206F662074686520436F766572656420536F66747761726520756E6465722074686973204C6963';
wwv_flow_api.g_varchar2_table(215) := '656E73652E2045786365707420746F207468650D0A202020657874656E742070726F686962697465642062792073746174757465206F7220726567756C6174696F6E2C2073756368206465736372697074696F6E206D7573742062650D0A202020737566';
wwv_flow_api.g_varchar2_table(216) := '66696369656E746C792064657461696C656420666F72206120726563697069656E74206F66206F7264696E61727920736B696C6C20746F2062652061626C6520746F0D0A202020756E6465727374616E642069742E0D0A0D0A352E205465726D696E6174';
wwv_flow_api.g_varchar2_table(217) := '696F6E0D0A0D0A352E312E2054686520726967687473206772616E74656420756E6465722074686973204C6963656E73652077696C6C207465726D696E617465206175746F6D61746963616C6C7920696620596F750D0A20202020206661696C20746F20';
wwv_flow_api.g_varchar2_table(218) := '636F6D706C79207769746820616E79206F6620697473207465726D732E20486F77657665722C20696620596F75206265636F6D6520636F6D706C69616E742C0D0A20202020207468656E2074686520726967687473206772616E74656420756E64657220';
wwv_flow_api.g_varchar2_table(219) := '74686973204C6963656E73652066726F6D206120706172746963756C617220436F6E7472696275746F720D0A2020202020617265207265696E737461746564202861292070726F766973696F6E616C6C792C20756E6C65737320616E6420756E74696C20';
wwv_flow_api.g_varchar2_table(220) := '7375636820436F6E7472696275746F720D0A20202020206578706C696369746C7920616E642066696E616C6C79207465726D696E6174657320596F7572206772616E74732C20616E6420286229206F6E20616E206F6E676F696E672062617369732C0D0A';
wwv_flow_api.g_varchar2_table(221) := '20202020206966207375636820436F6E7472696275746F72206661696C7320746F206E6F7469667920596F75206F6620746865206E6F6E2D636F6D706C69616E636520627920736F6D650D0A2020202020726561736F6E61626C65206D65616E73207072';
wwv_flow_api.g_varchar2_table(222) := '696F7220746F203630206461797320616674657220596F75206861766520636F6D65206261636B20696E746F20636F6D706C69616E63652E0D0A20202020204D6F72656F7665722C20596F7572206772616E74732066726F6D206120706172746963756C';
wwv_flow_api.g_varchar2_table(223) := '617220436F6E7472696275746F7220617265207265696E737461746564206F6E20616E0D0A20202020206F6E676F696E67206261736973206966207375636820436F6E7472696275746F72206E6F74696669657320596F75206F6620746865206E6F6E2D';
wwv_flow_api.g_varchar2_table(224) := '636F6D706C69616E63652062790D0A2020202020736F6D6520726561736F6E61626C65206D65616E732C2074686973206973207468652066697273742074696D6520596F752068617665207265636569766564206E6F74696365206F660D0A2020202020';
wwv_flow_api.g_varchar2_table(225) := '6E6F6E2D636F6D706C69616E636520776974682074686973204C6963656E73652066726F6D207375636820436F6E7472696275746F722C20616E6420596F75206265636F6D650D0A2020202020636F6D706C69616E74207072696F7220746F2033302064';
wwv_flow_api.g_varchar2_table(226) := '61797320616674657220596F75722072656365697074206F6620746865206E6F746963652E0D0A0D0A352E322E20496620596F7520696E697469617465206C697469676174696F6E20616761696E737420616E7920656E74697479206279206173736572';
wwv_flow_api.g_varchar2_table(227) := '74696E67206120706174656E740D0A2020202020696E6672696E67656D656E7420636C61696D20286578636C7564696E67206465636C617261746F7279206A7564676D656E7420616374696F6E732C20636F756E7465722D636C61696D732C0D0A202020';
wwv_flow_api.g_varchar2_table(228) := '2020616E642063726F73732D636C61696D732920616C6C6567696E672074686174206120436F6E7472696275746F722056657273696F6E206469726563746C79206F720D0A2020202020696E6469726563746C7920696E6672696E67657320616E792070';
wwv_flow_api.g_varchar2_table(229) := '6174656E742C207468656E2074686520726967687473206772616E74656420746F20596F7520627920616E7920616E640D0A2020202020616C6C20436F6E7472696275746F727320666F722074686520436F766572656420536F66747761726520756E64';
wwv_flow_api.g_varchar2_table(230) := '65722053656374696F6E20322E31206F662074686973204C6963656E73650D0A20202020207368616C6C207465726D696E6174652E0D0A0D0A352E332E20496E20746865206576656E74206F66207465726D696E6174696F6E20756E6465722053656374';
wwv_flow_api.g_varchar2_table(231) := '696F6E7320352E31206F7220352E322061626F76652C20616C6C20656E6420757365720D0A20202020206C6963656E73652061677265656D656E747320286578636C7564696E67206469737472696275746F727320616E6420726573656C6C6572732920';
wwv_flow_api.g_varchar2_table(232) := '77686963682068617665206265656E0D0A202020202076616C69646C79206772616E74656420627920596F75206F7220596F7572206469737472696275746F727320756E6465722074686973204C6963656E7365207072696F7220746F0D0A2020202020';
wwv_flow_api.g_varchar2_table(233) := '7465726D696E6174696F6E207368616C6C2073757276697665207465726D696E6174696F6E2E0D0A0D0A362E20446973636C61696D6572206F662057617272616E74790D0A0D0A202020436F766572656420536F6674776172652069732070726F766964';
wwv_flow_api.g_varchar2_table(234) := '656420756E6465722074686973204C6963656E7365206F6E20616E20936173206973942062617369732C20776974686F75740D0A20202077617272616E7479206F6620616E79206B696E642C20656974686572206578707265737365642C20696D706C69';
wwv_flow_api.g_varchar2_table(235) := '65642C206F72207374617475746F72792C20696E636C7564696E672C0D0A202020776974686F7574206C696D69746174696F6E2C2077617272616E7469657320746861742074686520436F766572656420536F6674776172652069732066726565206F66';
wwv_flow_api.g_varchar2_table(236) := '20646566656374732C0D0A2020206D65726368616E7461626C652C2066697420666F72206120706172746963756C617220707572706F7365206F72206E6F6E2D696E6672696E67696E672E2054686520656E746972650D0A2020207269736B2061732074';
wwv_flow_api.g_varchar2_table(237) := '6F20746865207175616C69747920616E6420706572666F726D616E6365206F662074686520436F766572656420536F667477617265206973207769746820596F752E0D0A20202053686F756C6420616E7920436F766572656420536F6674776172652070';
wwv_flow_api.g_varchar2_table(238) := '726F76652064656665637469766520696E20616E7920726573706563742C20596F7520286E6F7420616E790D0A202020436F6E7472696275746F722920617373756D652074686520636F7374206F6620616E79206E656365737361727920736572766963';
wwv_flow_api.g_varchar2_table(239) := '696E672C207265706169722C206F720D0A202020636F7272656374696F6E2E205468697320646973636C61696D6572206F662077617272616E747920636F6E737469747574657320616E20657373656E7469616C2070617274206F6620746869730D0A20';
wwv_flow_api.g_varchar2_table(240) := '20204C6963656E73652E204E6F20757365206F662020616E7920436F766572656420536F66747761726520697320617574686F72697A656420756E6465722074686973204C6963656E73650D0A20202065786365707420756E6465722074686973206469';
wwv_flow_api.g_varchar2_table(241) := '73636C61696D65722E0D0A0D0A372E204C696D69746174696F6E206F66204C696162696C6974790D0A0D0A202020556E646572206E6F2063697263756D7374616E63657320616E6420756E646572206E6F206C6567616C207468656F72792C2077686574';
wwv_flow_api.g_varchar2_table(242) := '68657220746F72742028696E636C7564696E670D0A2020206E65676C6967656E6365292C20636F6E74726163742C206F72206F74686572776973652C207368616C6C20616E7920436F6E7472696275746F722C206F7220616E796F6E652077686F0D0A20';
wwv_flow_api.g_varchar2_table(243) := '2020646973747269627574657320436F766572656420536F667477617265206173207065726D69747465642061626F76652C206265206C6961626C6520746F20596F7520666F7220616E790D0A2020206469726563742C20696E6469726563742C207370';
wwv_flow_api.g_varchar2_table(244) := '656369616C2C20696E636964656E74616C2C206F7220636F6E73657175656E7469616C2064616D61676573206F6620616E790D0A20202063686172616374657220696E636C7564696E672C20776974686F7574206C696D69746174696F6E2C2064616D61';
wwv_flow_api.g_varchar2_table(245) := '67657320666F72206C6F73742070726F666974732C206C6F7373206F660D0A202020676F6F6477696C6C2C20776F726B2073746F70706167652C20636F6D7075746572206661696C757265206F72206D616C66756E6374696F6E2C206F7220616E792061';
wwv_flow_api.g_varchar2_table(246) := '6E6420616C6C0D0A2020206F7468657220636F6D6D65726369616C2064616D61676573206F72206C6F737365732C206576656E2069662073756368207061727479207368616C6C2068617665206265656E0D0A202020696E666F726D6564206F66207468';
wwv_flow_api.g_varchar2_table(247) := '6520706F73736962696C697479206F6620737563682064616D616765732E2054686973206C696D69746174696F6E206F66206C696162696C6974790D0A2020207368616C6C206E6F74206170706C7920746F206C696162696C69747920666F7220646561';
wwv_flow_api.g_varchar2_table(248) := '7468206F7220706572736F6E616C20696E6A75727920726573756C74696E672066726F6D20737563680D0A20202070617274799273206E65676C6967656E636520746F2074686520657874656E74206170706C696361626C65206C61772070726F686962';
wwv_flow_api.g_varchar2_table(249) := '6974732073756368206C696D69746174696F6E2E0D0A202020536F6D65206A7572697364696374696F6E7320646F206E6F7420616C6C6F7720746865206578636C7573696F6E206F72206C696D69746174696F6E206F6620696E636964656E74616C206F';
wwv_flow_api.g_varchar2_table(250) := '720D0A202020636F6E73657175656E7469616C2064616D616765732C20736F2074686973206578636C7573696F6E20616E64206C696D69746174696F6E206D6179206E6F74206170706C7920746F20596F752E0D0A0D0A382E204C697469676174696F6E';
wwv_flow_api.g_varchar2_table(251) := '0D0A0D0A202020416E79206C697469676174696F6E2072656C6174696E6720746F2074686973204C6963656E7365206D61792062652062726F75676874206F6E6C7920696E2074686520636F75727473206F660D0A20202061206A757269736469637469';
wwv_flow_api.g_varchar2_table(252) := '6F6E2077686572652074686520646566656E64616E74206D61696E7461696E7320697473207072696E636970616C20706C616365206F6620627573696E6573730D0A202020616E642073756368206C697469676174696F6E207368616C6C20626520676F';
wwv_flow_api.g_varchar2_table(253) := '7665726E6564206279206C617773206F662074686174206A7572697364696374696F6E2C20776974686F75740D0A2020207265666572656E636520746F2069747320636F6E666C6963742D6F662D6C61772070726F766973696F6E732E204E6F7468696E';
wwv_flow_api.g_varchar2_table(254) := '6720696E20746869732053656374696F6E207368616C6C0D0A20202070726576656E7420612070617274799273206162696C69747920746F206272696E672063726F73732D636C61696D73206F7220636F756E7465722D636C61696D732E0D0A0D0A392E';
wwv_flow_api.g_varchar2_table(255) := '204D697363656C6C616E656F75730D0A0D0A20202054686973204C6963656E736520726570726573656E74732074686520636F6D706C6574652061677265656D656E7420636F6E6365726E696E6720746865207375626A656374206D61747465720D0A20';
wwv_flow_api.g_varchar2_table(256) := '2020686572656F662E20496620616E792070726F766973696F6E206F662074686973204C6963656E73652069732068656C6420746F20626520756E656E666F72636561626C652C20737563680D0A20202070726F766973696F6E207368616C6C20626520';
wwv_flow_api.g_varchar2_table(257) := '7265666F726D6564206F6E6C7920746F2074686520657874656E74206E656365737361727920746F206D616B652069740D0A202020656E666F72636561626C652E20416E79206C6177206F7220726567756C6174696F6E2077686963682070726F766964';
wwv_flow_api.g_varchar2_table(258) := '6573207468617420746865206C616E6775616765206F6620610D0A202020636F6E7472616374207368616C6C20626520636F6E73747275656420616761696E7374207468652064726166746572207368616C6C206E6F74206265207573656420746F2063';
wwv_flow_api.g_varchar2_table(259) := '6F6E73747275650D0A20202074686973204C6963656E736520616761696E7374206120436F6E7472696275746F722E0D0A0D0A0D0A31302E2056657273696F6E73206F6620746865204C6963656E73650D0A0D0A31302E312E204E65772056657273696F';
wwv_flow_api.g_varchar2_table(260) := '6E730D0A0D0A2020202020204D6F7A696C6C6120466F756E646174696F6E20697320746865206C6963656E736520737465776172642E204578636570742061732070726F766964656420696E2053656374696F6E0D0A20202020202031302E332C206E6F';
wwv_flow_api.g_varchar2_table(261) := '206F6E65206F74686572207468616E20746865206C6963656E73652073746577617264206861732074686520726967687420746F206D6F64696679206F720D0A2020202020207075626C697368206E65772076657273696F6E73206F662074686973204C';
wwv_flow_api.g_varchar2_table(262) := '6963656E73652E20456163682076657273696F6E2077696C6C20626520676976656E20610D0A20202020202064697374696E6775697368696E672076657273696F6E206E756D6265722E0D0A0D0A31302E322E20456666656374206F66204E6577205665';
wwv_flow_api.g_varchar2_table(263) := '7273696F6E730D0A0D0A202020202020596F75206D617920646973747269627574652074686520436F766572656420536F66747761726520756E64657220746865207465726D73206F66207468652076657273696F6E206F660D0A202020202020746865';
wwv_flow_api.g_varchar2_table(264) := '204C6963656E736520756E64657220776869636820596F75206F726967696E616C6C792072656365697665642074686520436F766572656420536F6674776172652C206F720D0A202020202020756E64657220746865207465726D73206F6620616E7920';
wwv_flow_api.g_varchar2_table(265) := '73756273657175656E742076657273696F6E207075626C697368656420627920746865206C6963656E73650D0A202020202020737465776172642E0D0A0D0A31302E332E204D6F6469666965642056657273696F6E730D0A0D0A20202020202049662079';
wwv_flow_api.g_varchar2_table(266) := '6F752063726561746520736F667477617265206E6F7420676F7665726E65642062792074686973204C6963656E73652C20616E6420796F752077616E7420746F0D0A2020202020206372656174652061206E6577206C6963656E736520666F7220737563';
wwv_flow_api.g_varchar2_table(267) := '6820736F6674776172652C20796F75206D61792063726561746520616E64207573652061206D6F6469666965640D0A20202020202076657273696F6E206F662074686973204C6963656E736520696620796F752072656E616D6520746865206C6963656E';
wwv_flow_api.g_varchar2_table(268) := '736520616E642072656D6F766520616E790D0A2020202020207265666572656E63657320746F20746865206E616D65206F6620746865206C6963656E73652073746577617264202865786365707420746F206E6F7465207468617420737563680D0A2020';
wwv_flow_api.g_varchar2_table(269) := '202020206D6F646966696564206C6963656E736520646966666572732066726F6D2074686973204C6963656E7365292E0D0A0D0A31302E342E20446973747269627574696E6720536F7572636520436F646520466F726D207468617420697320496E636F';
wwv_flow_api.g_varchar2_table(270) := '6D70617469626C652057697468205365636F6E64617279204C6963656E7365730D0A202020202020496620596F752063686F6F736520746F206469737472696275746520536F7572636520436F646520466F726D207468617420697320496E636F6D7061';
wwv_flow_api.g_varchar2_table(271) := '7469626C6520576974680D0A2020202020205365636F6E64617279204C6963656E73657320756E64657220746865207465726D73206F6620746869732076657273696F6E206F6620746865204C6963656E73652C207468650D0A2020202020206E6F7469';
wwv_flow_api.g_varchar2_table(272) := '63652064657363726962656420696E20457868696269742042206F662074686973204C6963656E7365206D7573742062652061747461636865642E0D0A0D0A457868696269742041202D20536F7572636520436F646520466F726D204C6963656E736520';
wwv_flow_api.g_varchar2_table(273) := '4E6F746963650D0A0D0A2020202020205468697320536F7572636520436F646520466F726D206973207375626A65637420746F207468650D0A2020202020207465726D73206F6620746865204D6F7A696C6C61205075626C6963204C6963656E73652C20';
wwv_flow_api.g_varchar2_table(274) := '762E0D0A202020202020322E302E204966206120636F7079206F6620746865204D504C20776173206E6F740D0A2020202020206469737472696275746564207769746820746869732066696C652C20596F752063616E0D0A2020202020206F627461696E';
wwv_flow_api.g_varchar2_table(275) := '206F6E652061740D0A202020202020687474703A2F2F6D6F7A696C6C612E6F72672F4D504C2F322E302F2E0D0A0D0A4966206974206973206E6F7420706F737369626C65206F7220646573697261626C6520746F2070757420746865206E6F7469636520';
wwv_flow_api.g_varchar2_table(276) := '696E206120706172746963756C61722066696C652C207468656E0D0A596F75206D617920696E636C75646520746865206E6F7469636520696E2061206C6F636174696F6E2028737563682061732061204C4943454E53452066696C6520696E2061207265';
wwv_flow_api.g_varchar2_table(277) := '6C6576616E740D0A6469726563746F727929207768657265206120726563697069656E7420776F756C64206265206C696B656C7920746F206C6F6F6B20666F7220737563682061206E6F746963652E0D0A0D0A596F75206D617920616464206164646974';
wwv_flow_api.g_varchar2_table(278) := '696F6E616C206163637572617465206E6F7469636573206F6620636F70797269676874206F776E6572736869702E0D0A0D0A457868696269742042202D2093496E636F6D70617469626C652057697468205365636F6E64617279204C6963656E73657394';
wwv_flow_api.g_varchar2_table(279) := '204E6F746963650D0A0D0A2020202020205468697320536F7572636520436F646520466F726D2069732093496E636F6D70617469626C650D0A20202020202057697468205365636F6E64617279204C6963656E736573942C20617320646566696E656420';
wwv_flow_api.g_varchar2_table(280) := '62790D0A202020202020746865204D6F7A696C6C61205075626C6963204C6963656E73652C20762E20322E302E0D0A0D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(31959347117918308340)
,p_plugin_id=>wwv_flow_api.id(50649497605321085949)
,p_file_name=>'LICENSE4LIBS'
,p_mime_type=>'application/octet-stream'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(7689638483089474)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(7552960589089322)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(7653343109089427)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(7689359949089472)
,p_nav_bar_list_template_id=>wwv_flow_api.id(7656190812089430)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(7689638483089474)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'TCHFEC ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200613073645'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(7689638483089474)
,p_name=>'Dashboard'
,p_alias=>'HOME'
,p_step_title=>'The Clechuderfax E-chain'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200618121002'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3726414860135148)
,p_plug_name=>'Revenue Generated By Products In Current Month'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(7606516196089385)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select extract(month from payment_date) "Month", product_name "Product Name", sum(bp.quantity * p.rate) "Earning"',
'from shops s,',
'     product_categories pc,',
'     products p,',
'     baskets b,',
'     basket_products bp,',
'     payments',
'where s.shop_id = pc.shop_id',
'  and pc.product_category_id = p.product_category_id',
'  and p.product_id = bp.product_id',
'  and b.basket_id = bp.basket_id',
'  and payments.BASKET_ID = b.BASKET_ID',
'  and active = 0',
'  and s.trader_id in (select t.trader_id from users u, traders t where u.user_id= t.user_id and upper(u.email) = v(''APP_USER''))',
'  and extract(month from payment_date) = extract(month from localtimestamp)',
'group by extract(month from payment_date), product_name;'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(3726545067135149)
,p_region_id=>wwv_flow_api.id(3726414860135148)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(3726652768135150)
,p_chart_id=>wwv_flow_api.id(3726545067135149)
,p_seq=>10
,p_name=>'Total Revenue In GBP'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select extract(month from payment_date) "Month", product_name "Product Name", sum(bp.quantity * p.rate) "Earning"',
'from shops s,',
'     product_categories pc,',
'     products p,',
'     baskets b,',
'     basket_products bp,',
'     payments',
'where s.shop_id = pc.shop_id',
'  and pc.product_category_id = p.product_category_id',
'  and p.product_id = bp.product_id',
'  and b.basket_id = bp.basket_id',
'  and payments.BASKET_ID = b.BASKET_ID',
'  and active = 0',
'  and s.trader_id in (select t.trader_id from users u, traders t where u.user_id= t.user_id and upper(u.email) = v(''APP_USER''))',
'  and extract(month from payment_date) = extract(month from localtimestamp)',
'group by extract(month from payment_date), product_name;'))
,p_items_value_column_name=>'Earning'
,p_items_label_column_name=>'Product Name'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(6777154990145401)
,p_chart_id=>wwv_flow_api.id(3726545067135149)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Product'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(6777236722145402)
,p_chart_id=>wwv_flow_api.id(3726545067135149)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Total Revenue'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7700597001089697)
,p_plug_name=>'<div style="display:flex; align-items:center; "><img src=" https://bit.ly/3e1XlAO" height="100"> </div>'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>wwv_flow_api.id(7596858465089378)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11454374687167777)
,p_plug_name=>'Monthly orders'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(7606516196089385)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(11454510872167778)
,p_region_id=>wwv_flow_api.id(11454374687167777)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(11454547751167779)
,p_chart_id=>wwv_flow_api.id(11454510872167778)
,p_seq=>10
,p_name=>'Number of orders'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char( payment_date,''Month'') "Month", count(extract(month from payment_date)) "Orders"',
'from shops s,',
'     product_categories pc,',
'     products p,',
'     baskets b,',
'     basket_products bp,',
'     payments',
'where s.shop_id = pc.shop_id',
'  and pc.product_category_id = p.product_category_id',
'  and p.product_id = bp.product_id',
'  and b.basket_id = bp.basket_id',
'  and payments.BASKET_ID = b.BASKET_ID',
'  and active = 0',
'  and s.trader_id in (select t.trader_id from users u, traders t where u.user_id= t.user_id and upper(u.email) = v(''APP_USER''))',
'group by to_char( payment_date,''Month'');'))
,p_items_value_column_name=>'Orders'
,p_items_label_column_name=>'Month'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(11454725023167780)
,p_chart_id=>wwv_flow_api.id(11454510872167778)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Month'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(11454758723167781)
,p_chart_id=>wwv_flow_api.id(11454510872167778)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Number of orders'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11455402055167787)
,p_plug_name=>'Yearly Revenue'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(7606516196089385)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(11455504989167788)
,p_region_id=>wwv_flow_api.id(11455402055167787)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(11455609291167789)
,p_chart_id=>wwv_flow_api.id(11455504989167788)
,p_seq=>10
,p_name=>'Yearly Revenue'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select extract(year from payment_date) "Year",',
'       sum((bp.quantity) * p.rate) "Earning"',
'from shops s,',
'     product_categories pc,',
'     products p,',
'     baskets b,',
'     basket_products bp,',
'     payments',
'where s.shop_id = pc.shop_id',
'  and pc.product_category_id = p.product_category_id',
'  and p.product_id = bp.product_id',
'  and b.basket_id = bp.basket_id',
'  and payments.BASKET_ID = b.BASKET_ID',
'  and active = 0',
'  and s.trader_id in (select t.trader_id from users u, traders t where u.user_id= t.user_id and upper(u.email) = v(''APP_USER''))',
'  and extract(year from payment_date) = extract(year from localtimestamp)',
'group by extract(year from payment_date);'))
,p_items_value_column_name=>'Earning'
,p_items_label_column_name=>'Year'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(11455730948167790)
,p_chart_id=>wwv_flow_api.id(11455504989167788)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Year'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(11455768914167791)
,p_chart_id=>wwv_flow_api.id(11455504989167788)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Total Revenue'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(7689638483089474)
,p_name=>'Shops '
,p_step_title=>'Shops and Products'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(11785667326401796)
,p_last_updated_by=>'TCHFEC ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200614184005'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11690518199191201)
,p_plug_name=>'Shops'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7606516196089385)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TRADER_ID,',
'       TRADER_TYPE_ID,',
'       SHOP_ID,',
'       SHOP_NAME',
'  from SHOPS ',
'  WHERE trader_id in (select t.trader_id from users u, traders t where u.user_id= t.user_id and upper(u.email) = v(''APP_USER''))'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11691729769191203)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11692160415191204)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11692822676191206)
,p_name=>'TRADER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRADER_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11693408365191206)
,p_name=>'TRADER_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRADER_TYPE_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11694008537191207)
,p_name=>'SHOP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHOP_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11694593551191207)
,p_name=>'SHOP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHOP_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Shop Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(11690946485191201)
,p_internal_uid=>9840511739389925
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(11691347199191202)
,p_interactive_grid_id=>wwv_flow_api.id(11690946485191201)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(11691525058191202)
,p_report_id=>wwv_flow_api.id(11691347199191202)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11692568858191204)
,p_view_id=>wwv_flow_api.id(11691525058191202)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(11692160415191204)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11693189080191206)
,p_view_id=>wwv_flow_api.id(11691525058191202)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(11692822676191206)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11693772806191206)
,p_view_id=>wwv_flow_api.id(11691525058191202)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(11693408365191206)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11694399024191207)
,p_view_id=>wwv_flow_api.id(11691525058191202)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(11694008537191207)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11695017136191207)
,p_view_id=>wwv_flow_api.id(11691525058191202)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(11694593551191207)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11695780034191209)
,p_plug_name=>'Product'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7606516196089385)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pc.SHOP_ID,p.PRODUCT_NAME,',
'p.PRODUCT_CATEGORY_ID, p.Product_id,',
'       pc.CATEGORY_NAME,',
'       pc.DESCRIPTION',
'  from PRODUCT_CATEGORIES pc, products p',
'  Where pc.PRODUCT_CATEGORY_ID =p.PRODUCT_CATEGORY_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_api.id(11690518199191201)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11456925885167802)
,p_name=>'PRODUCT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Product Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11456980665167803)
,p_name=>'PRODUCT_CATEGORY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_CATEGORY_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11457087521167804)
,p_name=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11696963336191209)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11697451155191210)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11698087398191212)
,p_name=>'SHOP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHOP_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_api.id(11694008537191207)
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11699306271191212)
,p_name=>'CATEGORY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CATEGORY_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Category Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11699890665191212)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(11696272958191209)
,p_internal_uid=>9845838212389933
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(11696723768191209)
,p_interactive_grid_id=>wwv_flow_api.id(11696272958191209)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(11696789307191209)
,p_report_id=>wwv_flow_api.id(11696723768191209)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11697900887191211)
,p_view_id=>wwv_flow_api.id(11696789307191209)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(11697451155191210)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11698447707191212)
,p_view_id=>wwv_flow_api.id(11696789307191209)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(11698087398191212)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11699668832191212)
,p_view_id=>wwv_flow_api.id(11696789307191209)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(11699306271191212)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11700315757191213)
,p_view_id=>wwv_flow_api.id(11696789307191209)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(11699890665191212)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11728120212540580)
,p_view_id=>wwv_flow_api.id(11696789307191209)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(11456925885167802)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11729469722556341)
,p_view_id=>wwv_flow_api.id(11696789307191209)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(11456980665167803)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11730582025561767)
,p_view_id=>wwv_flow_api.id(11696789307191209)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(11457087521167804)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11690367578191201)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11690518199191201)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7667199488089441)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11695205389191207)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(11690518199191201)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Shops - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11690367578191201)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11700488593191213)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(11695780034191209)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Product - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11690367578191201)
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(7689638483089474)
,p_name=>'Stock Report'
,p_step_title=>'Stock Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200618090412'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(11703992731248011)
,p_name=>'Products Stock Report'
,p_template=>wwv_flow_api.id(7606516196089385)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select shop_name "SHOP NAME", p.product_name "PRODUCT NAME", p.description "DESCRIPTION", concat(''\00A3'', p.rate) "RATE", p.quantity "QUANTITY IN STOCK"'),
'from users u, traders t, trader_types tt, shops s, product_categories pc, products p',
'where u.user_id = t.user_id',
'and t.trader_id = tt.trader_id',
'and tt.trader_type_id = s.trader_type_id',
'and tt.trader_id = s.trader_id',
'and s.shop_id = pc.shop_id',
'and pc.product_category_id = p.product_category_id',
'and  upper(u.email) = v(''APP_USER'');',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(7635362664089411)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1859699549878444)
,p_query_column_id=>1
,p_column_alias=>'SHOP NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Shop Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1859437221878442)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11705780307248016)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>1
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11706198679248017)
,p_query_column_id=>4
,p_column_alias=>'RATE'
,p_column_display_sequence=>2
,p_column_heading=>'Rate'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1859590827878443)
,p_query_column_id=>5
,p_column_alias=>'QUANTITY IN STOCK'
,p_column_display_sequence=>4
,p_column_heading=>'Quantity In Stock'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(7689638483089474)
,p_name=>'Daily Report'
,p_step_title=>'Daily Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200618122737'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6817999254549558)
,p_name=>'Orders Placed Today'
,p_template=>wwv_flow_api.id(7606516196089385)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i.invoice_date "INVOICE DATE", b.customer_id "CUSTOMER ID", pay.invoice_id "INVOICE ID", product_name "PRODUCT NAME", bp.quantity "QUANTITY ORDERED", collection_time "COLLECTION SLOT AND TIME", cast_boolean(is_collected) "DELIVERED STATUS"',
'from customers c,',
'     shops s,',
'     product_categories pc,',
'     products p,',
'     baskets b,',
'     basket_products bp,',
'     payments pay,',
'     invoices i,',
'     collection_slots cs',
'where s.shop_id = pc.shop_id',
'  and pc.product_category_id = p.product_category_id',
'  and p.product_id = bp.product_id',
'  and b.basket_id = bp.basket_id',
'  and c.customer_id = b.customer_id',
'  and pay.basket_id = b.basket_id',
'  and pay.invoice_id = i.invoice_id',
'  and i.collection_slot_id = cs.collection_slot_id',
'  and active = 0',
'  and s.trader_id in (select t.trader_id from users u, traders t where u.user_id= t.user_id and upper(u.email) = v(''APP_USER''))',
'  and to_char(pay.PAYMENT_DATE, ''YYYY-MM-DD'') = to_char(SYSDATE, ''YYYY-MM-DD'');',
'  '))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(7635362664089411)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6818394926549561)
,p_query_column_id=>1
,p_column_alias=>'INVOICE DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Invoice Date'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6818703209549562)
,p_query_column_id=>2
,p_column_alias=>'CUSTOMER ID'
,p_column_display_sequence=>2
,p_column_heading=>'Customer Id'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6819195018549562)
,p_query_column_id=>3
,p_column_alias=>'INVOICE ID'
,p_column_display_sequence=>3
,p_column_heading=>'Invoice Id'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6819549006549562)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Product Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6819908395549563)
,p_query_column_id=>5
,p_column_alias=>'QUANTITY ORDERED'
,p_column_display_sequence=>5
,p_column_heading=>'Quantity Ordered'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6820345596549563)
,p_query_column_id=>6
,p_column_alias=>'COLLECTION SLOT AND TIME'
,p_column_display_sequence=>6
,p_column_heading=>'Collection Slot And Time'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6820799086549563)
,p_query_column_id=>7
,p_column_alias=>'DELIVERED STATUS'
,p_column_display_sequence=>7
,p_column_heading=>'Delivered Status'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(7689638483089474)
,p_name=>'Weekly Finance Report'
,p_step_title=>'Weekly Finance Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200618115442'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3722844504135112)
,p_plug_name=>'Weekly Finance Report By Day'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(7606516196089385)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(3722989027135113)
,p_region_id=>wwv_flow_api.id(3722844504135112)
,p_chart_type=>'lineWithArea'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(3723042443135114)
,p_chart_id=>wwv_flow_api.id(3722989027135113)
,p_seq=>10
,p_name=>'Total Income In GBP'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(pay.payment_date, ''Day'') "Day", sum(bp.quantity * p.rate) "Total Income"',
'from shops s,',
'     product_categories pc,',
'     products p,',
'     baskets b,',
'     basket_products bp,',
'     payments pay,',
'     invoices i',
'where s.shop_id = pc.shop_id',
'  and pc.product_category_id = p.product_category_id',
'  and p.product_id = bp.product_id',
'  and b.basket_id = bp.basket_id',
'  and pay.BASKET_ID = b.BASKET_ID',
'  and pay.invoice_id = i.invoice_id',
'  and active = 0',
'  and is_collected = 1',
'  and s.trader_id in (select t.trader_id from users u, traders t where u.user_id= t.user_id and upper(u.email) = v(''APP_USER''))',
'  and to_char(pay.PAYMENT_DATE, ''YYYY-MM-DD'') >= to_char(SYSDATE-7, ''YYYY-MM-DD'')',
'group by to_char(pay.payment_date, ''Day'')',
'order by to_char(pay.payment_date, ''Day'');'))
,p_items_value_column_name=>'Total Income'
,p_items_label_column_name=>'Day'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(3723143532135115)
,p_chart_id=>wwv_flow_api.id(3722989027135113)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Day'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(3723250912135116)
,p_chart_id=>wwv_flow_api.id(3722989027135113)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Total Income'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(3728747832156303)
,p_name=>'Weekly Finance Report'
,p_template=>wwv_flow_api.id(7606516196089385)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select i.invoice_date "INVOICE DATE", product_name "PRODUCT NAME", bp.quantity "QUANTITY ORDERED", concat(''\00A3'', (rate * bp.quantity)) "TOTAL INCOME", cast_boolean(is_collected) "DELIVERED STATUS"'),
'from shops s,',
'     product_categories pc,',
'     products p,',
'     baskets b,',
'     basket_products bp,',
'     payments pay,',
'     invoices i,',
'     collection_slots cs',
'where s.shop_id = pc.shop_id',
'  and pc.product_category_id = p.product_category_id',
'  and p.product_id = bp.product_id',
'  and b.basket_id = bp.basket_id',
'  and pay.basket_id = b.basket_id',
'  and pay.invoice_id = i.invoice_id',
'  and i.collection_slot_id = cs.collection_slot_id',
'  and active = 0',
'  and is_collected = 1',
'  and s.trader_id in (select t.trader_id from users u, traders t where u.user_id= t.user_id and upper(u.email) = v(''APP_USER''))',
'  and to_char(pay.payment_date, ''YYYY-MM-DD'') >= to_char(SYSDATE-7, ''YYYY-MM-DD'');'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(7635362664089411)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3722650591135110)
,p_query_column_id=>1
,p_column_alias=>'INVOICE DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Invoice Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3729525242156308)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3722574196135109)
,p_query_column_id=>3
,p_column_alias=>'QUANTITY ORDERED'
,p_column_display_sequence=>4
,p_column_heading=>'Quantity Ordered'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3730379827156309)
,p_query_column_id=>4
,p_column_alias=>'TOTAL INCOME'
,p_column_display_sequence=>2
,p_column_heading=>'Total Income'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3730735590156309)
,p_query_column_id=>5
,p_column_alias=>'DELIVERED STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Delivered Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(7689638483089474)
,p_name=>'Monthly Finance Report'
,p_step_title=>'Monthly Finance Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200618115318'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3723300575135117)
,p_plug_name=>'Monthly Product Sales'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(7606516196089385)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(3723423611135118)
,p_region_id=>wwv_flow_api.id(3723300575135117)
,p_chart_type=>'lineWithArea'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(3723552331135119)
,p_chart_id=>wwv_flow_api.id(3723423611135118)
,p_seq=>10
,p_name=>'Total Income In GBP'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(i.invoice_date, ''Month'') "Month", sum(bp.quantity * rate) "TOTAL INCOME"',
'from shops s,',
'     product_categories pc,',
'     products p,',
'     baskets b,',
'     basket_products bp,',
'     payments pay,',
'     invoices i,',
'     collection_slots cs',
'where s.shop_id = pc.shop_id',
'  and pc.product_category_id = p.product_category_id',
'  and p.product_id = bp.product_id',
'  and b.basket_id = bp.basket_id',
'  and pay.basket_id = b.basket_id',
'  and pay.invoice_id = i.invoice_id',
'  and i.collection_slot_id = cs.collection_slot_id',
'  and active = 0',
'  and s.trader_id in (select t.trader_id from users u, traders t where u.user_id = t.user_id and upper(u.email) = v(''APP_USER''))',
'  group by to_char(i.invoice_date, ''Month'')',
'  order by sum(bp.quantity * rate);'))
,p_items_value_column_name=>'TOTAL INCOME'
,p_items_label_column_name=>'Month'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(3723668437135120)
,p_chart_id=>wwv_flow_api.id(3723423611135118)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Month'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(3723770473135121)
,p_chart_id=>wwv_flow_api.id(3723423611135118)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Total Income'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(3738099958181183)
,p_name=>'Monthly Finance Report'
,p_template=>wwv_flow_api.id(7606516196089385)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select i.invoice_date "INVOICE DATE", to_char(i.invoice_date, ''Month'') "MONTH", product_name "PRODUCT NAME", bp.quantity "QUANTITY ORDERED", concat(''\00A3'', (bp.quantity * rate)) "TOTAL INCOME"'),
'from shops s,',
'     product_categories pc,',
'     products p,',
'     baskets b,',
'     basket_products bp,',
'     payments pay,',
'     invoices i,',
'     collection_slots cs',
'where s.shop_id = pc.shop_id',
'  and pc.product_category_id = p.product_category_id',
'  and p.product_id = bp.product_id',
'  and b.basket_id = bp.basket_id',
'  and pay.basket_id = b.basket_id',
'  and pay.invoice_id = i.invoice_id',
'  and i.collection_slot_id = cs.collection_slot_id',
'  and active = 0',
'  and s.trader_id in (select t.trader_id from users u, traders t where u.user_id = t.user_id and upper(u.email) = v(''APP_USER''))',
'  group by i.invoice_date, to_char(i.invoice_date, ''Month''), product_name, bp.quantity, (bp.quantity * rate);'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(7635362664089411)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3722757358135111)
,p_query_column_id=>1
,p_column_alias=>'INVOICE DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Invoice Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3738429657181184)
,p_query_column_id=>2
,p_column_alias=>'MONTH'
,p_column_display_sequence=>1
,p_column_heading=>'Month'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3738848585181184)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3739241724181185)
,p_query_column_id=>4
,p_column_alias=>'QUANTITY ORDERED'
,p_column_display_sequence=>3
,p_column_heading=>'Quantity Ordered'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3739640772181185)
,p_query_column_id=>5
,p_column_alias=>'TOTAL INCOME'
,p_column_display_sequence=>4
,p_column_heading=>'Total Income'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_api.create_page(
 p_id=>50
,p_user_interface_id=>wwv_flow_api.id(7689638483089474)
,p_name=>'Admin Dashboard '
,p_step_title=>'Admin Dashboard '
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7707276549124833)
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200618120930'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17604001592469580)
,p_plug_name=>'<div style="display:flex; align-items:center; "><img src=" https://bit.ly/3e1XlAO" height="100"> </div>'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>wwv_flow_api.id(7596858465089378)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21357779278547660)
,p_plug_name=>'Monthly orders'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(7606516196089385)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(11757784767181181)
,p_region_id=>wwv_flow_api.id(21357779278547660)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(11759454091181182)
,p_chart_id=>wwv_flow_api.id(11757784767181181)
,p_seq=>10
,p_name=>'Number of orders'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(payment_date, ''Month'') "Month", count(extract(month from payment_date)) "Orders"',
'from shops s,',
'     product_categories pc,',
'     products p,',
'     baskets b,',
'     basket_products bp,',
'     payments',
'where s.shop_id = pc.shop_id',
'  and pc.product_category_id = p.product_category_id',
'  and p.product_id = bp.product_id',
'  and b.basket_id = bp.basket_id',
'  and payments.BASKET_ID = b.BASKET_ID',
'  and active = 0',
'group by to_char(payment_date, ''Month'');'))
,p_items_value_column_name=>'Orders'
,p_items_label_column_name=>'Month'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(11758314031181181)
,p_chart_id=>wwv_flow_api.id(11757784767181181)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Month'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(11758834781181182)
,p_chart_id=>wwv_flow_api.id(11757784767181181)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Number of Orders'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21358250595547665)
,p_plug_name=>'Revenue Generated By Products In Current Month'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(7606516196089385)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(11760408735181182)
,p_region_id=>wwv_flow_api.id(21358250595547665)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(11762049423181183)
,p_chart_id=>wwv_flow_api.id(11760408735181182)
,p_seq=>10
,p_name=>'Total Revenue'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(payment_date, ''Month'') "Month", product_name "Product", sum((bp.quantity) * p.rate) "Earning"',
'from shops s,',
'     product_categories pc,',
'     products p,',
'     baskets b,',
'     basket_products bp,',
'     payments',
'where s.shop_id = pc.shop_id',
'  and pc.product_category_id = p.product_category_id',
'  and p.product_id = bp.product_id',
'  and b.basket_id = bp.basket_id',
'  and payments.basket_id = b.basket_id',
'  and active = 0',
'  and extract(month from payment_date) = extract(month from localtimestamp)',
'group by to_char(payment_date, ''Month''), product_name;'))
,p_items_value_column_name=>'Earning'
,p_items_label_column_name=>'Product'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(11760838250181183)
,p_chart_id=>wwv_flow_api.id(11760408735181182)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Products'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(11761439361181183)
,p_chart_id=>wwv_flow_api.id(11760408735181182)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Total Revenue'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21358806646547670)
,p_plug_name=>'Yearly Revenue'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(7606516196089385)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(11755193757181177)
,p_region_id=>wwv_flow_api.id(21358806646547670)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(11756898777181179)
,p_chart_id=>wwv_flow_api.id(11755193757181177)
,p_seq=>10
,p_name=>'Yearly Revenue'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select extract(year from payment_date) "Year",',
'       sum((bp.quantity) * p.rate) "Earning"',
'from shops s,',
'     product_categories pc,',
'     products p,',
'     baskets b,',
'     basket_products bp,',
'     payments',
'where s.shop_id = pc.shop_id',
'  and pc.product_category_id = p.product_category_id',
'  and p.product_id = bp.product_id',
'  and b.basket_id = bp.basket_id',
'  and payments.BASKET_ID = b.BASKET_ID',
'  and active = 0',
'  and extract(year from payment_date) = extract(year from localtimestamp(2))',
'group by extract(year from payment_date)'))
,p_items_value_column_name=>'Earning'
,p_items_label_column_name=>'Year'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(11755659462181178)
,p_chart_id=>wwv_flow_api.id(11755193757181177)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Year'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(11756266598181179)
,p_chart_id=>wwv_flow_api.id(11755193757181177)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Total Revenue'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
end;
/
prompt --application/pages/page_00051
begin
wwv_flow_api.create_page(
 p_id=>51
,p_user_interface_id=>wwv_flow_api.id(7689638483089474)
,p_name=>'Shops and Products'
,p_step_title=>'Shops and Products'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7707276549124833)
,p_last_updated_by=>'TCHFEC ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200614181941'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21604248494589021)
,p_plug_name=>'Shops'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7606516196089385)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TRADER_ID,',
'       TRADER_TYPE_ID,',
'       SHOP_ID,',
'       SHOP_NAME',
'  from SHOPS ',
'  '))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21605460064589023)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21605890710589024)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21606552971589026)
,p_name=>'TRADER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRADER_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21607138660589026)
,p_name=>'TRADER_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRADER_TYPE_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21607738832589027)
,p_name=>'SHOP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHOP_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21608323846589027)
,p_name=>'SHOP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHOP_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Shop Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(21604676780589021)
,p_internal_uid=>19754242034787745
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(21605077494589022)
,p_interactive_grid_id=>wwv_flow_api.id(21604676780589021)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(21605255353589022)
,p_report_id=>wwv_flow_api.id(21605077494589022)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21606299153589024)
,p_view_id=>wwv_flow_api.id(21605255353589022)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(21605890710589024)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21606919375589026)
,p_view_id=>wwv_flow_api.id(21605255353589022)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(21606552971589026)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21607503101589026)
,p_view_id=>wwv_flow_api.id(21605255353589022)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(21607138660589026)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21608129319589027)
,p_view_id=>wwv_flow_api.id(21605255353589022)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(21607738832589027)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21608747431589027)
,p_view_id=>wwv_flow_api.id(21605255353589022)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(21608323846589027)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21609510329589029)
,p_plug_name=>'Product'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7606516196089385)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pc.SHOP_ID,p.PRODUCT_NAME,',
'p.PRODUCT_CATEGORY_ID, p.Product_id,',
'       pc.CATEGORY_NAME,',
'       pc.DESCRIPTION',
'  from PRODUCT_CATEGORIES pc, products p',
'  Where pc.PRODUCT_CATEGORY_ID =p.PRODUCT_CATEGORY_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_api.id(21604248494589021)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21370656180565622)
,p_name=>'PRODUCT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Product Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21370710960565623)
,p_name=>'PRODUCT_CATEGORY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_CATEGORY_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21370817816565624)
,p_name=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21610693631589029)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21611181450589030)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21611817693589032)
,p_name=>'SHOP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHOP_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_api.id(21607738832589027)
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21613036566589032)
,p_name=>'CATEGORY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CATEGORY_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Category Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(21613620960589032)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(21610003253589029)
,p_internal_uid=>19759568507787753
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(21610454063589029)
,p_interactive_grid_id=>wwv_flow_api.id(21610003253589029)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(21610519602589029)
,p_report_id=>wwv_flow_api.id(21610454063589029)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21611631182589031)
,p_view_id=>wwv_flow_api.id(21610519602589029)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(21611181450589030)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21612178002589032)
,p_view_id=>wwv_flow_api.id(21610519602589029)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(21611817693589032)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21613399127589032)
,p_view_id=>wwv_flow_api.id(21610519602589029)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(21613036566589032)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21614046052589033)
,p_view_id=>wwv_flow_api.id(21610519602589029)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(21613620960589032)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21641850507938400)
,p_view_id=>wwv_flow_api.id(21610519602589029)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(21370656180565622)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21643200017954161)
,p_view_id=>wwv_flow_api.id(21610519602589029)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(21370710960565623)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(21644312320959587)
,p_view_id=>wwv_flow_api.id(21610519602589029)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(21370817816565624)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11768188041199109)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21604248494589021)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7667199488089441)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11768556329199110)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(21604248494589021)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Shops - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11768188041199109)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11773067011199114)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(21609510329589029)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Product - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11768188041199109)
);
end;
/
prompt --application/pages/page_00052
begin
wwv_flow_api.create_page(
 p_id=>52
,p_user_interface_id=>wwv_flow_api.id(7689638483089474)
,p_name=>'Stock Reports'
,p_step_title=>'Stock Reports'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7707276549124833)
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200618121650'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(21627975428662956)
,p_name=>'Products Stock Report'
,p_template=>wwv_flow_api.id(7606516196089385)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select shop_name "SHOP NAME", p.product_name "PRODUCT NAME", p.description "DESCRIPTION", concat(''\00A3'', p.rate) "RATE", p.quantity "QUANTITY IN STOCK"'),
'from shops s, product_categories pc, products p',
'where s.shop_id = pc.shop_id',
'and pc.product_category_id = p.product_category_id;',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(7635362664089411)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6777343943145403)
,p_query_column_id=>1
,p_column_alias=>'SHOP NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Shop Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6777439791145404)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11776615778216223)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>1
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1855459145878402)
,p_query_column_id=>4
,p_column_alias=>'RATE'
,p_column_display_sequence=>2
,p_column_heading=>'Rate'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6777500158145405)
,p_query_column_id=>5
,p_column_alias=>'QUANTITY IN STOCK'
,p_column_display_sequence=>5
,p_column_heading=>'Quantity In Stock'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00053
begin
wwv_flow_api.create_page(
 p_id=>53
,p_user_interface_id=>wwv_flow_api.id(7689638483089474)
,p_name=>'Weekly Report'
,p_step_title=>'Weekly Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7707276549124833)
,p_last_updated_by=>'TCHFEC ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200614182046'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21652713366904368)
,p_plug_name=>'Weekly Report'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(7606516196089385)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(11781108563239617)
,p_region_id=>wwv_flow_api.id(21652713366904368)
,p_chart_type=>'line'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(11782767564239618)
,p_chart_id=>wwv_flow_api.id(11781108563239617)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(payments.PAYMENT_DATE, ''YYYY-MM-DD'') "Week", sum(bp.quantity * p.rate) "Earning"',
'from shops s,',
'     product_categories pc,',
'     products p,',
'     baskets b,',
'     basket_products bp,',
'     payments',
'where s.shop_id = pc.shop_id',
'  and pc.product_category_id = p.product_category_id',
'  and p.product_id = bp.product_id',
'  and b.basket_id = bp.basket_id',
'  and payments.BASKET_ID = b.BASKET_ID',
'  and active = 0',
'  and to_char(payments.PAYMENT_DATE, ''YYYY-MM-DD'') <= to_char(SYSDATE, ''YYYY-MM-DD'')',
'group by to_char(payments.PAYMENT_DATE, ''YYYY-MM-DD'');'))
,p_items_value_column_name=>'Earning'
,p_group_short_desc_column_name=>'Week'
,p_items_label_column_name=>'Week'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(11781549610239617)
,p_chart_id=>wwv_flow_api.id(11781108563239617)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>true
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(11782161917239618)
,p_chart_id=>wwv_flow_api.id(11781108563239617)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
end;
/
prompt --application/pages/page_00054
begin
wwv_flow_api.create_page(
 p_id=>54
,p_user_interface_id=>wwv_flow_api.id(7689638483089474)
,p_name=>'Daily Report'
,p_step_title=>'Daily Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200618121939'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(22468083092461936)
,p_name=>'Orders Placed Today'
,p_template=>wwv_flow_api.id(7606516196089385)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i.invoice_date "INVOICE DATE", b.customer_id "CUSTOMER ID", pay.invoice_id "INVOICE ID", product_name "PRODUCT NAME", bp.quantity "QUANTITY ORDERED", collection_time "COLLECTION SLOT AND TIME", cast_boolean(is_collected) "DELIVERED STATUS"',
'from customers c,',
'     shops s,',
'     product_categories pc,',
'     products p,',
'     baskets b,',
'     basket_products bp,',
'     payments pay,',
'     invoices i,',
'     collection_slots cs',
'where s.shop_id = pc.shop_id',
'  and pc.product_category_id = p.product_category_id',
'  and p.product_id = bp.product_id',
'  and b.basket_id = bp.basket_id',
'  and c.customer_id = b.customer_id',
'  and pay.basket_id = b.basket_id',
'  and pay.invoice_id = i.invoice_id',
'  and i.collection_slot_id = cs.collection_slot_id',
'  and active = 0',
'  and to_char(pay.PAYMENT_DATE, ''YYYY-MM-DD'') = to_char(SYSDATE, ''YYYY-MM-DD'');',
'  '))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(7635362664089411)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6777616758145406)
,p_query_column_id=>1
,p_column_alias=>'INVOICE DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Invoice Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6777783635145407)
,p_query_column_id=>2
,p_column_alias=>'CUSTOMER ID'
,p_column_display_sequence=>2
,p_column_heading=>'Customer Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6777883979145408)
,p_query_column_id=>3
,p_column_alias=>'INVOICE ID'
,p_column_display_sequence=>3
,p_column_heading=>'Invoice Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6777964317145409)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6778016266145410)
,p_query_column_id=>5
,p_column_alias=>'QUANTITY ORDERED'
,p_column_display_sequence=>5
,p_column_heading=>'Quantity Ordered'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6778139419145411)
,p_query_column_id=>6
,p_column_alias=>'COLLECTION SLOT AND TIME'
,p_column_display_sequence=>6
,p_column_heading=>'Collection Slot And Time'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6778207442145412)
,p_query_column_id=>7
,p_column_alias=>'DELIVERED STATUS'
,p_column_display_sequence=>7
,p_column_heading=>'Delivered Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00055
begin
wwv_flow_api.create_page(
 p_id=>55
,p_user_interface_id=>wwv_flow_api.id(7689638483089474)
,p_name=>'Weekly Finance Report'
,p_step_title=>'Weekly Finance Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200618123126'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10551569480705840)
,p_plug_name=>'Weekly Finance Report By Day'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(7606516196089385)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(6832070474570740)
,p_region_id=>wwv_flow_api.id(10551569480705840)
,p_chart_type=>'lineWithArea'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_show_gauge_value=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(6833733586570743)
,p_chart_id=>wwv_flow_api.id(6832070474570740)
,p_seq=>10
,p_name=>'Total Income In GBP'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(pay.payment_date, ''Day'') "Day", sum(bp.quantity * p.rate) "Total Income"',
'from shops s,',
'     product_categories pc,',
'     products p,',
'     baskets b,',
'     basket_products bp,',
'     payments pay,',
'     invoices i',
'where s.shop_id = pc.shop_id',
'  and pc.product_category_id = p.product_category_id',
'  and p.product_id = bp.product_id',
'  and b.basket_id = bp.basket_id',
'  and pay.BASKET_ID = b.BASKET_ID',
'  and pay.invoice_id = i.invoice_id',
'  and active = 0',
'  and is_collected = 1',
'  and to_char(pay.PAYMENT_DATE, ''YYYY-MM-DD'') >= to_char(SYSDATE-7, ''YYYY-MM-DD'')',
'group by to_char(pay.payment_date, ''Day'')',
'order by to_char(pay.payment_date, ''Day'');'))
,p_items_value_column_name=>'Total Income'
,p_items_label_column_name=>'Day'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(6832544684570741)
,p_chart_id=>wwv_flow_api.id(6832070474570740)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Day'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(6833154785570742)
,p_chart_id=>wwv_flow_api.id(6832070474570740)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Total Income'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(10557472808727031)
,p_name=>'Weekly Finance Report'
,p_template=>wwv_flow_api.id(7606516196089385)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select i.invoice_date "INVOICE DATE", product_name "PRODUCT NAME", bp.quantity "QUANTITY ORDERED", concat(''\00A3'', (rate * bp.quantity)) "TOTAL INCOME", cast_boolean(is_collected) "DELIVERED STATUS"'),
'from shops s,',
'     product_categories pc,',
'     products p,',
'     baskets b,',
'     basket_products bp,',
'     payments pay,',
'     invoices i,',
'     collection_slots cs',
'where s.shop_id = pc.shop_id',
'  and pc.product_category_id = p.product_category_id',
'  and p.product_id = bp.product_id',
'  and b.basket_id = bp.basket_id',
'  and pay.basket_id = b.basket_id',
'  and pay.invoice_id = i.invoice_id',
'  and i.collection_slot_id = cs.collection_slot_id',
'  and active = 0',
'  and is_collected = 1',
'  and to_char(pay.payment_date, ''YYYY-MM-DD'') >= to_char(SYSDATE-7, ''YYYY-MM-DD'');'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(7635362664089411)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6830976037570734)
,p_query_column_id=>1
,p_column_alias=>'INVOICE DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Invoice Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6829752571570733)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6831343825570734)
,p_query_column_id=>3
,p_column_alias=>'QUANTITY ORDERED'
,p_column_display_sequence=>4
,p_column_heading=>'Quantity Ordered'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6830193248570733)
,p_query_column_id=>4
,p_column_alias=>'TOTAL INCOME'
,p_column_display_sequence=>2
,p_column_heading=>'Total Income'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6830500114570734)
,p_query_column_id=>5
,p_column_alias=>'DELIVERED STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Delivered Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00056
begin
wwv_flow_api.create_page(
 p_id=>56
,p_user_interface_id=>wwv_flow_api.id(7689638483089474)
,p_name=>'Monthly Finance Report'
,p_step_title=>'Monthly Finance Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200618123443'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10559337209725906)
,p_plug_name=>'Monthly Product Sales'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(7606516196089385)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(6839352215590792)
,p_region_id=>wwv_flow_api.id(10559337209725906)
,p_chart_type=>'lineWithArea'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_show_gauge_value=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(6840932963590793)
,p_chart_id=>wwv_flow_api.id(6839352215590792)
,p_seq=>10
,p_name=>'Total Income In GBP'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(i.invoice_date, ''Month'') "Month", sum(bp.quantity * rate) "TOTAL INCOME"',
'from shops s,',
'     product_categories pc,',
'     products p,',
'     baskets b,',
'     basket_products bp,',
'     payments pay,',
'     invoices i,',
'     collection_slots cs',
'where s.shop_id = pc.shop_id',
'  and pc.product_category_id = p.product_category_id',
'  and p.product_id = bp.product_id',
'  and b.basket_id = bp.basket_id',
'  and pay.basket_id = b.basket_id',
'  and pay.invoice_id = i.invoice_id',
'  and i.collection_slot_id = cs.collection_slot_id',
'  and active = 0',
'  group by to_char(i.invoice_date, ''Month'')',
'  order by sum(bp.quantity * rate);'))
,p_items_value_column_name=>'TOTAL INCOME'
,p_items_label_column_name=>'Month'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(6840348864590793)
,p_chart_id=>wwv_flow_api.id(6839352215590792)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Total Income'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(6839758873590792)
,p_chart_id=>wwv_flow_api.id(6839352215590792)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Month'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(10574136592771972)
,p_name=>'Monthly Finance Report'
,p_template=>wwv_flow_api.id(7606516196089385)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select i.invoice_date "INVOICE DATE", to_char(i.invoice_date, ''Month'') "MONTH", product_name "PRODUCT NAME", bp.quantity "QUANTITY ORDERED", concat(''\00A3'', (bp.quantity * rate)) "TOTAL INCOME"'),
'from shops s,',
'     product_categories pc,',
'     products p,',
'     baskets b,',
'     basket_products bp,',
'     payments pay,',
'     invoices i,',
'     collection_slots cs',
'where s.shop_id = pc.shop_id',
'  and pc.product_category_id = p.product_category_id',
'  and p.product_id = bp.product_id',
'  and b.basket_id = bp.basket_id',
'  and pay.basket_id = b.basket_id',
'  and pay.invoice_id = i.invoice_id',
'  and i.collection_slot_id = cs.collection_slot_id',
'  and active = 0',
'  group by i.invoice_date, to_char(i.invoice_date, ''Month''), product_name, bp.quantity, (bp.quantity * rate);'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(7635362664089411)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6837057348590790)
,p_query_column_id=>1
,p_column_alias=>'INVOICE DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Invoice Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6837416377590791)
,p_query_column_id=>2
,p_column_alias=>'MONTH'
,p_column_display_sequence=>1
,p_column_heading=>'Month'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6837830546590791)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6838245536590791)
,p_query_column_id=>4
,p_column_alias=>'QUANTITY ORDERED'
,p_column_display_sequence=>3
,p_column_heading=>'Quantity Ordered'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6838698143590791)
,p_query_column_id=>5
,p_column_alias=>'TOTAL INCOME'
,p_column_display_sequence=>4
,p_column_heading=>'Total Income'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(7689638483089474)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'The Clechuderfax E-chain - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(7559185844089344)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'TCHFEC ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200613073647'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7693896678089632)
,p_plug_name=>'The Clechuderfax E-chain'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7605227699089384)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7698558445089664)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(7693896678089632)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(7579103564089364)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7696725062089653)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(7693896678089632)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7667199488089441)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7694313842089637)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7693896678089632)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(7665823249089435)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7694701599089641)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7693896678089632)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(7665823249089435)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7695788877089648)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(7693896678089632)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(7695034492089641)||'.'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(7665823249089435)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7697503152089662)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7697081646089658)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7698310726089663)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7697905128089662)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_api.create_page(
 p_id=>10010
,p_user_interface_id=>wwv_flow_api.id(7689638483089474)
,p_name=>'About'
,p_alias=>'HELP'
,p_step_title=>'About'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(7692935099089580)
,p_required_patch=>wwv_flow_api.id(7691796462089567)
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_last_updated_by=>'TCHFEC ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200613073647'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7701708822089752)
,p_plug_name=>'About Page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(7594887794089377)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'Text about this application can be placed here.'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/pages/page_10011
begin
wwv_flow_api.create_page(
 p_id=>10011
,p_user_interface_id=>wwv_flow_api.id(7689638483089474)
,p_name=>'Help'
,p_alias=>'PAGE_HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(7691796462089567)
,p_dialog_chained=>'N'
,p_last_updated_by=>'TCHFEC ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200613073647'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7702410649089754)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(7579103564089364)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in ',
'(',
'    select page_title, help_text ',
'      from apex_application_pages',
'     where page_id = :P10011_PAGE_ID ',
'       and application_id = :APP_ID',
')',
'loop',
'    if c1.help_text is null then',
'        sys.htp.p(''No help is available for this page.'');',
'    else',
'        if substr(c1.help_text, 1, 3) != ''<p>'' then',
'            sys.htp.p(''<p>'');',
'        end if;',
'',
'        sys.htp.p(apex_application.do_substitutions(c1.help_text));',
'',
'        if substr(trim(c1.help_text), -4) != ''</p>'' then',
'            sys.htp.p(''</p>'');',
'        end if;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7702813598089755)
,p_name=>'P10011_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7702410649089754)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(11450813032909012)
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
