$PBExportHeader$w_devel_supt.srw
forward
global type w_devel_supt from window
end type
type st_11 from statictext within w_devel_supt
end type
type lb_orderby_bak from listbox within w_devel_supt
end type
type st_save_debug_location from statictext within w_devel_supt
end type
type pb_save_debug from picturebutton within w_devel_supt
end type
type st_db_identity from statictext within w_devel_supt
end type
type st_10 from statictext within w_devel_supt
end type
type cbx_use_pos from checkbox within w_devel_supt
end type
type sle_num_processed from singlelineedit within w_devel_supt
end type
type st_9 from statictext within w_devel_supt
end type
type lb_devel from listbox within w_devel_supt
end type
type sle_num_others from singlelineedit within w_devel_supt
end type
type st_8 from statictext within w_devel_supt
end type
type st_7 from statictext within w_devel_supt
end type
type dw_specs_others from datawindow within w_devel_supt
end type
type st_6 from statictext within w_devel_supt
end type
type lb_col_xref from listbox within w_devel_supt
end type
type sle_num_init_errors from singlelineedit within w_devel_supt
end type
type st_1 from statictext within w_devel_supt
end type
type pb_init_table from picturebutton within w_devel_supt
end type
type sle_num_specs from singlelineedit within w_devel_supt
end type
type st_5 from statictext within w_devel_supt
end type
type sle_num_grpids from singlelineedit within w_devel_supt
end type
type st_4 from statictext within w_devel_supt
end type
type st_3 from statictext within w_devel_supt
end type
type dw_lay_specs from datawindow within w_devel_supt
end type
type rb_all from radiobutton within w_devel_supt
end type
type rb_emergsvcs from radiobutton within w_devel_supt
end type
type rb_judicial from radiobutton within w_devel_supt
end type
type rb_patrol from radiobutton within w_devel_supt
end type
type rb_corrections from radiobutton within w_devel_supt
end type
type st_2 from statictext within w_devel_supt
end type
type dw_bd_groupids from datawindow within w_devel_supt
end type
type pb_14 from picturebutton within w_devel_supt
end type
type gb_1 from groupbox within w_devel_supt
end type
end forward

global type w_devel_supt from window
integer width = 8059
integer height = 3776
boolean titlebar = true
string title = "Developer Support"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_11 st_11
lb_orderby_bak lb_orderby_bak
st_save_debug_location st_save_debug_location
pb_save_debug pb_save_debug
st_db_identity st_db_identity
st_10 st_10
cbx_use_pos cbx_use_pos
sle_num_processed sle_num_processed
st_9 st_9
lb_devel lb_devel
sle_num_others sle_num_others
st_8 st_8
st_7 st_7
dw_specs_others dw_specs_others
st_6 st_6
lb_col_xref lb_col_xref
sle_num_init_errors sle_num_init_errors
st_1 st_1
pb_init_table pb_init_table
sle_num_specs sle_num_specs
st_5 st_5
sle_num_grpids sle_num_grpids
st_4 st_4
st_3 st_3
dw_lay_specs dw_lay_specs
rb_all rb_all
rb_emergsvcs rb_emergsvcs
rb_judicial rb_judicial
rb_patrol rb_patrol
rb_corrections rb_corrections
st_2 st_2
dw_bd_groupids dw_bd_groupids
pb_14 pb_14
gb_1 gb_1
end type
global w_devel_supt w_devel_supt

on w_devel_supt.create
this.st_11=create st_11
this.lb_orderby_bak=create lb_orderby_bak
this.st_save_debug_location=create st_save_debug_location
this.pb_save_debug=create pb_save_debug
this.st_db_identity=create st_db_identity
this.st_10=create st_10
this.cbx_use_pos=create cbx_use_pos
this.sle_num_processed=create sle_num_processed
this.st_9=create st_9
this.lb_devel=create lb_devel
this.sle_num_others=create sle_num_others
this.st_8=create st_8
this.st_7=create st_7
this.dw_specs_others=create dw_specs_others
this.st_6=create st_6
this.lb_col_xref=create lb_col_xref
this.sle_num_init_errors=create sle_num_init_errors
this.st_1=create st_1
this.pb_init_table=create pb_init_table
this.sle_num_specs=create sle_num_specs
this.st_5=create st_5
this.sle_num_grpids=create sle_num_grpids
this.st_4=create st_4
this.st_3=create st_3
this.dw_lay_specs=create dw_lay_specs
this.rb_all=create rb_all
this.rb_emergsvcs=create rb_emergsvcs
this.rb_judicial=create rb_judicial
this.rb_patrol=create rb_patrol
this.rb_corrections=create rb_corrections
this.st_2=create st_2
this.dw_bd_groupids=create dw_bd_groupids
this.pb_14=create pb_14
this.gb_1=create gb_1
this.Control[]={this.st_11,&
this.lb_orderby_bak,&
this.st_save_debug_location,&
this.pb_save_debug,&
this.st_db_identity,&
this.st_10,&
this.cbx_use_pos,&
this.sle_num_processed,&
this.st_9,&
this.lb_devel,&
this.sle_num_others,&
this.st_8,&
this.st_7,&
this.dw_specs_others,&
this.st_6,&
this.lb_col_xref,&
this.sle_num_init_errors,&
this.st_1,&
this.pb_init_table,&
this.sle_num_specs,&
this.st_5,&
this.sle_num_grpids,&
this.st_4,&
this.st_3,&
this.dw_lay_specs,&
this.rb_all,&
this.rb_emergsvcs,&
this.rb_judicial,&
this.rb_patrol,&
this.rb_corrections,&
this.st_2,&
this.dw_bd_groupids,&
this.pb_14,&
this.gb_1}
end on

on w_devel_supt.destroy
destroy(this.st_11)
destroy(this.lb_orderby_bak)
destroy(this.st_save_debug_location)
destroy(this.pb_save_debug)
destroy(this.st_db_identity)
destroy(this.st_10)
destroy(this.cbx_use_pos)
destroy(this.sle_num_processed)
destroy(this.st_9)
destroy(this.lb_devel)
destroy(this.sle_num_others)
destroy(this.st_8)
destroy(this.st_7)
destroy(this.dw_specs_others)
destroy(this.st_6)
destroy(this.lb_col_xref)
destroy(this.sle_num_init_errors)
destroy(this.st_1)
destroy(this.pb_init_table)
destroy(this.sle_num_specs)
destroy(this.st_5)
destroy(this.sle_num_grpids)
destroy(this.st_4)
destroy(this.st_3)
destroy(this.dw_lay_specs)
destroy(this.rb_all)
destroy(this.rb_emergsvcs)
destroy(this.rb_judicial)
destroy(this.rb_patrol)
destroy(this.rb_corrections)
destroy(this.st_2)
destroy(this.dw_bd_groupids)
destroy(this.pb_14)
destroy(this.gb_1)
end on

event open;long ll_num_retrieved
ll_num_retrieved = f_populate_datawindow(ref dw_bd_groupids, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
sle_num_grpids.text = string(ll_num_retrieved)
ll_num_retrieved = f_populate_datawindow(ref dw_lay_specs, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
sle_num_specs.text = string(ll_num_retrieved)
ll_num_retrieved = f_populate_datawindow(ref dw_specs_others, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
sle_num_others.text = string(ll_num_retrieved)

string ls_dbidentity
ls_dbidentity = f_get_db_identity(ref sqlca)
st_db_identity.text = ls_dbidentity
end event

type st_11 from statictext within w_devel_supt
integer x = 7045
integer y = 2240
integer width = 507
integer height = 60
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
long textcolor = 33554432
long backcolor = 67108864
string text = "OrderBy Temp Backup"
boolean focusrectangle = false
end type

type lb_orderby_bak from listbox within w_devel_supt
integer x = 7035
integer y = 2312
integer width = 677
integer height = 1224
integer taborder = 80
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
long backcolor = 15780518
boolean vscrollbar = true
boolean sorted = false
borderstyle borderstyle = stylelowered!
end type

type st_save_debug_location from statictext within w_devel_supt
integer x = 5353
integer y = 3572
integer width = 736
integer height = 60
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
long textcolor = 33554432
long backcolor = 67108864
string text = "c:\\temp\staffingsuptbds_debug.txt"
alignment alignment = center!
boolean focusrectangle = false
end type

type pb_save_debug from picturebutton within w_devel_supt
integer x = 6107
integer y = 3556
integer width = 357
integer height = 100
integer taborder = 70
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
string text = "Save Listbox"
boolean originalsize = true
end type

event clicked;string ls_save_location
ls_save_location = st_save_debug_location.text
f_save_lb_to_file(ls_save_location, ref lb_devel)
end event

type st_db_identity from statictext within w_devel_supt
integer x = 329
integer y = 20
integer width = 288
integer height = 60
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
long textcolor = 33554432
long backcolor = 67108864
string text = "none"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_10 from statictext within w_devel_supt
integer x = 114
integer y = 2240
integer width = 553
integer height = 56
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 255
long backcolor = 553648127
string text = "Using Positions Table"
alignment alignment = center!
boolean focusrectangle = false
end type

type cbx_use_pos from checkbox within w_devel_supt
integer x = 27
integer y = 2232
integer width = 82
integer height = 76
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
long textcolor = 255
long backcolor = 16777215
boolean checked = true
end type

type sle_num_processed from singlelineedit within w_devel_supt
integer x = 41
integer y = 2460
integer width = 238
integer height = 80
integer taborder = 60
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
long backcolor = 553648127
string text = "0"
borderstyle borderstyle = stylelowered!
end type

type st_9 from statictext within w_devel_supt
integer x = 27
integer y = 2404
integer width = 247
integer height = 56
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
long textcolor = 33488896
long backcolor = 553648127
string text = "#Processed"
alignment alignment = center!
boolean focusrectangle = false
end type

type lb_devel from listbox within w_devel_supt
integer x = 5339
integer y = 2316
integer width = 1559
integer height = 1224
integer taborder = 70
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
long backcolor = 12639424
boolean vscrollbar = true
boolean sorted = false
borderstyle borderstyle = stylelowered!
end type

type sle_num_others from singlelineedit within w_devel_supt
integer x = 1938
integer y = 2228
integer width = 165
integer height = 80
integer taborder = 40
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
long backcolor = 553648127
string text = "0"
borderstyle borderstyle = stylelowered!
end type

type st_8 from statictext within w_devel_supt
integer x = 1650
integer y = 2244
integer width = 270
integer height = 56
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
long textcolor = 33488896
long backcolor = 553648127
string text = "#Records:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_7 from statictext within w_devel_supt
integer x = 919
integer y = 2244
integer width = 709
integer height = 56
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33488896
long backcolor = 553648127
string text = "SNS_BOARD_SPECS_OTHERS"
alignment alignment = center!
boolean focusrectangle = false
end type

type dw_specs_others from datawindow within w_devel_supt
integer x = 910
integer y = 2304
integer width = 4379
integer height = 1324
integer taborder = 60
string title = "none"
string dataobject = "dw_bd_specs_others"
boolean hscrollbar = true
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

type st_6 from statictext within w_devel_supt
integer x = 14
integer y = 2564
integer width = 699
integer height = 56
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
long textcolor = 33488896
long backcolor = 553648127
string text = "GRPDESC|GRP#|EMP#|UF#|BLK#"
alignment alignment = right!
boolean focusrectangle = false
end type

type lb_col_xref from listbox within w_devel_supt
integer x = 18
integer y = 2632
integer width = 859
integer height = 996
integer taborder = 60
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
boolean vscrollbar = true
boolean sorted = false
string item[] = {"TEAM A|1","TEAM B|2","TEAM C|3","TEAM D|4","REC 1|5","REC 2|6","EM1|1","EM2|2","EMSRO|3","VINEYARD|4","SMCONT|5","FTO|6","RESERVES|1","CHIEF DEPUTIES|2","SUPERVISORS|3","UNASSIGNED|2"}
borderstyle borderstyle = stylelowered!
end type

event doubleclicked;integer li_index
li_index = index
if(li_index >= 0) then
	string ls_lbtext
	ls_lbtext = lb_col_xref.text(li_index)
	if(f_len_ext(ls_lbtext) > 0) then
		long ll_num_retrieved
		ll_num_retrieved = f_populate_datawindow(ref dw_specs_others, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
		sle_num_others.text = string(ll_num_retrieved)
		
		
	end if
end if
end event

type sle_num_init_errors from singlelineedit within w_devel_supt
integer x = 352
integer y = 2464
integer width = 160
integer height = 80
integer taborder = 50
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
long backcolor = 553648127
string text = "0"
borderstyle borderstyle = stylelowered!
end type

type st_1 from statictext within w_devel_supt
integer x = 338
integer y = 2404
integer width = 206
integer height = 56
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
long textcolor = 33488896
long backcolor = 553648127
string text = "#Errors:"
alignment alignment = center!
boolean focusrectangle = false
end type

type pb_init_table from picturebutton within w_devel_supt
integer x = 14
integer y = 2304
integer width = 553
integer height = 104
integer taborder = 40
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
string text = "Re-Initilize Table"
boolean originalsize = true
long backcolor = 12639424
end type

event clicked;gi_max_rows = 42
gi_max_cols = 6
integer li_rloop
integer li_cloop
string ls_row
string ls_col
long ll_num_spec_rows
long ll_row
string ls_sql_err_text
integer li_num_processed
//------------------------
string ls_radio_group
ls_radio_group = f_get_active_group(rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs)
string ls_groupname
long ll_grpid
string ls_grpdesc
string ls_start_row
string ls_start_col
integer li_num_rows
integer li_num_cols
string ls_callnums
string lsa_callnums[]
integer li_num_callnums
//------------------------
integer li_col_found
integer li_iloop
string ls_callnums_inserted
string ls_lookup_callnum
string ls_lookup_callnumber_only
//------------------------
long ll_found_id
string ls_found_addinfo
string ls_found_empname
long ll_found_empno
integer li_found_super_lvl
long ll_found_assgnd_empno
//------------------------
integer li_num_inserted
integer li_num_errors
integer li_num_not_found
li_num_inserted = 0
li_num_errors = 0
li_num_not_found = 0
//------------------------
integer li_offset_row
integer li_row_group
integer li_actual_row
integer li_unfilled
li_row_group = 1
li_offset_row = 0
//------------------------
string lsa_unassigned[]
string lsa_other[]
integer li_num_unassigned
integer li_num_others
string lsa_nulls[]
string ls_unassigned_sql
string ls_other_sql
string lsa_parseoutdata[]
integer li_num_parse_items
string ls_grpid
//==============================================================
string ls_trun_sql
boolean bcontinue
integer li_num_successful_executes
string ls_trun_errors
//==============================================================
integer li_loop_num_callnums //(li_num_others + (li_num_callnums - li_num_others))) ie: (4 + (6 - 4)) = 6
integer li_num_callnums_to_process
integer li_num_others_to_process
integer li_looprow
integer li_bloop
integer li_last_nrow_inserted
//==============================================================
integer li_stop
//==============================================================
li_num_processed = 0
string ls_funddept
string ls_positionid
boolean bInsertPosSuptTables
//==============================================================
string ls_temp_positionid
ls_temp_positionid = f_get_next_temp_positionid(ref sqlca)
//==============================================================
string ls_vehnum
decimal dec_basepay
long ll_xrefid
string ls_callnum
string ls_jobcode
string ls_jobtitle
long ll_assgnd_empno
string ls_addinfo
integer li_rtn_value
string ls_error
//==============================================================
string lsa_lbxref[]
integer li_num_lbxref_items
//==============================================================
long ll_num_avail_positions
//==============================================================
string ls_empname_unfilled
ls_empname_unfilled = "*** UNFILLED ***"
string ls_debug
//==============================================================
//string ls_test_instring
//string ls_chars_to_trim
//ls_test_instring = "1J1151J"
//ls_chars_to_trim = "1J"
////integer li_count
////li_count = f_count_num_strings(ls_test_instring, ls_count_string)
//string ls_trim_str
//ls_trim_str = f_trimstr_multi_chars_ext(ls_test_instring, ls_chars_to_trim)

//==========================================================
//========= backup order by into lb_orderby_bak table ======
//==========================================================
string lsa_obbak[]
integer li_num_orderby_items
string ls_ob_sql
lb_orderby_bak.reset()
ls_ob_sql = "select grpid, callnum, orderby from sns_board_specs_others"
li_num_orderby_items = f_app_ds_populate_string_array_by_sql(ref lsa_obbak, ls_ob_sql, gi_pad_len, gs_delim, gb_compress, ref sqlca)
integer li_oloop
string ls_oloopdata
for li_oloop = 1 to li_num_orderby_items
	ls_oloopdata = lsa_obbak[li_oloop]
	lb_orderby_bak.additem(ls_oloopdata)
next
//==========================================================
//==========================================================
//==========================================================
ls_trun_sql = "truncate table SNS_BOARD_SPECS_OTHERS"
execute immediate :ls_trun_sql using sqlca;
if(sqlca.sqlcode <> -1) then
	//
	commit using sqlca;
	//
	li_num_successful_executes++
	bcontinue = true
else
	ls_sql_err_text = sqlca.sqlerrtext
	//
	rollback using sqlca;
	//
	ls_trun_errors = "truncate table SNS_BOARD_SPECS_OTHERS error: " 
	ls_trun_errors += ls_sql_err_text
end if
if(bcontinue = true) then
	bcontinue = false
	ls_trun_sql = "DROP SEQUENCE SNS_BOARD_SPECS_OTHERS_id"
	execute immediate :ls_trun_sql using sqlca;
	if(sqlca.sqlcode <> -1) then
		//
		commit using sqlca;
		//
		li_num_successful_executes++
		bcontinue = true
	else
		ls_sql_err_text = sqlca.sqlerrtext
		//
		rollback using sqlca;
		//
		if(f_len_ext(ls_trun_errors) > 0) then
			ls_trun_errors += gs_crlf
		end if
		ls_trun_errors += "drop sequence sns_board_specs_others_id error:"
		ls_trun_errors += ls_sql_err_text
	end if
end if
if(bcontinue = true) then
	bcontinue = false
	ls_trun_sql = "CREATE SEQUENCE SNS_BOARD_SPECS_OTHERS_id "
	ls_trun_sql += "START WITH 1 "
	ls_trun_sql += "INCREMENT BY 1 "
	ls_trun_sql += "NOCACHE "
	ls_trun_sql += "NOCYCLE"
	execute immediate :ls_trun_sql using sqlca;
	if(sqlca.sqlcode <> -1) then
		//
		commit using sqlca;
		//
		li_num_successful_executes++
		bcontinue = true
	else
		ls_sql_err_text = sqlca.sqlerrtext
		//
		rollback using sqlca;
		//
		if(f_len_ext(ls_trun_errors) > 0) then
			ls_trun_errors += gs_crlf
		end if
		ls_trun_errors += "create sequence sns_board_specs_others_id error:"
		ls_trun_errors += ls_sql_err_text
	end if
end if
if(bcontinue = true) then
	bcontinue = false
	ls_trun_sql = "create or replace trigger SNS_BOARD_SPECS_OTHERS_trig "
	ls_trun_sql += "before insert on SNS_BOARD_SPECS_OTHERS "
	ls_trun_sql += "for each row "
	ls_trun_sql += "begin "
	ls_trun_sql += "select SNS_BOARD_SPECS_OTHERS_id.nextval, sysdate, sysdate into :new.ID, :new.CREATED_DT, :new.LUPDATED_DT from dual; "
	ls_trun_sql += "end;"
	execute immediate :ls_trun_sql using sqlca;
	if(sqlca.sqlcode <> -1) then
		//
		commit using sqlca;
		//
		li_num_successful_executes++
		bcontinue = true
	else
		ls_sql_err_text = sqlca.sqlerrtext
		//
		rollback using sqlca;
		//
		if(f_len_ext(ls_trun_errors) > 0) then
			ls_trun_errors += gs_crlf
		end if
		ls_trun_errors += "create or replace trigger SNS_BOARD_SPECS_OTHERS_trig error:"
		ls_trun_errors += ls_sql_err_text
	end if
end if
if(bcontinue = true) then
	bcontinue = false
	ls_trun_sql = "create or replace trigger SNS_BOARD_SPECS_OTHERS_trig1 "
	ls_trun_sql += "before update on SNS_BOARD_SPECS_OTHERS "
	ls_trun_sql += "for each row "
	ls_trun_sql += "begin "
	ls_trun_sql += "select sysdate into :new.lupdated_dt from dual; "
	ls_trun_sql += "end;"
	execute immediate :ls_trun_sql using sqlca;
	if(sqlca.sqlcode <> -1) then
		//
		commit using sqlca;
		//
		li_num_successful_executes++
		bcontinue = true
	else
		ls_sql_err_text = sqlca.sqlerrtext
		//
		rollback using sqlca;
		//
		if(f_len_ext(ls_trun_errors) > 0) then
			ls_trun_errors += gs_crlf
		end if
		ls_trun_errors += "create or replace trigger SNS_BOARD_SPECS_OTHERS_trig1 error:"
		ls_trun_errors += ls_sql_err_text
	end if
end if
if(f_len_ext(ls_trun_errors) > 0) then
	string ls_terror_msg
	ls_terror_msg = "Truncate table SNS_BOARD_SPECS_OTHERS failed. Errors:" + gs_crlf
	ls_terror_msg += ls_trun_errors
	MessageBox("Notification", ls_terror_msg);
else
	//==============================================================
	string ls_sql_pos2_template
	ls_sql_pos2_template = "select 'POS-' || to_char(a.id) as POS, "
	ls_sql_pos2_template += "'EMP-' || to_char(b.id) as EMP, "
	ls_sql_pos2_template += "b.empname, " 
	ls_sql_pos2_template += "a.assgnd_empno, " 
	ls_sql_pos2_template += "a.funddept, " 
	ls_sql_pos2_template += "a.addinfo, " 
	ls_sql_pos2_template += "c.grpteam || ' {' || c.id || '}' as grpteamid, " 
	ls_sql_pos2_template += "b.positionid, " 
	ls_sql_pos2_template += "a.callnum, " 
	ls_sql_pos2_template += "a.positionid, "
	ls_sql_pos2_template += "'Y' as posvis, "
	ls_sql_pos2_template += "'Y' as empvis, "
	ls_sql_pos2_template += "b.super_lvl, "
	ls_sql_pos2_template += "a.id "
	ls_sql_pos2_template += "from sns_staffing_grps_positions2 a, sns_employees b, sns_staffing_groups c "
	ls_sql_pos2_template += "where b.empno = a.assgnd_empno "
	ls_sql_pos2_template += "and a.active = 1 "
	ls_sql_pos2_template += "and a.grpid = GGGGGG "
	ls_sql_pos2_template += "and c.id = a.grpid "
	ls_sql_pos2_template += "and b.active = 1 "
	ls_sql_pos2_template += "order by b.super_lvl desc, a.callnum "
	//==============================================================
	//sns_bd_others_layout_specs datawindow
	//example data...
	//id  created_dt  lupdated_dt grpid grpdesc			strow stcol numrows	numcols  callnums																								orderby groupname active
	//1	03-MAY-23	03-MAY-23	1		TEAM A			03		01		12			1			1J110,1J112,1J113,1J114,1J115,1J119															01		  PATRoL	1
	//2	03-MAY-23	03-MAY-23	2		TEAM B			03		02		12			1			1J120,1J122,1J123,1J124,1J125,1J127,1J129													02	     PATROL	1
	//3	03-MAY-23	03-MAY-23	3		TEAM C			03		03		12			1			1J130,1J132,1J133,1J134,1J135,1J137,1J139													03	     PATROL	1
	//4	03-MAY-23	03-MAY-23	4		TEAM D			03		04		12			1			1J140,1J142,1J143,1J144,1J145,1J149															04	     PATROL	1
	//5	03-MAY-23	03-MAY-23	5		REC 1				03		05		12			1			1J180,1J182,1J183,1J184,1J189																	05	     PATROL	1
	//6	03-MAY-23	03-MAY-23	6		REC 2				03		06		12			1			1J190,1J192,1J193,1J194,1J199																	06	     PATROL	1
	//7	03-MAY-23	03-MAY-23	8		EM1				17		01		12			1			1J2503,1J2531,1J2532,1J2533,1J2534,1J2535,1J2536,1J2537,1J2538						07	     PATROL	1
	//8	03-MAY-23	03-MAY-23	9		EM2				17		02		12			1			1J2504,1J2541,1J2542,1J2543,1J2544,1J2545,1J2546,1J2547,1J2548						08	     PATROL	1
	//9	03-MAY-23	03-MAY-23	10		EMSRO				17		03		12			1			1J2505,1J2521,1J2522,1J2523,1J2524															09	     PATROL	1
	//10	03-MAY-23	03-MAY-23	11		VINEYARD			17		04		12			1			1J1210,1J1211,1J1213,1J1214,1J1208,1J1221,1J1222,1J1223,1J1224						10	     PATROL	1
	//11	03-MAY-23	03-MAY-23	12		SMCONT			17		05		12			1			1J160, 1J161,1J162																				11	     PATROL	1
	//12	03-MAY-23	03-MAY-23	52		FTO				17		06		12			1			1J151,1J152,1J153,1J154,1J155,1J156															12	     PATROL	1
	//15	03-MAY-23	20-JUN-23	64		SUPERVISORS		31		04		12			1			1J10,1J11,1J12,1J1201																			15	     PATROL	1
	//14	03-MAY-23	20-JUN-23	116	CHIEF DEPUTIES	31		03		12			1			1J3,1J2501																							14	     PATROL	1
	//13	03-MAY-23	03-MAY-23	129	RESERVES			31		01		12			1			1J1801,1J1802,1J1803,1J1804,1J1805,1J1806,1J1807,1J1808,1J1811,1J1812,1J1814	13	     PATROL	1
	//16	20-JUN-23	20-JUN-23	131	UNASSIGNED		31		02		12			1			1J,1J,1J,1J,1J,1J,1J,1J,1J,1J,1J,1J															16	     PATROL	1
	//
	//================================================================
	//populate lsa_lbxref with lb_col_xref items
	//string lsa_lbxref[]
	//integer li_num_lbxref_items
	integer li_num_lb_items
	li_num_lb_items = lb_col_xref.totalitems()
	integer li_lbloop
	string ls_lbtext
	for li_lbloop = 1 to li_num_lb_items
		ls_lbtext = lb_col_xref.text(li_lbloop)
		f_add_item_to_string_array_ext(ref lsa_lbxref, ls_lbtext, true)
	next
	integer li_num_emps
	integer li_num_unfilled
	integer li_num_blanks
	integer li_num_dup_callnums
	long ll_empname_exists_id
	boolean b_ok_to_insert
	li_num_emps = 0
	li_num_unfilled = 0
	li_num_blanks = 0
	//================================================================
	ll_num_spec_rows = dw_lay_specs.rowcount()
	if(ll_num_spec_rows > 0) then
		for ll_row = 1 to ll_num_spec_rows
			li_num_processed++
			ls_callnums_inserted = ""
			//-----------------
			ls_groupname = ""
			ll_grpid = 0
			ls_grpdesc = ""
			ls_start_row = ""
			ls_start_col = ""
			li_num_rows = 0
			li_num_cols = 0
			ls_callnums = ""
			li_unfilled = 0
			//-----------------
			ls_funddept = ""
			
			li_num_callnums_to_process = 0
			li_num_others_to_process = 0
			//-----------------
			li_looprow = 0
			//-----------------
			//lb_devel.reset()
			//-----------------
			try
				ls_groupname = dw_lay_specs.getitemstring(ll_row, 'groupname')
				ll_grpid = dw_lay_specs.getitemnumber(ll_row, 'grpid')
				ls_grpdesc = dw_lay_specs.getitemstring(ll_row, 'grpdesc')
				ls_start_row = dw_lay_specs.getitemstring(ll_row, 'strow')
				ls_start_col = dw_lay_specs.getitemstring(ll_row, 'stcol')
				li_num_rows = dw_lay_specs.getitemnumber(ll_row, 'numrows')
				li_num_cols = dw_lay_specs.getitemnumber(ll_row, 'numcols')
				ls_callnums = dw_lay_specs.getitemstring(ll_row, 'callnums')
			catch(RunTimeError rte)
				li_stop = 9
			end try
			
			if((ll_grpid = 1) or (ll_grpid = 2) or (ll_grpid = 3) or (ll_grpid = 4) or (ll_grpid = 5) or (ll_grpid = 6)) then
				li_offset_row = 0
			elseif((ll_grpid = 8) or (ll_grpid = 9) or (ll_grpid = 10) or (ll_grpid = 11) or (ll_grpid = 12) or (ll_grpid = 52)) then
				li_offset_row = 14
			elseif((ll_grpid = 129) or (ll_grpid = 116) or (ll_grpid = 64) or (ll_grpid = 131)) then
				li_offset_row = 28
			end if
			if(ll_grpid > 0) then
				//
				select funddept into :ls_funddept from sns_staffing_groups where id = :ll_grpid using sqlca;
				//			
			end if
			li_num_callnums = f_parseoutstring_ext(ls_callnums, ",", ref lsa_callnums)
			ls_grpid = string(ll_grpid)
			ls_other_sql = ls_sql_pos2_template
			ls_other_sql = f_replace_string_in_string(ls_other_sql, "GGGGGG", ls_grpid)
			lsa_other = lsa_nulls
			li_num_others = f_app_ds_populate_string_array_by_sql(ref lsa_other, ls_other_sql, gi_pad_len, gs_delim, gb_compress, ref sqlca)			
			li_loop_num_callnums = (li_num_others + (li_num_callnums - li_num_others))
			li_num_others_to_process = li_num_others
			li_num_callnums_to_process = li_loop_num_callnums

			if(cbx_use_pos.checked = false) then
				if(ll_grpid <> 131) then 
					//====================================
					//===== ALL BUT UNASSIGNED (131) =====
					//====================================
					li_num_emps = 0
					li_num_unfilled = 0
					li_num_blanks = 0
					for li_iloop = 1 to li_num_rows  //1 to 12
						bInsertPosSuptTables = false
						//---------------------------
						ll_found_id = 0
						ls_found_addinfo = ""
						ls_found_empname = ""
						ll_found_empno = 0
						li_found_super_lvl = 0
						ls_lookup_callnum = ""
						ls_sql_err_text = ""			
						//---------------------------		
						if(li_iloop <= UpperBound(lsa_callnums)) then
							ls_lookup_callnum = trim(upper(lsa_callnums[li_iloop]))
						end if
						if(li_iloop <= li_num_others_to_process) then
							lb_devel.additem(string(li_iloop) + "-add others-filled-callnum " + ls_grpid)
							ll_found_id = 0
							ll_found_id = f_does_string_exist_in_str_array(lsa_other, ls_lookup_callnum, false)
							if(ll_found_id > 0) then	
								li_looprow++						
								//---------------------------						
								li_actual_row = (li_looprow + li_offset_row)
								ls_row = f_lpad(string(li_actual_row), 2, "0")
								li_col_found = f_deter_grpdesc_colnum(ref lb_col_xref, ls_grpdesc)
								ls_col = f_lpad(string(li_col_found), 2, "0")
								//------------------------
								select a.id, a.addinfo, b.empname, b.empno, b.super_lvl, a.assgnd_empno into :ll_found_id, :ls_found_addinfo, :ls_found_empname, :ll_found_empno, :li_found_super_lvl, :ll_found_assgnd_empno
								from sns_staffing_grps_positions2 a, sns_employees b
								where a.grpid = :ll_grpid
								and a.callnum = :ls_lookup_callnum
								and b.empno = a.assgnd_empno
								//and a.assgnd_empno = b.empno
								using sqlca;
								//------------------------			
								if(ll_found_empno = 0) then
									li_unfilled = 1
									li_num_unfilled++
								else
									li_unfilled = 0
								end if
								if(IsNull(ls_found_empname) = false) then
									if(f_len_ext(ls_found_empname) > 0) then
										li_num_emps++
									end if
								else
									if((f_len_ext(ls_lookup_callnum) > 0) and (pos(ls_lookup_callnum, "1J") > 0) and (li_unfilled = 1)) then
										ls_found_empname = ls_empname_unfilled //"*** UNFILLED ***"
									else
										ls_found_empname = ""
									end if
								end if
								//prevent duplicate empname's
								ls_found_empname = trim(upper(ls_found_empname))
								ll_empname_exists_id = 0
								//
								select id into :ll_empname_exists_id from sns_board_specs_others where ltrim(rtrim(upper(empname))) = :ls_found_empname using sqlca;
								//
								b_ok_to_insert = true
								if(pos(ls_found_empname, "UNFILLED") = 0) then
									if(ll_empname_exists_id > 0) then
										b_ok_to_insert = false
									end if
								end if
								if(b_ok_to_insert = true) then
									ls_debug = ls_row+"|"+ls_col+"|"+string(ll_grpid)+"|"+ls_found_empname+"|"+string(ll_found_empno)+"|"+ls_lookup_callnum+"|"+string(li_found_super_lvl)+"|"+string(li_unfilled)
									lb_devel.additem(ls_debug)
									
//									//
//									insert into sns_board_specs_others(groupname, nrow, ncol, grpid, empname, empno, callnum, issuper, isunfilled, active)
//									values(:ls_groupname, :ls_row, :ls_col, :ll_grpid, :ls_found_empname, :ll_found_empno, :ls_lookup_callnum, :li_found_super_lvl, :li_unfilled, 1)
//									using sqlca;
//									//
//									//insert#1
//									//
//									if(sqlca.sqlcode <> -1) then
//										//
//										commit using sqlca;
//										//
//										li_num_inserted++
//										if(li_unfilled = 1) then
//											bInsertPosSuptTables = true
//										end if
//									else
//										ls_sql_err_text = sqlca.sqlerrtext
//										//
//										rollback using sqlca;
//										//
//										li_num_errors++
//									end if						
								end if
							end if
						elseif(li_iloop <= li_num_callnums_to_process) then
							lb_devel.additem(string(li_iloop) + "-add others-unfilled-callnum " + ls_grpid)
							if(f_len_ext(ls_lookup_callnum) > 0) then
								//ls_lookup_callnumber_only = f_trimstr_ext(ls_lookup_callnum, "1J", true)
								//ls_lookup_callnumber_only = f_trimstr_multi_chars_ext(ls_lookup_callnum, "1J")
								ls_lookup_callnumber_only = f_trimstr_multi_chars_ext(ls_lookup_callnum, "1J")
							end if
							//-----------------------------
	//						select id, addinfo, assgnd_empno into :ll_found_id, :ls_found_addinfo, :ll_found_empno
	//						from sns_staffing_grps_positions2
	//						where grpid = :ll_grpid
	//						and ((addinfo = :ls_lookup_callnumber_only) or (callnum = :ls_lookup_callnum))
	//						using sqlca;
							//-----------------------------
							//if(ll_found_id > 0) then
								li_looprow++						
								//---------------------------						
								li_actual_row = (li_looprow + li_offset_row)
								ls_row = f_lpad(string(li_actual_row), 2, "0")
								li_col_found = f_deter_grpdesc_colnum(ref lb_col_xref, ls_grpdesc)
								ls_col = f_lpad(string(li_col_found), 2, "0")
								//------------------------
							
								if(ll_found_empno = 0) then
									li_unfilled = 1
									li_num_unfilled++
								else
									li_unfilled = 0
								end if
								if(IsNull(ls_found_empname) = false) then
									if(f_len_ext(ls_found_empname) > 0) then
										li_num_emps++
									end if
								end if
								//
								//prevent duplicate empname's
								ls_found_empname = trim(upper(ls_found_empname))
								ll_empname_exists_id = 0
								//
								select id into :ll_empname_exists_id from sns_board_specs_others where ltrim(rtrim(upper(empname))) = :ls_found_empname using sqlca;
								//
								b_ok_to_insert = true
								if(pos(ls_found_empname, "UNFILLED") = 0) then
									if(ll_empname_exists_id > 0) then
										b_ok_to_insert = false
									end if
								end if
								if(b_ok_to_insert = true) then							
									ls_debug = ls_row+"|"+ls_col+"|"+string(ll_grpid)+"|"+ls_empname_unfilled+"|0|"+ls_lookup_callnum+"|0|"+string(li_unfilled)
									lb_devel.additem(ls_debug)
									
//									insert into sns_board_specs_others(groupname, nrow, ncol, grpid, empname, empno, callnum, issuper, isunfilled, active)
//									values(:ls_groupname, :ls_row, :ls_col, :ll_grpid, :ls_empname_unfilled, 0, :ls_lookup_callnum, 0, :li_unfilled, 1)
//									using sqlca;
//									//
//									//insert#2
//									//
//									if(sqlca.sqlcode <> -1) then
//										//
//										commit using sqlca;
//										//
//										li_num_inserted++
//										if(li_unfilled = 1) then
//											bInsertPosSuptTables = true
//										end if
//									else
//										ls_sql_err_text = sqlca.sqlerrtext
//										//
//										rollback using sqlca;
//										//
//										li_num_errors++
//									end if
								end if
//							end if							
						else
							lb_devel.additem(string(li_iloop) + "-add empty record " + ls_grpid)
								li_looprow++						
								//---------------------------						
								li_actual_row = (li_looprow + li_offset_row)
								ls_row = f_lpad(string(li_actual_row), 2, "0")
								li_col_found = f_deter_grpdesc_colnum(ref lb_col_xref, ls_grpdesc)
								ls_col = f_lpad(string(li_col_found), 2, "0")
								//------------------------
							
							if(ll_found_empno = 0) then
								li_unfilled = -1
								li_num_blanks++
							else
								li_unfilled = 0
							end if				
							//
							if(IsNull(ls_found_empname) = false) then
								if(f_len_ext(ls_found_empname) > 0) then
									li_num_emps++
								end if
							end if
							
							ls_debug = ls_row+"|"+ls_col+"|"+string(ll_grpid)+"| |0| |0|"+string(li_unfilled)
							lb_devel.additem(ls_debug)
							
//							insert into sns_board_specs_others(groupname, nrow, ncol, grpid, empname, empno, callnum, issuper, isunfilled, active)
//							values(:ls_groupname, :ls_row, :ls_col, :ll_grpid, '', 0, '', 0, :li_unfilled, 1)
//							using sqlca;
//							//
//							//insert#3
//							//
//							if(sqlca.sqlcode <> -1) then
//								//
//								commit using sqlca;
//								//
//								li_num_inserted++
//							else
//								ls_sql_err_text = sqlca.sqlerrtext
//								//
//								rollback using sqlca;
//								//
//								li_num_errors++
//							end if						
						end if
						//====================================
						//insert position2 and support records
						//=====================================
						bInsertPosSuptTables = false
						if(bInsertPosSuptTables = true) then
							if(ll_grpid > 0) then
								ls_vehnum = "."
								dec_basepay = 0.0
								ll_xrefid = 0
								ls_jobcode = "TBD"
								ls_jobtitle = "TBD"					
								ls_callnum = ""
								ls_addinfo = "."
								ll_assgnd_empno = 0
								ls_error = ""
								li_rtn_value = 0
								if(ll_found_empno = 0) then
									ll_assgnd_empno = 0
								else
									ll_assgnd_empno = ll_found_empno
								end if			
								if(f_len_ext(ls_lookup_callnum) > 2) then
									ls_callnum = ls_lookup_callnum
								else
									if(f_len_ext(ls_lookup_callnumber_only) > 0) then
										ls_callnum = "1J" + ls_lookup_callnumber_only
										ls_addinfo = ls_lookup_callnumber_only
									end if
								end if
								if(f_len_ext(ls_funddept) = 0) then
									ls_funddept = ""
								end if
								if(f_len_ext(ls_positionid) = 0) then
									ls_positionid = ls_temp_positionid
								end if
								
								long ll_max_pos2_id_before
								long ll_max_pos2_id_after
								ll_max_pos2_id_before = 0
								ll_max_pos2_id_after = 0
								//
								select id into :ll_max_pos2_id_before from sns_staffing_grps_positions2 order by id desc fetch first row only using sqlca;
								//
								//
//								insert into sns_staffing_grps_positions2(grpid, callnum, assgnd_empno, funddept, addinfo, vehnum, positionid, jobcode, jobtitle, basepay, xrefid, active)
//								values(:ll_grpid, :ls_callnum, :ll_assgnd_empno, :ls_funddept, :ls_addinfo, :ls_vehnum, :ls_positionid, :ls_jobcode, :ls_jobtitle, :dec_basepay, :ll_xrefid, 1)
//								using sqlca;
//								//
//								if(sqlca.sqlcode <> -1) then
//									//
//									commit using sqlca;
//									//
//									//
//									select id into :ll_max_pos2_id_after from sns_staffing_grps_positions2 order by id desc fetch first row only using sqlca;
//									//								
//									//f_insert_pos2_support_table_records(ll_grpid, ls_callnum, ll_empno, ls_funddept, ls_addinfo, ls_vehinfo, ls_positionid, ls_jobcode, ls_jobtitle, dec_basepay, b_modify_positions2_table, ref ls_error, ref sqlca)
//									li_rtn_value = f_insert_pos2_support_table_records(ll_grpid, ls_callnum, ll_assgnd_empno, ls_funddept, ls_addinfo, ls_vehnum, ls_positionid, ls_jobcode, ls_jobtitle, dec_basepay, true, ref ls_error, ref sqlca)
//									//
//								else
//									ls_sql_err_text = sqlca.sqlerrtext
//									//
//									rollback using sqlca;
//									//
//								end if			
							end if //ll_grpid > 0
						end if	
						if(li_iloop = li_num_rows) then
							li_stop = 1
						end if
					next //li_iloop
					if(li_looprow < li_num_rows) then
						//=================
						//insert blank rows
						//=================
						li_last_nrow_inserted = 0
						//
						select nrow into :li_last_nrow_inserted from sns_board_specs_others order by id desc fetch first row only using sqlca;
						//
						li_last_nrow_inserted = (li_last_nrow_inserted - li_offset_row)
						if(li_looprow = li_last_nrow_inserted) then
							li_looprow++
						end if
						//insert blank rows
						for li_bloop = li_looprow to li_num_rows
							//---------------------------						
							li_actual_row = (li_bloop + li_offset_row)
							ls_row = f_lpad(string(li_actual_row), 2, "0")
							li_col_found = f_deter_grpdesc_colnum(ref lb_col_xref, ls_grpdesc)
							ls_col = f_lpad(string(li_col_found), 2, "0")
							//------------------------
							li_unfilled = -1
							li_num_blanks++
							//prevent duplicate empname's
							ls_found_empname = trim(upper(ls_found_empname))
							ll_empname_exists_id = 0
							//
							select id into :ll_empname_exists_id from sns_board_specs_others where ltrim(rtrim(upper(empname))) = :ls_found_empname using sqlca;
							//
							b_ok_to_insert = true
							if(pos(ls_found_empname, "UNFILLED") = 0) then
								if(ll_empname_exists_id > 0) then
									b_ok_to_insert = false
								end if
							end if
							if(b_ok_to_insert = true) then		
								ls_debug = ls_row+"|"+ls_col+"|"+string(ll_grpid)+"| |0| |0|"+string(li_unfilled)
								lb_devel.additem(ls_debug)							
//								//
//								insert into sns_board_specs_others(groupname, nrow, ncol, grpid, empname, empno, callnum, issuper, isunfilled, active)
//								values(:ls_groupname, :ls_row, :ls_col, :ll_grpid, '', 0, '', 0, :li_unfilled, 1)
//								using sqlca;
//								//
//								if(sqlca.sqlcode <> -1) then
//									//
//									commit using sqlca;
//									//
//									li_num_inserted++
//								else
//									ls_sql_err_text = sqlca.sqlerrtext
//									//
//									rollback using sqlca;
//									//
//									li_num_errors++
//								end if						
							end if
						next //li_bloop
					end if
					//MessageBox("devel","pause")
				else
					//============================
					//===== UNASSIGNED (131) =====
					//============================
					
					
					
					
					li_stop = 0
				end if
			else
				//populate using sns_staffing_grps_positions2 table info
				string lsa_pos_info[]
				integer li_num_pos_info_items
				string ls_positions_sql
				integer li_num_blank_positions
				integer li_num_non_blank_positions
				integer li_ploop
				integer li_blank_loop
				string ls_ploopdata
				string ls_pos_empname
				long ll_pos_assgnd_empno
				string ls_pos_funddept
				string ls_pos_addinfo
				string ls_pos_grpteamid
				string ls_pos_grpid
				long ll_pos_grpid
				string ls_pos_positionid
				string ls_pos_callnum
				integer li_pos_super_lvl
				long ll_to_grpid
				string ls_inserted_callnums
				//-----------------------------
				integer li_num_def_callnums
				li_num_def_callnums = UpperBound(lsa_callnums)
				integer li_dcloop
				string ls_dcloopdata
				//-----------------------------
				ll_to_grpid = f_stol(ls_grpid)
				li_looprow = 0
				ls_groupname = "PATROL"
				ls_grpid = string(ll_grpid)
				ls_positions_sql = ls_sql_pos2_template
				ls_positions_sql = f_replace_string_in_string(ls_other_sql, "GGGGGG", ls_grpid)
				//retrieve sns_staffing_grps_positions2 currently assigned employees
				li_num_pos_info_items = f_app_ds_populate_string_array_by_sql(ref lsa_pos_info, ls_positions_sql, gi_pad_len, gs_delim, gb_compress, ref sqlca)
				//=======================================================================================================================================
				//example: grpid = 4 / TEAM D {4} 
				//                                     POS
				//                   EMP              ASSGND POS        POS    GROUPS     EMP             POS   EMP                 EMP       POS
				//POS       EMP      EMPNAME           EMPNO FUNDDEPT  ADDINFO GRPTEAMID  POSITIONID    CALLNUM POSITIONID          SUPER_LVL ID
				//=======================================================================================================================================
				//POS-452	EMP-499	CARTER-SHAWN		16993	100-42110	140	TEAM D {4}	POSITION-00304	1J140	POSITION-00304	Y	Y	1			452
				//POS-2328	EMP-492	STEELE-AMBERLEE	17501		        	14		TEAM D {4}	POSITION-00761	1J143	POSITION-00716	Y	Y	0			2328
				//POS-226	EMP-468	ALVEY-NICHOLAS		18900	100-42110	144	TEAM D {4}	POSITION-01159	1J144	POSITION-01159	Y	Y	0			226
				//POS-1664	EMP-1255	JOHNSON-STEACEY	19742	100-42110	145	TEAM D {4}	POSITION-02630	1J145	POSITION-02630	Y	Y	0			1664
				//POS-638	EMP-520		                0	   100-42110	142	TEAM D {4}	               TBD   POSITION-00066	Y	Y	0			638
				//POS-2112	EMP-520		                0	   100-42110	.		TEAM D {4}		            TBD   POSITION-00626	Y	Y	0			2112				
				//=======================================================================================================================================
				li_num_blank_positions = (li_num_rows - li_num_pos_info_items)
				li_num_non_blank_positions = li_num_pos_info_items
				for li_ploop = 1 to li_num_non_blank_positions
					//---------------------------------------
					ls_pos_empname = ""
					ll_pos_assgnd_empno = 0
					ls_pos_funddept = ""
					ls_pos_addinfo = ""
					ls_pos_grpteamid = ""
					ls_pos_grpid = ""
					ll_pos_grpid = 0
					ls_pos_positionid = ""
					ls_pos_callnum = ""
					li_pos_super_lvl = 0
					ls_grpdesc = ""
					ls_found_empname = ""
					li_unfilled = 0
					ls_inserted_callnums = ""
					li_num_dup_callnums = 0
					//---------------------------------------
					ls_ploopdata = lsa_pos_info[li_ploop]
					li_num_parse_items = f_parseoutstring_ext(ls_ploopdata, gs_delim, ref lsa_parseoutdata)
					if(li_num_parse_items >= 14) then
						ls_pos_empname = trim(upper(lsa_parseoutdata[3]))
						ll_pos_assgnd_empno = f_stol(lsa_parseoutdata[4])
						ls_pos_funddept = lsa_parseoutdata[5]
						ls_pos_addinfo = lsa_parseoutdata[6]
						ls_pos_grpteamid = lsa_parseoutdata[7]
						ls_pos_grpid = f_extract_bracketed_item(ls_pos_grpteamid, "{", "}", true)
						ll_pos_grpid = f_stol(ls_pos_grpid)
						ls_pos_positionid = trim(upper(lsa_parseoutdata[10]))
						ls_pos_callnum = trim(upper(lsa_parseoutdata[9]))
						li_pos_super_lvl = f_stoi(lsa_parseoutdata[13])
						if(ll_pos_grpid > 0) then
							if(ls_pos_callnum = "TBD") then
								ls_pos_callnum = ""
							end if
							
							if(f_len_ext(ls_pos_callnum) = 0) then 
								//determine next unfilled callnum
								for li_dcloop = 1 to li_num_def_callnums
									ls_dcloopdata = lsa_callnums[li_dcloop]
									if(pos(ls_callnums_inserted, ls_dcloopdata) = 0) then
										ls_pos_callnum = ls_dcloopdata
										exit
									end if
								next
							end if
							//
							select grpteam into :ls_grpdesc from sns_staffing_groups where grpname = :ls_groupname and id = :ls_pos_grpid using sqlca;
							//
							li_looprow++
							if((ll_grpid = 1) or (ll_grpid = 2) or (ll_grpid = 3) or (ll_grpid = 4) or (ll_grpid = 5) or (ll_grpid = 6)) then
								li_offset_row = 0
							elseif((ll_grpid = 8) or (ll_grpid = 9) or (ll_grpid = 10) or (ll_grpid = 11) or (ll_grpid = 12) or (ll_grpid = 52)) then
								li_offset_row = 14
							elseif((ll_grpid = 129) or (ll_grpid = 116) or (ll_grpid = 64) or (ll_grpid = 131)) then
								li_offset_row = 28
							end if						
							//---------------------------						
							li_actual_row = (li_looprow + li_offset_row)
							ls_row = f_lpad(string(li_actual_row), 2, "0")
							li_col_found = f_deter_grpdesc_colnum(ref lb_col_xref, ls_grpdesc)
							ls_col = f_lpad(string(li_col_found), 2, "0")
							//------------------------		
							if(ll_pos_assgnd_empno = 0) then
								li_unfilled = 1
							else
								li_unfilled = 0
							end if							
							if((f_len_ext(ls_pos_callnum) > 0) and (pos(ls_pos_callnum, "1J") > 0) and (li_unfilled = 1)) then
								ls_found_empname = ls_empname_unfilled //"*** UNFILLED ***"
							else
								ls_found_empname = ls_pos_empname
							end if
							//
							
							if(ll_pos_grpid = 11) then
								li_stop = 0
							end if
							
							
							//check for duplicate callnums
							select count(*) into :li_num_dup_callnums from sns_board_specs_others where callnum = :ls_pos_callnum using sqlca;
							//
							if(li_num_dup_callnums > 1) then
								MessageBox("Notification","Callnum " + ls_pos_callnum + " is already assigned.", Exclamation!)
								return
							else
								//prevent duplicate empname's
								ls_found_empname = trim(upper(ls_found_empname))
								ll_empname_exists_id = 0
								//
								select id into :ll_empname_exists_id from sns_board_specs_others where ltrim(rtrim(upper(empname))) = :ls_found_empname using sqlca;
								//
								b_ok_to_insert = true
								if(pos(ls_found_empname, "UNFILLED") = 0) then
									if(ll_empname_exists_id > 0) then
										b_ok_to_insert = false
									end if
								end if
								if(b_ok_to_insert = true) then	
								
									ls_debug = ls_row+"|"+ls_col+"|"+string(ll_grpid)+"|"+ls_found_empname+"|"+string(ll_pos_assgnd_empno)+"|"+ls_pos_callnum+"|"+string(li_found_super_lvl)+"|"+string(li_unfilled)
									lb_devel.additem(ls_debug)								
									
									//
									insert into sns_board_specs_others(groupname, nrow, ncol, grpid, empname, empno, callnum, issuper, isunfilled, active, positionid)
									values(:ls_groupname, :ls_row, :ls_col, :ll_grpid, :ls_found_empname, :ll_pos_assgnd_empno, :ls_pos_callnum, :li_pos_super_lvl, :li_unfilled, 1, :ls_pos_positionid)
									using sqlca;
									//
									//insert#1
									//
									if(sqlca.sqlcode <> -1) then
										//
										commit using sqlca;
										//
										ls_callnums_inserted += ls_pos_callnum
										ls_callnums_inserted += ","
									else
										ls_sql_err_text = sqlca.sqlerrtext
										//
										rollback using sqlca;
										//
										li_num_errors++
									end if
								end if									
							end if
						else
							//error invalid grpid
							li_stop = 0							
						end if
					end if
				next
				if(ll_to_grpid > 0) then
					//
					select numrows into :ll_num_avail_positions	from sns_bd_others_layout_specs where grpid = :ll_to_grpid using sqlca;
					//
				end if	
				
				if(ll_pos_grpid = 8) then
					li_stop = 0
				end if
				
				if(li_ploop <= ll_num_avail_positions) then
					for li_blank_loop = li_ploop to ll_num_avail_positions
						li_looprow++						
						//---------------------------						
						li_actual_row = (li_looprow + li_offset_row)
						ls_row = f_lpad(string(li_actual_row), 2, "0")
						li_col_found = f_deter_grpdesc_colnum(ref lb_col_xref, ls_grpdesc)
						ls_col = f_lpad(string(li_col_found), 2, "0")
						//------------------------
						
						ls_debug = ls_row+"|"+ls_col+"|"+string(ll_grpid)+"| |0| |0|"+string(li_unfilled)
						lb_devel.additem(ls_debug)							
						
						//
						insert into sns_board_specs_others(groupname, nrow, ncol, grpid, empname, empno, callnum, issuper, isunfilled, active)
						values(:ls_groupname, :ls_row, :ls_col, :ll_grpid, '', 0, '', 0, :li_unfilled, 1)
						using sqlca;
						if(sqlca.sqlcode <> -1) then
							//
							commit using sqlca;
							//
						else
							ls_sql_err_text = sqlca.sqlerrtext
							//
							rollback using sqlca;
							//
						end if					
					next
				end if				
			end if
			//update lb_col_xref
			//determine index of ls_grpdesc in lsa_lbxref
			integer li_lb_index
			li_lb_index = f_does_string_exist_in_str_array(ref lsa_lbxref, ls_grpdesc, false)
			if(li_lb_index > 0) then
				ls_lbtext = lsa_lbxref[li_lb_index]
				ls_lbtext = ls_lbtext + "|" + string(li_num_emps) + "|" + string(li_num_unfilled) + "|" + string(li_num_blanks)
				lsa_lbxref[li_lb_index] = ls_lbtext
			end if
			
			if(f_len_ext(ls_callnums_inserted) > 0) then
				//need to update records whos callnums were not inserted
				string lsa_callnums_list[]
				string lsa_callnums_inserted[]
				ls_callnums_inserted = f_trim_trailing_char(ls_callnums_inserted, ",")
				integer li_num_callnums_list_items
				integer li_num_callnums_inserted_items
				integer li_num_sorted
				integer li_callnums_to_update
				integer li_cnloop
				string ls_list_callnum
				integer li_callnum_exists
				li_num_callnums_list_items = f_parseoutstring_ext(ls_callnums, ",", ref lsa_callnums_list)
				li_num_callnums_inserted_items = f_parseoutstring_ext(ls_callnums_inserted, ",", ref lsa_callnums_inserted)
				if(li_num_callnums_inserted_items < li_num_callnums_list_items) then
					li_callnums_to_update = (li_num_callnums_list_items - li_num_callnums_inserted_items)
					if(li_callnums_to_update > 0) then
						//get list of callnums to update
						for li_cnloop = 1 to li_num_callnums_list_items
							ls_list_callnum = lsa_callnums_list[li_cnloop]
							li_callnum_exists = f_does_string_exist_in_str_array(lsa_callnums_inserted, ls_list_callnum, true)
							if(li_callnum_exists > 0) then
								lsa_callnums_list[li_cnloop] = ""
							end if
						next
					end if
					//remaining callnums in lsa_callnums_list are the ones that need to be updated
					li_num_sorted = f_sort_str_array(ref lsa_callnums_list)
					
					
					//==================================================
					//===== insert callnums not assigned into table ====
					//==================================================					
					long ll_start_update_rec_id
					long ll_start_rownum
					long ll_end_update_rec_id
					long ll_begin_grpid_record_block_id
					ll_start_update_rec_id = 0
					ll_end_update_rec_id = 0
					ll_begin_grpid_record_block_id = 0
					ll_start_rownum = 0
					//
					select id into :ll_begin_grpid_record_block_id from sns_board_specs_others where grpid = :ll_grpid order by id fetch first row only using sqlca;
					//
					select id, nrow into :ll_start_update_rec_id, :ll_start_rownum from sns_board_specs_others where grpid = :ll_grpid and empname is null order by id fetch first row only using sqlca;
					//
					select id into :ll_end_update_rec_id from sns_board_specs_others where grpid = :ll_grpid and empname is null order by id desc fetch first row only using sqlca;
					//
					if((ll_start_update_rec_id > ll_begin_grpid_record_block_id) and (ll_start_update_rec_id <= ll_end_update_rec_id) and (li_callnums_to_update > 0)) then
						string ls_cnloopdata
						integer li_num_callnums_to_insert
						integer li_num_callnums_inserted
						long ll_update_rec_id
						integer li_num_bd_updates
						integer li_num_update_errors
						integer li_num_callnums_list
						li_num_callnums_list = UpperBound(lsa_callnums_list)
						li_num_update_errors = 0
						li_num_bd_updates = 0
						ll_update_rec_id = ll_start_update_rec_id
						li_num_callnums_to_insert = li_callnums_to_update
						for li_cnloop = 1 to li_num_callnums_list
							ls_cnloopdata = lsa_callnums_list[li_cnloop]
							if(f_len_ext(ls_cnloopdata) > 0) then
								//
								update sns_board_specs_others set callnum = :ls_cnloopdata, empname = :ls_empname_unfilled where id = :ll_update_rec_id using sqlca;
								//
								if(sqlca.sqlcode <> -1) then
									//
									commit using sqlca;
									//
									li_num_bd_updates++
									ll_update_rec_id++
									if(ll_update_rec_id > ll_end_update_rec_id) then
										exit
									end if
								else
									//
									rollback using sqlca;
									//
									li_num_update_errors++
								end if
							end if
						next
					end if
					
					//old code
					//integer li_update_row_count
					//integer li_cnloop_count
					//li_cnloop_count = 0
					//li_num_bd_updates = 0
					//li_update_row_count = ll_start_rownum
					//for li_cnloop = 1 to li_num_callnums_list_items
					//	if(li_update_row_count < ll_num_avail_positions) then
					//		ls_list_callnum = lsa_callnums_list[li_cnloop]
					//		if(f_len_ext(ls_list_callnum) > 0) then
					//			//
					//			update sns_board_specs_others set callnum = :ls_list_callnum, empname = :ls_empname_unfilled where grpid = :ll_grpid and nrow = :li_update_row_count using sqlca;
					//			//
					//			li_num_bd_updates++
					//			li_update_row_count++
					//		end if
					//	end if
					//	li_cnloop_count++
					//next
					//if(li_num_bd_updates > 0) then
					//	//
					//	commit using sqlca;
					//	//
					//end if
					//==================================================					
					//==================================================		
					
					
					li_stop = 9
				end if
			else
				//code below not implemented yet
				if(ll_grpid = 131) then
					integer li_num_positions2_131
					//
					select count(*) into :li_num_positions2_131 from sns_staffing_grps_positions2 where grpid = 131 using sqlca;
					if(li_num_positions2_131 > 0) then
					end if
					li_stop = 131			
				end if
			end if //f_len_ext(ls_callnums_inserted) > 0

			
			sle_num_processed.text = string(li_num_processed) + " - " + string(ll_num_spec_rows)
			yield()			
		next //ll_row

		//restore orderby's
		integer li_num_ob_items
		string ls_ob_grpid
		string ls_ob_callnum
		string ls_ob_orderby
		long ll_ob_grpid
		integer li_ob_orderby
		integer li_num_ob_update_errors
		li_num_ob_update_errors = 0
		//grpid, callnum, orderby
		li_num_ob_items = lb_orderby_bak.totalitems()
		if(li_num_ob_items > 0) then
			for li_oloop = 1 to li_num_ob_items
				ls_oloopdata = lb_orderby_bak.text(li_oloop)
				li_num_parse_items = f_parseoutstring_ext(ls_oloopdata, gs_delim, ref lsa_parseoutdata)
				if(li_num_parse_items >= 3) then
					ls_ob_grpid = lsa_parseoutdata[1]
					ls_ob_callnum = lsa_parseoutdata[2]
					ls_ob_orderby = lsa_parseoutdata[3]
					ll_ob_grpid = f_stol(ls_ob_grpid)
					li_ob_orderby = f_stoi(ls_ob_orderby)
					if((ll_ob_grpid > 0) and (f_len_ext(ls_ob_callnum) > 0) and (li_ob_orderby >= 0)) then
						//
						update sns_board_specs_others set orderby = :li_ob_orderby where grpid = :ll_ob_grpid and callnum = :ls_ob_callnum using sqlca;
						//
						if(sqlca.sqlcode = -1) then
							li_num_ob_update_errors++
						end if
					end if
				end if
			next
			if(li_num_ob_update_errors = 0) then
				//
				commit using sqlca;
				//
			else
				//
				rollback using sqlca;
				//
				MessageBox("Notification","One or more errors occured restoring backup orderby values!")
			end if
		end if
		
		//replace lb_col_xref with contents of lsa_lbxref
		lb_col_xref.reset()
		integer li_num_new_items
		li_num_new_items = UpperBound(lsa_lbxref)
		for li_iloop = 1 to li_num_new_items
			ls_lbtext = lsa_lbxref[li_iloop]
			lb_col_xref.additem(ls_lbtext)
		next
	end if
	long ll_num_retrieved
	ll_num_retrieved = f_populate_datawindow(ref dw_specs_others, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
	sle_num_others.text = string(ll_num_retrieved)
	MessageBox("Notification","Initilize Completed")	
end if
	
//			if(ll_grpid = 131) then //UNASSIGNED GROUP
//				//============================
//				//===== UNASSIGNED (131) =====
//				//============================
//				lsa_unassigned = lsa_nulls
//				li_num_unassigned = 0
//				integer li_uloop
//				//get current list of unassigned employess
//				ls_unassigned_sql = ls_sql_pos2_template
//				ls_unassigned_sql = f_replace_string_in_string(ls_unassigned_sql, "GGGGGG", ls_grpid)
////				ls_unassigned_sql = "select 'POS-' || to_char(a.id) as POS, "
////				ls_unassigned_sql += "'EMP-' || to_char(b.id) as EMP, "
////				ls_unassigned_sql += "b.empname, " 
////				ls_unassigned_sql += "a.assgnd_empno, " 
////				ls_unassigned_sql += "a.funddept, " 
////				ls_unassigned_sql += "a.addinfo, " 
////				ls_unassigned_sql += "c.grpteam || ' {' || c.id || '}' as grpteamid, " 
////				ls_unassigned_sql += "b.positionid, " 
////				ls_unassigned_sql += "a.callnum, " 
////				ls_unassigned_sql += "a.positionid, "
////				ls_unassigned_sql += "'Y' as posvis, "
////				ls_unassigned_sql += "'Y' as empvis, "
////				ls_unassigned_sql += "b.super_lvl "
////				ls_unassigned_sql += "from sns_staffing_grps_positions2 a, sns_employees b, sns_staffing_groups c "
////				ls_unassigned_sql += "where b.empno = a.assgnd_empno "
////				ls_unassigned_sql += "and a.active = 1 "
////				ls_unassigned_sql += "and a.grpid = 131 "
////				ls_unassigned_sql += "and c.id = a.grpid "
////				ls_unassigned_sql += "and b.active = 1 "
////				ls_unassigned_sql += "order by b.super_lvl desc, a.callnum "
//				li_num_unassigned = f_app_ds_populate_string_array_by_sql(ref lsa_unassigned, ls_unassigned_sql, gi_pad_len, gs_delim, gb_compress, ref sqlca)
//				if(li_num_unassigned > 0) then
//					string ls_data
//					string ls_empname
//					string ls_callnum
//					long ll_empno
//					integer li_issuper
//					for li_uloop = 1 to ll_num_spec_rows
//						li_actual_row = (li_uloop + li_offset_row)
//						ls_row = f_lpad(string(li_actual_row), 2, "0")
//						li_col_found = f_deter_grpdesc_colnum(ref lb_col_xref, ls_grpdesc)
//						ls_col = f_lpad(string(li_col_found), 2, "0")
//						if(li_uloop <= li_num_unassigned) then
//							ls_data = lsa_unassigned[li_uloop]
//							li_num_parse_items = f_parseoutstring_ext(ls_data, gs_delim, ref lsa_parseoutdata)
//							if(li_num_parse_items >= 13) then
//								// 1        2        3          4          5        6       7                  8            9          10            11     12       13
//								//POS      EMP    EMPNAME  ASSGND_EMPNO FUNDDEPT ADDINFO GRPTEAMID        EMP_POSITIONID CALLNUM  POS2_POSITION_ID POSVIS, EMPVIS, SUPER_LVL
//								//POS-1866 EMP-47 RYAN-BRAD    16897    100-42110 115    UNASSIGNED {131} Position-00298 1J119    POSITION-00298   Y       Y       0
//								//POS-1862 EMP-34 NELSON-BROCK 17035    241-42120 119    UNASSIGNED {131} Position-01594 1J139    POSITION-01594   Y       Y       0
//								ls_empname = trim(lsa_parseoutdata[3])
//								ll_empno = f_stol(lsa_parseoutdata[4])
//								ls_callnum = trim(lsa_parseoutdata[9])
//								li_issuper = f_stoi(lsa_parseoutdata[13])
//								li_unfilled = 0
//								//
//								insert into sns_board_specs_others(groupname, nrow, ncol, grpid, empname, empno, callnum, issuper, isunfilled, active)
//								values(:ls_groupname, :ls_row, :ls_col, :ll_grpid, :ls_empname, :ll_empno, :ls_callnum, :li_issuper, :li_unfilled, 1)
//								using sqlca;
//								//
//							else
//								li_unfilled = 1
//								//
//								insert into sns_board_specs_others(groupname, nrow, ncol, grpid, empname, empno, callnum, issuper, isunfilled, active)
//								values(:ls_groupname, :ls_row, :ls_col, :ll_grpid, '', 0, '', 0, :li_unfilled, 1)
//								using sqlca;
//								//
//							end if
//							//
//							if(sqlca.sqlcode <> -1) then
//								//
//								commit using sqlca;
//								//
//								li_num_inserted++
//							else
//								ls_sql_err_text = sqlca.sqlerrtext
//								//
//								rollback using sqlca;
//								//
//								li_num_errors++
//							end if								
//						else
//							li_unfilled = 1
//							//insert blank row
//							insert into sns_board_specs_others(groupname, nrow, ncol, grpid, empname, empno, callnum, issuper, isunfilled, active)
//							values(:ls_groupname, :ls_row, :ls_col, :ll_grpid, '', 0, '', 0, :li_unfilled, 1)
//							using sqlca;
//							//
//							if(sqlca.sqlcode <> -1) then
//								//
//								commit using sqlca;
//								//
//								li_num_inserted++
//							else
//								ls_sql_err_text = sqlca.sqlerrtext
//								//
//								rollback using sqlca;
//								//
//								li_num_errors++
//							end if								
//						end if
//					next
//				else
//					//insert blank row record
//					for li_uloop = 1 to ll_num_spec_rows
//						li_actual_row = (li_uloop + li_offset_row)
//						ls_row = f_lpad(string(li_actual_row), 2, "0")
//						li_col_found = f_deter_grpdesc_colnum(ref lb_col_xref, ls_grpdesc)
//						ls_col = f_lpad(string(li_col_found), 2, "0")
//						li_unfilled = 1
//						//
//						insert into sns_board_specs_others(groupname, nrow, ncol, grpid, empname, empno, callnum, issuper, isunfilled, active)
//						values(:ls_groupname, :ls_row, :ls_col, :ll_grpid, '', 0, '', 0, :li_unfilled, 1)
//						using sqlca;
//						//
//						if(sqlca.sqlcode <> -1) then
//							//
//							commit using sqlca;
//							//
//							li_num_inserted++
//						else
//							ls_sql_err_text = sqlca.sqlerrtext
//							//
//							rollback using sqlca;
//							//
//							li_num_errors++
//						end if						
//					next
//				end if
//			else
//				//====================================
//				//===== ALL BUT UNASSIGNED (131) =====
//				//====================================
//				ls_other_sql = ls_sql_pos2_template
//				ls_other_sql = f_replace_string_in_string(ls_other_sql, "GGGGGG", ls_grpid)
//				lsa_other = lsa_nulls
//				li_num_others = f_app_ds_populate_string_array_by_sql(ref lsa_other, ls_other_sql, gi_pad_len, gs_delim, gb_compress, ref sqlca)
//				integer li_found_index
//				//---------------------------						
//				for li_iloop = 1 to li_num_rows
//					//---------------------------
//					ll_found_id = 0
//					ls_found_addinfo = ""
//					ls_found_empname = ""
//					ll_found_empno = 0
//					li_found_super_lvl = 0
//					ls_lookup_callnum = ""
//					ls_sql_err_text = ""			
//					//---------------------------
//					li_actual_row = (li_iloop + li_offset_row)
//					ls_row = f_lpad(string(li_actual_row), 2, "0")
//					li_col_found = f_deter_grpdesc_colnum(ref lb_col_xref, ls_grpdesc)
//					ls_col = f_lpad(string(li_col_found), 2, "0")
//					if(li_iloop <= li_loop_num_callnums) then 
//						ls_lookup_callnum = trim(upper(lsa_callnums[li_iloop]))
//						ll_found_id = 0
//						ll_found_id = f_does_string_exist_in_str_array(lsa_other, ls_lookup_callnum, false)
//						if(ll_found_id > 0) then
//							//------------------------
//							select a.id, a.addinfo, b.empname, b.empno, b.super_lvl into :ll_found_id, :ls_found_addinfo, :ls_found_empname, :ll_found_empno, :li_found_super_lvl
//							from sns_staffing_grps_positions2 a, sns_employees b
//							where a.grpid = :ll_grpid
//							and a.callnum = :ls_lookup_callnum
//							and a.assgnd_empno = b.empno
//							using sqlca;
//							//------------------------						
//							if(ll_found_empno = 0) then
//								li_unfilled = 1
//							else
//								li_unfilled = 0
//							end if
//							//
//							insert into sns_board_specs_others(groupname, nrow, ncol, grpid, empname, empno, callnum, issuper, isunfilled, active)
//							values(:ls_groupname, :ls_row, :ls_col, :ll_grpid, :ls_found_empname, :ll_found_empno, :ls_lookup_callnum, :li_found_super_lvl, :li_unfilled, 1)
//							using sqlca;
//							//
//							if(sqlca.sqlcode <> -1) then
//								//
//								commit using sqlca;
//								//
//								li_num_inserted++
//							else
//								ls_sql_err_text = sqlca.sqlerrtext
//								//
//								rollback using sqlca;
//								//
//								li_num_errors++
//							end if
//						else
//							if(f_len_ext(ls_lookup_callnum) > 0) then
//								//ls_lookup_callnumber_only = f_trimstr_ext(ls_lookup_callnum, "1J", true)
//								//ls_lookup_callnumber_only = f_trimstr_multi_chars_ext(ls_lookup_callnum, "1J")
//								ls_lookup_callnumber_only = f_trimstr_multi_chars_ext(ls_lookup_callnum, "1J")
//							end if
//							//-----------------------------
//							select id, addinfo, assgnd_empno into :ll_found_id, :ls_found_addinfo, :ll_found_empno
//							from sns_staffing_grps_positions2
//							where grpid = :ll_grpid
//							and ((addinfo = :ls_lookup_callnumber_only) or (callnum = :ls_lookup_callnum))
//							using sqlca;
//							//-----------------------------
//							if(ll_found_id > 0) then
//								if(ll_found_empno = 0) then
//									li_unfilled = 1
//								else
//									li_unfilled = 0
//								end if
//								//
//								insert into sns_board_specs_others(groupname, nrow, ncol, grpid, empname, empno, callnum, issuper, isunfilled, active)
//								values(:ls_groupname, :ls_row, :ls_col, :ll_grpid, '', 0, :ls_lookup_callnum, 0, :li_unfilled, 1)
//								using sqlca;
//								//
//								if(sqlca.sqlcode <> -1) then
//									//
//									commit using sqlca;
//									//
//									li_num_inserted++
//								else
//									ls_sql_err_text = sqlca.sqlerrtext
//									//
//									rollback using sqlca;
//									//
//									li_num_errors++
//								end if
//							else
//								li_num_not_found++
//								if(ll_found_empno = 0) then
//									li_unfilled = 1
//								else
//									li_unfilled = 0
//								end if				
//								//
//								insert into sns_board_specs_others(groupname, nrow, ncol, grpid, empname, empno, callnum, issuper, isunfilled, active)
//								values(:ls_groupname, :ls_row, :ls_col, :ll_grpid, '', 0, '', 0, :li_unfilled, 1)
//								using sqlca;
//								//
//								if(sqlca.sqlcode <> -1) then
//									//
//									commit using sqlca;
//									//
//									li_num_inserted++
//								else
//									ls_sql_err_text = sqlca.sqlerrtext
//									//
//									rollback using sqlca;
//									//
//									li_num_errors++
//								end if								
//							end if
//						end if
//						if(f_len_ext(ls_callnums_inserted) > 0) then
//							ls_callnums_inserted += "|"
//						end if
//						ls_callnums_inserted += ls_lookup_callnum						
//					else
//						if(ll_found_empno = 0) then
//							li_unfilled = 1
//						else
//							li_unfilled = 0
//						end if				
//						//
//						insert into sns_board_specs_others(groupname, nrow, ncol, grpid, empname, empno, callnum, issuper, isunfilled, active)
//						values(:ls_groupname, :ls_row, :ls_col, :ll_grpid, '', 0, '', 0, :li_unfilled, 1)
//						using sqlca;
//						//
//						if(sqlca.sqlcode <> -1) then
//							//
//							commit using sqlca;
//							//
//							li_num_inserted++
//						else
//							ls_sql_err_text = sqlca.sqlerrtext
//							//
//							rollback using sqlca;
//							//
//							li_num_errors++
//						end if
//					end if
//				next //iloop
//			end if		
//
	/*
	select a.grpid, a.callnum, a.addinfo, a.positionid, b.empname, b.empno, b.super_lvl
	from sns_staffing_grps_positions2 a, sns_employees b
	where a.grpid = 3
	and a.callnum = '1J130'
	and a.assgnd_empno = b.empno
	grpid,callnum,addinfo,positionid,empname,empno,super_lvl
	3	1J130	130	POSITION-00988	GORDON-COLLIN	15193	1
	*/
	
	/*
	select grpid, callnum, addinfo, positionid, assgnd_empno
	from sns_staffing_grps_positions2
	where grpid = 3
	and ((addinfo = '135') or (callnum = '1J135'))
	grpid,callnum,addinfo,positionid,assgnd_empno
	3	1J135	135	POSITION-00283	0
	*/
	
	
	//long ll_exists_id
	//ls_groupname = f_get_active_group(rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs)
	//integer li_num_errors
	//for li_rloop = 1 to gi_max_rows
	//	for li_cloop = 1 to gi_max_cols
	//		ls_row = f_lpad(string(li_rloop),2,"0")
	//		ls_col = f_lpad(string(li_cloop),2,"0")
	//		ll_exists_id = 0
	//		//
	//		select id into :ll_exists_id from sns_board_specs_others where nrow = :ls_row and ncol = :ls_col using sqlca;
	//		//
	//		if(ll_exists_id = 0) then
	//			//
	//			insert into sns_board_specs_others(nrow,ncol,groupname, active)
	//			values(:ls_row, :ls_col, :ls_groupname, 0)
	//			using sqlca;
	//			//
	//			if(sqlca.sqlcode <> -1) then
	//				//
	//				commit using sqlca;
	//				//
	//			else
	//				li_num_errors++
	//				//
	//				rollback using sqlca;
	//				//
	//			end if
	//		end if
	//	next
	//next
	//sle_num_init_errors.text = string(li_num_errors)

end event

type sle_num_specs from singlelineedit within w_devel_supt
integer x = 2866
integer y = 208
integer width = 160
integer height = 80
integer taborder = 40
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
long backcolor = 553648127
string text = "0"
borderstyle borderstyle = stylelowered!
end type

type st_5 from statictext within w_devel_supt
integer x = 2587
integer y = 216
integer width = 270
integer height = 56
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
long textcolor = 33488896
long backcolor = 553648127
string text = "#Records:"
alignment alignment = right!
boolean focusrectangle = false
end type

type sle_num_grpids from singlelineedit within w_devel_supt
integer x = 731
integer y = 212
integer width = 160
integer height = 80
integer taborder = 40
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
long backcolor = 553648127
string text = "0"
borderstyle borderstyle = stylelowered!
end type

type st_4 from statictext within w_devel_supt
integer x = 453
integer y = 220
integer width = 270
integer height = 56
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial Narrow"
long textcolor = 33488896
long backcolor = 553648127
string text = "#Records:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_3 from statictext within w_devel_supt
integer x = 1737
integer y = 216
integer width = 832
integer height = 56
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33488896
long backcolor = 553648127
string text = "SNS_BD_OTHERS_LAYOUT_SPECS"
alignment alignment = center!
boolean focusrectangle = false
end type

type dw_lay_specs from datawindow within w_devel_supt
integer x = 1733
integer y = 292
integer width = 6277
integer height = 1916
integer taborder = 30
string title = "none"
string dataobject = "dw_layout_specs"
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;long ll_id
string ls_sql_err_text
string ls_status_msg
long ll_num_retrieved
string ls_active_group
string ls_groupname
string ls_orderby
string ls_grpdesc
long ll_grpid
string ls_row
string ls_col
integer li_num_rows
integer li_num_cols
string ls_callnums
string ls_dwoname
ls_dwoname = dwo.name
dw_lay_specs.settransobject(sqlca)
ls_status_msg = ""
ls_active_group = ""
ls_active_group = f_get_active_group(rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs)
if((dwo.name = "del") and (row > 0)) then
	integer li_rslt
	ls_groupname = dw_lay_specs.getitemstring(row, 'groupname')
	ls_grpdesc = dw_lay_specs.getitemstring(row, 'grpdesc')
	ll_grpid = dw_lay_specs.getitemnumber(row, 'grpid')
	ll_id = dw_lay_specs.getitemnumber(row, 'id')
	if(ll_id > 0) then
		string ls_del_msg
		ls_del_msg = "Are you sure you want to delete " + ls_groupname + "," + ls_grpdesc + "," + string(ll_grpid) + " ?"
		li_rslt = MessageBox("Notification",ls_del_msg, QUESTION!, YESNO!, 1)
		if(li_rslt = 1) then
			//delete record
			//
			update sns_bd_grpids set active = 0 where id = :ll_id using sqlca;
			//
			if(sqlca.sqlcode <> -1) then
				//
				commit using sqlca;
				//
				ls_status_msg = "Delete record successful!"
			else
				ls_sql_err_text = sqlca.sqlerrtext
				//
				rollback using sqlca;
				//
				ls_status_msg = "Failed to delete record. error=" + ls_sql_err_text
			end if
			MessageBox("Notification",ls_status_msg)
			ll_num_retrieved = f_populate_datawindow(ref dw_lay_specs, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
			sle_num_specs.text = string(ll_num_retrieved)
		end if
	end if
elseif(dwo.name = "b_refresh") then
	ll_num_retrieved = f_populate_datawindow(ref dw_lay_specs, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
	sle_num_specs.text = string(ll_num_retrieved)
elseif(dwo.name = "b_insert") then
	if(ls_active_group = "ALL") then
		ls_groupname = "?"
	else
		ls_groupname = ls_active_group
	end if
	ls_orderby = "?"
	ls_grpdesc = "?"
	ll_grpid = 0
	ls_row = "?"
	ls_col = "?"
	li_num_rows = 0
	li_num_cols = 0
	ls_callnums	= "?"
	//
	insert into sns_bd_others_layout_specs(groupname, orderby, grpid, grpdesc, strow, stcol, numrows, numcols, callnums, active)
	values(:ls_groupname, :ls_orderby, :ll_grpid, :ls_grpdesc, :ls_row, :ls_col, :li_num_rows, :li_num_cols, :ls_callnums, 1)
	using sqlca;
	//
	if(sqlca.sqlcode <> -1) then
		//
		commit using sqlca;
		//
	else
		ls_sql_err_text = sqlca.sqlerrtext
		//
		rollback using sqlca;
		//
		ls_status_msg = "Failed to insert new record. error=" + ls_sql_err_text
	end if
	if(f_len_ext(ls_status_msg) > 0) then
		MessageBox("Notification",ls_status_msg)
	end if
	ll_num_retrieved = f_populate_datawindow(ref dw_lay_specs, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
	sle_num_specs.text = string(ll_num_retrieved)
elseif(dwo.name = "b_commit") then
	integer li_commit_status
	li_commit_status = 0
	li_commit_status = dw_lay_specs.Update()
	if(li_commit_status = 1) then
		//
		commit using sqlca;
		//
	else
		ls_sql_err_text = sqlca.sqlerrtext
		//
		rollback using sqlca;
		//
		ls_status_msg = "Failed to commit! error=" + ls_sql_err_text
	end if
	if(f_len_ext(ls_status_msg) > 0) then
		MessageBox("Notification",ls_status_msg)
	end if
	ll_num_retrieved = f_populate_datawindow(ref dw_lay_specs, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
	sle_num_specs.text = string(ll_num_retrieved)
end if
end event

type rb_all from radiobutton within w_devel_supt
integer x = 969
integer y = 96
integer width = 183
integer height = 72
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33488896
long backcolor = 553648127
string text = "All"
boolean checked = true
end type

event clicked;long ll_num_retrieved
ll_num_retrieved = f_populate_datawindow(ref dw_bd_groupids, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
sle_num_grpids.text = string(ll_num_retrieved)
ll_num_retrieved = f_populate_datawindow(ref dw_lay_specs, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
sle_num_specs.text = string(ll_num_retrieved)

end event

type rb_emergsvcs from radiobutton within w_devel_supt
integer x = 2103
integer y = 96
integer width = 366
integer height = 72
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33488896
long backcolor = 553648127
string text = "Emerg Svcs"
end type

event clicked;long ll_num_retrieved
ll_num_retrieved = f_populate_datawindow(ref dw_bd_groupids, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
sle_num_grpids.text = string(ll_num_retrieved)
ll_num_retrieved = f_populate_datawindow(ref dw_lay_specs, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
sle_num_specs.text = string(ll_num_retrieved)

end event

type rb_judicial from radiobutton within w_devel_supt
integer x = 1806
integer y = 96
integer width = 297
integer height = 72
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33488896
long backcolor = 553648127
string text = "Judicial"
end type

event clicked;long ll_num_retrieved
ll_num_retrieved = f_populate_datawindow(ref dw_bd_groupids, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
sle_num_grpids.text = string(ll_num_retrieved)
ll_num_retrieved = f_populate_datawindow(ref dw_lay_specs, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
sle_num_specs.text = string(ll_num_retrieved)

end event

type rb_patrol from radiobutton within w_devel_supt
integer x = 1554
integer y = 96
integer width = 242
integer height = 72
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33488896
long backcolor = 553648127
string text = "Patrol"
end type

event clicked;long ll_num_retrieved
ll_num_retrieved = f_populate_datawindow(ref dw_bd_groupids, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
sle_num_grpids.text = string(ll_num_retrieved)
ll_num_retrieved = f_populate_datawindow(ref dw_lay_specs, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
sle_num_specs.text = string(ll_num_retrieved)

end event

type rb_corrections from radiobutton within w_devel_supt
integer x = 1157
integer y = 96
integer width = 370
integer height = 72
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33488896
long backcolor = 553648127
string text = "Corrections"
end type

event clicked;long ll_num_retrieved
ll_num_retrieved = f_populate_datawindow(ref dw_bd_groupids, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
sle_num_grpids.text = string(ll_num_retrieved)
ll_num_retrieved = f_populate_datawindow(ref dw_lay_specs, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
sle_num_specs.text = string(ll_num_retrieved)

end event

type st_2 from statictext within w_devel_supt
integer x = 32
integer y = 224
integer width = 402
integer height = 56
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33488896
long backcolor = 553648127
string text = "SNS_BD_GRPIDS"
alignment alignment = center!
boolean focusrectangle = false
end type

type dw_bd_groupids from datawindow within w_devel_supt
integer x = 23
integer y = 292
integer width = 1678
integer height = 1908
integer taborder = 20
string title = "none"
string dataobject = "dw_bd_grpids"
boolean hscrollbar = true
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

event clicked;long ll_id
string ls_sql_err_text
string ls_status_msg
long ll_num_retrieved
string ls_active_group
string ls_department
string ls_boardid
long ll_grpid
dw_bd_groupids.settransobject(sqlca)
ls_status_msg = ""
ls_active_group = ""
ls_active_group = f_get_active_group(rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs)
if((dwo.name = "del") and (row > 0)) then
	integer li_rslt
	ls_department = dw_bd_groupids.getitemstring(row, 'department')
	ls_boardid = dw_bd_groupids.getitemstring(row, 'boardid')
	ll_grpid = dw_bd_groupids.getitemnumber(row, 'grpid')
	ll_id = dw_bd_groupids.getitemnumber(row, 'id')
	if(ll_id > 0) then
		string ls_del_msg
		ls_del_msg = "Are you sure you want to delete " + ls_department + "," + ls_boardid + "," + string(ll_grpid) + " ?"
		li_rslt = MessageBox("Notification",ls_del_msg, QUESTION!, YESNO!, 1)
		if(li_rslt = 1) then
			//delete record
			//
			update sns_bd_grpids set active = 0 where id = :ll_id using sqlca;
			//
			if(sqlca.sqlcode <> -1) then
				//
				commit using sqlca;
				//
				ls_status_msg = "Delete record successful!"
			else
				ls_sql_err_text = sqlca.sqlerrtext
				//
				rollback using sqlca;
				//
				ls_status_msg = "Failed to delete record. error=" + ls_sql_err_text
			end if
			MessageBox("Notification",ls_status_msg)
			ll_num_retrieved = f_populate_datawindow(ref dw_bd_groupids, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
			sle_num_grpids.text = string(ll_num_retrieved)
		end if
	end if
elseif(dwo.name = "b_refresh") then
	ll_num_retrieved = f_populate_datawindow(ref dw_bd_groupids, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
	sle_num_grpids.text = string(ll_num_retrieved)
elseif(dwo.name = "b_insert") then
	if(ls_active_group = "ALL") then
		ls_department = "?"
	else
		ls_department = ls_active_group
	end if
	ls_boardid = "?"
	ll_grpid = 0
	//
	insert into sns_bd_grpids(department, boardid, grpid, active)
	values(:ls_department, :ls_boardid, :ll_grpid, 1)
	using sqlca;
	//
	if(sqlca.sqlcode <> -1) then
		//
		commit using sqlca;
		//
	else
		ls_sql_err_text = sqlca.sqlerrtext
		//
		rollback using sqlca;
		//
		ls_status_msg = "Failed to insert new record. error=" + ls_sql_err_text
	end if
	if(f_len_ext(ls_status_msg) > 0) then
		MessageBox("Notification",ls_status_msg)
	end if
	ll_num_retrieved = f_populate_datawindow(ref dw_bd_groupids, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
	sle_num_grpids.text = string(ll_num_retrieved)
elseif(dwo.name = "b_commit") then
	integer li_commit_status
	li_commit_status = 0
	li_commit_status = dw_bd_groupids.Update()
	if(li_commit_status = 1) then
		//
		commit using sqlca;
		//
	else
		ls_sql_err_text = sqlca.sqlerrtext
		//
		rollback using sqlca;
		//
		ls_status_msg = "Failed to commit! error=" + ls_sql_err_text
	end if
	if(f_len_ext(ls_status_msg) > 0) then
		MessageBox("Notification",ls_status_msg)
	end if
	ll_num_retrieved = f_populate_datawindow(ref dw_bd_groupids, rb_all, rb_corrections, rb_patrol, rb_judicial, rb_emergsvcs, ref sqlca)
	sle_num_grpids.text = string(ll_num_retrieved)
end if
	
end event

type pb_14 from picturebutton within w_devel_supt
integer x = 27
integer y = 8
integer width = 242
integer height = 92
integer taborder = 10
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "CLOSE"
boolean originalsize = true
long textcolor = 16777215
long backcolor = 255
end type

event clicked;close(w_devel_supt)
end event

type gb_1 from groupbox within w_devel_supt
integer x = 914
integer y = 24
integer width = 1591
integer height = 160
integer taborder = 30
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33488896
long backcolor = 553648127
string text = "Selected Group...."
end type

