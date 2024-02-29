$PBExportHeader$staffsuptbds.sra
$PBExportComments$Generated Application Object
forward
global type staffsuptbds from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
string gs_dbconnection
string gs_ip_addr
string gs_computername
string gs_winuser
string gs_delim
string gs_crlf
string gs_cr
string gs_lf
string gs_tab
string gs_bds_cache_filename
string gs_copyright_symbol
integer gi_max_cols
integer gi_max_rows
string gsa_grptypes[]
integer gi_grptype_othr
integer gi_grptype_corr
integer gi_grptype_pat
integer gi_pad_len
boolean gb_compress
transaction SP_SQLCA
string gs_not_allowed_to_dragdrop_hdrtexts
boolean gb_inserted_unfilled
integer gi_bd_span_from
integer gi_bd_span_to
integer gi_bd_no_display
integer gi_bd_before_days
integer gi_bd_after_days
integer gi_bd_today

//nrtnvalue = 0 do not display birthday
//          = 1 birthday within 7 days
//          = 2 birthday past 7days
//          = 3 on birthday

boolean gb_show_all_birthdays
end variables

global type staffsuptbds from application
string appname = "staffsuptbds"
string themepath = "C:\Program Files (x86)\Appeon\PowerBuilder 21.0\IDE\theme"
string themename = "Do Not Use Themes"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 2
long richtexteditx64type = 3
long richtexteditversion = 1
string richtexteditkey = ""
string appicon = ""
string appruntimeversion = "21.0.0.1506"
boolean manualsession = false
boolean unsupportedapierror = false
end type
global staffsuptbds staffsuptbds

on staffsuptbds.create
appname="staffsuptbds"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on staffsuptbds.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;//===========================================================
//staffing.exe application for the sheriff's department
//allows UCSO Finance Manager and other supervisors to manage the staffing database tables
// and data.
//Original: 03/23/2021
//Programmer: M.K. Johnson
//revision: 07/10/2023
//dbconnection file = c:\pbrepos\pbdbsetting.txt
//===========================================================
string ls_dbsetting
ls_dbsetting = "c:\pbrepos\pbdbsetting.txt"
string ls_fileerror
string lsa_dbsettings[]
integer li_num_db_settings
string ls_command_line
ls_command_line = CommandParm()
//MessageBox("Notification","command line arg=" + ls_command_line)

//ls_command_line = "/T" //force db1_test
//
//if(pos(ls_command_line, "T") > 0) then
//	//li_num_db_settings = f_readfile(ls_dbsetting, ref lsa_dbsettings, ref ls_fileerror)
//	//if(li_num_db_settings > 0) then
//	gs_dbconnection = "db1_test"
//	gs_dbconnection = trim(gs_dbconnection)
//else
//	gs_dbconnection = "db1.world" //"db1_test" //"db1.world" 
//end if

gs_dbconnection = "db1.world" //"db1_test" //"db1.world" 

// Profile justice_dev
SQLCA.DBMS = "O10 Oracle10g (10.1.0)"
SQLCA.LogPass = "JUSTICE"
SQLCA.ServerName = gs_dbconnection //"db1.world" or "db1_test"
SQLCA.LogId = "justice"
SQLCA.AutoCommit = False
SQLCA.DBParm = ""
connect using SQLCA;

string sqlerror = ""
//check for successful connection
if SQLCA.sqlcode < 0 then
	sqlerror = "DB ERROR! (DB1.WORLD-JUSTICE "
	sqlerror += SQLCA.sqlerrtext
	MessageBox("SQL CONNECT", sqlerror )
	halt
end if


//SP_SQLCA = CREATE transaction
//SP_SQLCA.DBMS = "OLE DB"   //MICROSOFT SQL DATABASE
//SP_SQLCA.LogPass = "VmYq3t6w9z$C&F)"
//SP_SQLCA.LogId = "pb_flex"
//SP_SQLCA.AutoCommit = False
//SP_SQLCA.DBParm = "DATASOURCE='161.119.38.252,51316\ucso',PROVIDER='SQLNCLI11'"
//
//connect using SP_SQLCA;
//sqlerror = ""
////check for successful connection
//if SP_SQLCA.sqlcode < 0 then
//	sqlerror = "DB ERROR! (DB1.WORLD-JUSTICE "
//	sqlerror += SP_SQLCA.sqlerrtext
//	MessageBox("SQL CONNECT TO FLEX FAILED: ", sqlerror )
//	halt
//end if
//
////==================================================
//
//string ls_sql
//ls_sql = "select cdunit.unitno, cdunit.descr, cdunit.kind, cdunito.status, cdunito.officer, pemain.eidnum, pemain.empnum, pemain.divisn, pemain.badge,  "
//ls_sql += "pemain.dept, pemain.empstat, pemain.rank, apnames.phone, apnames.fullnam, apnames.abbr, apnames.email, apnames.status, pemain.termin, pemain.retire, pemain.hired "
//ls_sql += "from cdunit,cdunito,pemain,apnames  "
//ls_sql += "WHERE ( cdunit.unitno = cdunito.unitno )  "
//ls_sql += "and (cdunito.officer = pemain.officer )  "
//ls_sql += "and (apnames.descr = pemain.officer) "
//ls_sql += "and cdunit.agency in ( 'UCSO', 'UCJL')  "
//ls_sql += "and pemain.agency = 'UCSO'  "
//ls_sql += "and apnames.agency = 'UCSO' "
//string lsa_info[]
//integer li_num_info_items
//string lsa_parseoutdata[]
//integer li_num_parse_items
//integer li_num_inserted
//integer li_num_updated
//integer li_num_errors
//
//li_num_info_items = f_app_ds_populate_string_array_by_sql(ref lsa_info, ref ls_sql, gi_pad_len, gs_delim, gb_compress, ref sqlca)
//if(li_num_info_items > 0) then
//end if
//


string ls_dbidentity
ls_dbidentity = f_get_db_identity(ref sqlca)

//================================================

select sys_context ('USERENV','IP_ADDRESS'),
		 sys_context ('USERENV','TERMINAL'),
		 sys_context ('USERENV','os_user')
into :gs_ip_addr,
     :gs_computername,
	 :gs_winuser
FROM dual
using sqlca;

//set global vars
gs_delim = "Ç" //char(128)
gs_crlf = "~r~n"
gs_cr = "~r"
gs_lf = "~n"
gs_tab = "~t"
gs_copyright_symbol = "©"

gs_winuser = Trim(Upper(gs_winuser))

gs_bds_cache_filename = f_get_settings_parameter("SYSTEM","BOARDS_CACHE_FILENAME","sdatalg", ref sqlca)

gs_not_allowed_to_dragdrop_hdrtexts = f_get_settings_parameter("SYSTEM","NOTALLOWEDDRAGDROP", "sdatalg", ref sqlca)

//===============================================
//populate grptypes info gsa_grptypes[]
//===============================================
gi_grptype_othr = 1
gi_grptype_corr = 2
gi_grptype_pat = 3
string ls_lists_pop_sql
integer li_num_pop_items
integer li_ploop
string ls_ploopdata
gi_pad_len = 120
gb_compress = true
ls_lists_pop_sql = "select id || '-' || category from sns_staffing_groups where active = 1 and category is not null "
string lsa_temp_cats[]
li_num_pop_items = f_app_ds_populate_string_array_by_sql(ref lsa_temp_cats, ls_lists_pop_sql, gi_pad_len, gs_delim, gb_compress, ref sqlca)
if(li_num_pop_items > 0) then
	string ls_found_items
	string ls_found_othr_grpids
	string ls_found_corr_grpids
	string ls_found_pat_grpids
	string ls_grpid
	string ls_category
	integer li_dpos
	for li_ploop = 1 to li_num_pop_items
		ls_ploopdata = lsa_temp_cats[li_ploop]
		li_dpos = pos(ls_ploopdata, "-")
		if(li_dpos > 0) then
			ls_grpid = trim(mid(ls_ploopdata, 1, (li_dpos - 1)))
			ls_category = trim(mid(ls_ploopdata, (li_dpos + 1)))
			if(ls_category = "PATROL") then
				ls_found_pat_grpids += ls_grpid
				ls_found_pat_grpids += "|"
			elseif(ls_category = "CORRECTIONS") then
				ls_found_corr_grpids += ls_grpid
				ls_found_corr_grpids += "|"
			elseif((ls_category = "ALLOTHER")) then
				ls_found_othr_grpids += ls_grpid
				ls_found_othr_grpids += "|"
			end if
		end if
	next
	if(f_len_ext(ls_found_pat_grpids) > 0) then
		ls_found_pat_grpids = "|" + ls_found_pat_grpids
	end if
	if(f_len_ext(ls_found_corr_grpids) > 0) then
		ls_found_corr_grpids = "|" + ls_found_corr_grpids
	end if
	if(f_len_ext(ls_found_othr_grpids) > 0) then
		ls_found_othr_grpids = "|" + ls_found_othr_grpids
	end if
	gsa_grptypes[gi_grptype_othr] = ls_found_othr_grpids
	gsa_grptypes[gi_grptype_corr] = ls_found_corr_grpids
	gsa_grptypes[gi_grptype_pat] = ls_found_pat_grpids
/*
--ADMIN        = OTHR
--ALL          = OTHR
--ANY          = OTHR
--CORRECTIONS  = CORR
--PATROL       = PAT
*/
end if
//===============================================
//===============================================
gb_inserted_unfilled = false
string ls_temp_parameter
ls_temp_parameter = f_get_settings_parameter("SYSTEM","BD_SPAN_FROM","ndata", ref sqlca)
gi_bd_span_from = f_stoi(ls_temp_parameter)
ls_temp_parameter = f_get_settings_parameter("SYSTEM","BD_SPAN_TO","ndata", ref sqlca)
gi_bd_span_to = f_stoi(ls_temp_parameter)

// 0 do not display birthday
// 1 birthday within 7 days
// 2 birthday past 7days
// 3 on birthday
gi_bd_no_display = 0
gi_bd_before_days = 1
gi_bd_after_days = 2
gi_bd_today = 3
gb_show_all_birthdays = false

open(w_main)
end event

