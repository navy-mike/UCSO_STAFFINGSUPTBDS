$PBExportHeader$w_insert_position.srw
forward
global type w_insert_position from window
end type
type sle_rowcount from singlelineedit within w_insert_position
end type
type st_rowcount from statictext within w_insert_position
end type
type st_jc from statictext within w_insert_position
end type
type lb_jobcode_titles from listbox within w_insert_position
end type
type pb_jobcode_lookup from picturebutton within w_insert_position
end type
type pb_posid_temp from picturebutton within w_insert_position
end type
type st_10 from statictext within w_insert_position
end type
type ddlb_unfilled_positionids from dropdownlistbox within w_insert_position
end type
type sle_job_title from singlelineedit within w_insert_position
end type
type st_9 from statictext within w_insert_position
end type
type sle_job_code from singlelineedit within w_insert_position
end type
type st_8 from statictext within w_insert_position
end type
type sle_position_id from singlelineedit within w_insert_position
end type
type st_7 from statictext within w_insert_position
end type
type sle_funddept from singlelineedit within w_insert_position
end type
type st_6 from statictext within w_insert_position
end type
type pb_cancel from picturebutton within w_insert_position
end type
type pb_save from picturebutton within w_insert_position
end type
type st_5 from statictext within w_insert_position
end type
type sle_col from singlelineedit within w_insert_position
end type
type st_4 from statictext within w_insert_position
end type
type sle_row from singlelineedit within w_insert_position
end type
type sle_group_name from singlelineedit within w_insert_position
end type
type sle_group_num from singlelineedit within w_insert_position
end type
type st_3 from statictext within w_insert_position
end type
type sle_callnum from singlelineedit within w_insert_position
end type
type st_2 from statictext within w_insert_position
end type
type st_1 from statictext within w_insert_position
end type
type ln_1 from line within w_insert_position
end type
type ln_2 from line within w_insert_position
end type
end forward

global type w_insert_position from window
integer width = 1897
integer height = 2088
boolean titlebar = true
string title = "Insert Unfilled Position"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
sle_rowcount sle_rowcount
st_rowcount st_rowcount
st_jc st_jc
lb_jobcode_titles lb_jobcode_titles
pb_jobcode_lookup pb_jobcode_lookup
pb_posid_temp pb_posid_temp
st_10 st_10
ddlb_unfilled_positionids ddlb_unfilled_positionids
sle_job_title sle_job_title
st_9 st_9
sle_job_code sle_job_code
st_8 st_8
sle_position_id sle_position_id
st_7 st_7
sle_funddept sle_funddept
st_6 st_6
pb_cancel pb_cancel
pb_save pb_save
st_5 st_5
sle_col sle_col
st_4 st_4
sle_row sle_row
sle_group_name sle_group_name
sle_group_num sle_group_num
st_3 st_3
sle_callnum sle_callnum
st_2 st_2
st_1 st_1
ln_1 ln_1
ln_2 ln_2
end type
global w_insert_position w_insert_position

type variables
boolean bTimerEnabled

end variables

on w_insert_position.create
this.sle_rowcount=create sle_rowcount
this.st_rowcount=create st_rowcount
this.st_jc=create st_jc
this.lb_jobcode_titles=create lb_jobcode_titles
this.pb_jobcode_lookup=create pb_jobcode_lookup
this.pb_posid_temp=create pb_posid_temp
this.st_10=create st_10
this.ddlb_unfilled_positionids=create ddlb_unfilled_positionids
this.sle_job_title=create sle_job_title
this.st_9=create st_9
this.sle_job_code=create sle_job_code
this.st_8=create st_8
this.sle_position_id=create sle_position_id
this.st_7=create st_7
this.sle_funddept=create sle_funddept
this.st_6=create st_6
this.pb_cancel=create pb_cancel
this.pb_save=create pb_save
this.st_5=create st_5
this.sle_col=create sle_col
this.st_4=create st_4
this.sle_row=create sle_row
this.sle_group_name=create sle_group_name
this.sle_group_num=create sle_group_num
this.st_3=create st_3
this.sle_callnum=create sle_callnum
this.st_2=create st_2
this.st_1=create st_1
this.ln_1=create ln_1
this.ln_2=create ln_2
this.Control[]={this.sle_rowcount,&
this.st_rowcount,&
this.st_jc,&
this.lb_jobcode_titles,&
this.pb_jobcode_lookup,&
this.pb_posid_temp,&
this.st_10,&
this.ddlb_unfilled_positionids,&
this.sle_job_title,&
this.st_9,&
this.sle_job_code,&
this.st_8,&
this.sle_position_id,&
this.st_7,&
this.sle_funddept,&
this.st_6,&
this.pb_cancel,&
this.pb_save,&
this.st_5,&
this.sle_col,&
this.st_4,&
this.sle_row,&
this.sle_group_name,&
this.sle_group_num,&
this.st_3,&
this.sle_callnum,&
this.st_2,&
this.st_1,&
this.ln_1,&
this.ln_2}
end on

on w_insert_position.destroy
destroy(this.sle_rowcount)
destroy(this.st_rowcount)
destroy(this.st_jc)
destroy(this.lb_jobcode_titles)
destroy(this.pb_jobcode_lookup)
destroy(this.pb_posid_temp)
destroy(this.st_10)
destroy(this.ddlb_unfilled_positionids)
destroy(this.sle_job_title)
destroy(this.st_9)
destroy(this.sle_job_code)
destroy(this.st_8)
destroy(this.sle_position_id)
destroy(this.st_7)
destroy(this.sle_funddept)
destroy(this.st_6)
destroy(this.pb_cancel)
destroy(this.pb_save)
destroy(this.st_5)
destroy(this.sle_col)
destroy(this.st_4)
destroy(this.sle_row)
destroy(this.sle_group_name)
destroy(this.sle_group_num)
destroy(this.st_3)
destroy(this.sle_callnum)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.ln_1)
destroy(this.ln_2)
end on

event open;string ls_parms
long ll_grpid
long ll_rowcount
ls_parms = Message.StringParm //<grpid>|<nrow>|<ncol>|<groupname>|<rowcount>
string lsa_parseoutdata[]
integer li_num_parse_items
li_num_parse_items = f_parseoutstring_ext(ls_parms, "|", ref lsa_parseoutdata)
if(li_num_parse_items >= 5) then
	sle_group_num.text = lsa_parseoutdata[1]
	ll_grpid = f_stol(lsa_parseoutdata[1])
	sle_row.text = lsa_parseoutdata[2]
	sle_col.text = lsa_parseoutdata[3]
	if(li_num_parse_items > 3) then
		sle_group_name.text = lsa_parseoutdata[4]
	end if
	ll_rowcount = f_stol(lsa_parseoutdata[5])
end if
//POPULATE ddlb_unfilled_positionids based on SNS_STAFFING_GRPS_POSITIONS2
string lsa_unassigned[]
integer li_num_unassigned
string ls_ua_sql
integer li_loop
string ls_loopdata
string ls_lbtext
ls_ua_sql = "select a.id, a.grpid, b.grpname, b.grpteam, a.positionid, a.jobcode, a.jobtitle, a.callnum, a.funddept, b.reportgroup, b.reportname, c.callnum, c.groupname "
ls_ua_sql += "from sns_staffing_grps_positions2 a, sns_staffing_groups b, sns_board_specs_others c "
ls_ua_sql += "where a.assgnd_empno = 0 "
ls_ua_sql += "and a.grpid = b.id "
ls_ua_sql += "and c.grpid = b.id "
ls_ua_sql += "and c.callnum is not null "
ls_ua_sql += "and c.empname is null "
ls_ua_sql += "and b.active = 1 "
ls_ua_sql += "and a.grpid = " + string(ll_grpid) + " "
ls_ua_sql += "order by a.grpid, c.callnum "
li_num_unassigned = f_app_ds_populate_string_array_by_sql(ref lsa_unassigned, ls_ua_sql, gi_pad_len, "|", gb_compress, ref sqlca)
if(li_num_unassigned > 0) then
	for li_loop = 1 to li_num_unassigned
		ls_loopdata = lsa_unassigned[li_loop]
		li_num_parse_items = f_parseoutstring_ext(ls_loopdata, "|", lsa_parseoutdata)
		if(li_num_parse_items >= 13) then
			ls_lbtext = trim(lsa_parseoutdata[12]) + " = " + lsa_parseoutdata[4] + " (" + lsa_parseoutdata[5] + ")"
			ddlb_unfilled_positionids.additem(ls_lbtext)
		end if
	next
end if
//POPULATE ddlb_unfilled_positionids based on SNS_STAFFING_GRPS_POSITIONS2
ls_ua_sql = "select a.callnum, c.grpteam || ' {' || c.id || '}' as grpteamid "
ls_ua_sql += "from sns_board_specs_others a, sns_staffing_groups c "
ls_ua_sql += "where a.groupname = 'PATROL' "
ls_ua_sql += "and a.active = 1 "
ls_ua_sql += "and a.grpid = " + string(ll_grpid) + " "
ls_ua_sql += "and c.id = a.grpid "
ls_ua_sql += "and a.callnum is not null "
ls_ua_sql += "and a.empname in ('***UNFILLED***') "
ls_ua_sql += "order by a.grpid, a.nrow, a.ncol"
li_num_unassigned = f_app_ds_populate_string_array_by_sql(ref lsa_unassigned, ls_ua_sql, gi_pad_len, "|", gb_compress, ref sqlca)
if(li_num_unassigned > 0) then
	for li_loop = 1 to li_num_unassigned
		ls_loopdata = lsa_unassigned[li_loop]
		li_num_parse_items = f_parseoutstring_ext(ls_loopdata, "|", lsa_parseoutdata)
		if(li_num_parse_items >= 2) then
			ls_lbtext = trim(lsa_parseoutdata[1]) + " = " + lsa_parseoutdata[2] + " (0)"
			ddlb_unfilled_positionids.additem(ls_lbtext)
		end if
	next
end if
//
if(ll_grpid > 0) then
	string lsa_jobs[]
	integer li_num_jobs
	string ls_jobs_sql
	int li_pos
	string ls_jobcode
	string ls_jobtitle
	ls_jobs_sql = "select distinct jobcode,jobtitle "
	ls_jobs_sql += "from sns_staffing_grps_positions2 "
	ls_jobs_sql += "where funddept in (select distinct funddept "
	ls_jobs_sql += "from sns_staffing_grps_positions2 "
	ls_jobs_sql += "where grpid = " + string(ll_grpid) + " "
	ls_jobs_sql += "group by funddept) "
	ls_jobs_sql += "group by jobcode, jobtitle "
	ls_jobs_sql += "order by jobtitle, jobcode "
	li_num_jobs = f_app_ds_populate_string_array_by_sql(ref lsa_jobs, ls_jobs_sql, gi_pad_len, "|", gb_compress, ref sqlca)
	if(li_num_jobs > 0) then
		for li_loop = 1 to li_num_jobs
			ls_loopdata = lsa_jobs[li_loop]
			li_pos = pos(ls_loopdata, "|")
			if(li_pos > 0) then
				ls_jobcode = trim(mid(ls_loopdata, 0, (li_pos - 1)))
				ls_jobtitle = trim(mid(ls_loopdata, (li_pos + 1)))
				ls_lbtext = f_lpad(ls_jobcode, 6, " ") + " | " + ls_jobtitle
				lb_jobcode_titles.additem(ls_lbtext)
			end if
		next
	end if
end if
string ls_funddept
string ls_groupname
//
select grpteam, funddept into :ls_groupname, :ls_funddept from sns_staffing_groups where id = :ll_grpid using sqlca;
//
sle_funddept.text = ls_funddept
lb_jobcode_titles.visible = false
st_jc.visible = false
//st_rowcount
sle_rowcount.text = string(ll_rowcount)
st_rowcount.visible = false
sle_rowcount.visible = false
if(gs_winuser = "MIKEJ") then
	st_rowcount.visible = true
	sle_rowcount.visible = true
end if

end event

type sle_rowcount from singlelineedit within w_insert_position
integer x = 1742
integer y = 116
integer width = 128
integer height = 84
integer taborder = 10
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 12639424
boolean displayonly = true
borderstyle borderstyle = stylelowered!
end type

type st_rowcount from statictext within w_insert_position
integer x = 1605
integer y = 40
integer width = 261
integer height = 60
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "rowcount:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_jc from statictext within w_insert_position
integer x = 9
integer y = 1116
integer width = 334
integer height = 212
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 16711680
long backcolor = 553648127
string text = "Double Click to select jobcode/title"
alignment alignment = center!
boolean focusrectangle = false
end type

type lb_jobcode_titles from listbox within w_insert_position
integer x = 379
integer y = 988
integer width = 1463
integer height = 516
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 25231232
boolean vscrollbar = true
boolean sorted = false
borderstyle borderstyle = stylelowered!
end type

event doubleclicked;string ls_selected_text
ls_selected_text = lb_jobcode_titles.text(index)
int li_pos
li_pos = pos(ls_selected_text, "|")
if(li_pos > 0) then
	string ls_jobcode
	string ls_jobtitle
	ls_jobcode = mid(ls_selected_text, 0, (li_pos - 1))
	ls_jobtitle = mid(ls_selected_text, (li_pos + 1))
	sle_job_code.text = ls_jobcode
	sle_job_title.text = ls_jobtitle
	string ls_funddept
	long ll_grpid 
	ll_grpid = f_stol(sle_group_num.text)
	if(ll_grpid > 0) then
		//
		select distinct funddept into :ls_funddept
		from sns_staffing_grps_positions2
		where grpid = :ll_grpid
		group by funddept
		fetch first row only
		using sqlca;
		//
		if(f_len_ext(ls_funddept) > 0) then
			sle_funddept.text = ls_funddept
		end if
	end if
end if
end event

type pb_jobcode_lookup from picturebutton within w_insert_position
integer x = 631
integer y = 524
integer width = 645
integer height = 88
integer taborder = 20
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Lookup JobCode/JobTitle"
boolean originalsize = true
long backcolor = 25231232
end type

event clicked;lb_jobcode_titles.visible = true
st_jc.visible = true
end event

type pb_posid_temp from picturebutton within w_insert_position
integer x = 928
integer y = 416
integer width = 434
integer height = 88
integer taborder = 20
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Assign Temporary"
boolean originalsize = true
long backcolor = 25231232
end type

event clicked;string ls_temp_positionid
ls_temp_positionid = f_get_next_temp_positionid(ref sqlca)
sle_position_id.text = ls_temp_positionid
end event

type st_10 from statictext within w_insert_position
integer x = 37
integer y = 1544
integer width = 1106
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Existing ***UNFILLED*** FOR THIS GROUP"
alignment alignment = right!
boolean focusrectangle = false
end type

type ddlb_unfilled_positionids from dropdownlistbox within w_insert_position
integer x = 27
integer y = 1616
integer width = 1239
integer height = 376
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 12639424
boolean allowedit = true
boolean showlist = true
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

type sle_job_title from singlelineedit within w_insert_position
integer x = 375
integer y = 624
integer width = 1221
integer height = 84
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type st_9 from statictext within w_insert_position
integer x = 55
integer y = 636
integer width = 302
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Job Title:"
alignment alignment = right!
boolean focusrectangle = false
end type

type sle_job_code from singlelineedit within w_insert_position
integer x = 375
integer y = 524
integer width = 238
integer height = 84
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type st_8 from statictext within w_insert_position
integer x = 55
integer y = 532
integer width = 302
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Job Code:"
alignment alignment = right!
boolean focusrectangle = false
end type

type sle_position_id from singlelineedit within w_insert_position
integer x = 375
integer y = 420
integer width = 544
integer height = 84
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type st_7 from statictext within w_insert_position
integer x = 59
integer y = 432
integer width = 302
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "PositionID:"
alignment alignment = right!
boolean focusrectangle = false
end type

type sle_funddept from singlelineedit within w_insert_position
integer x = 375
integer y = 316
integer width = 375
integer height = 84
integer taborder = 10
integer textsize = -9
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 16777215
borderstyle borderstyle = stylelowered!
end type

type st_6 from statictext within w_insert_position
integer x = 69
integer y = 324
integer width = 302
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "FundDept:"
alignment alignment = right!
boolean focusrectangle = false
end type

type pb_cancel from picturebutton within w_insert_position
integer x = 978
integer y = 844
integer width = 251
integer height = 104
integer taborder = 30
integer textsize = -9
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Cancel"
boolean originalsize = true
long textcolor = 16777215
long backcolor = 255
end type

event clicked;CloseWithReturn(w_insert_position, "CANCEL")
end event

type pb_save from picturebutton within w_insert_position
integer x = 672
integer y = 844
integer width = 251
integer height = 100
integer taborder = 20
integer textsize = -9
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Save"
boolean originalsize = true
long textcolor = 16777215
long backcolor = 32768
end type

event clicked;string ls_grpid
long ll_grpid
string ls_group_name
string ls_row
string ls_col
string ls_callnum
string ls_positionid
string ls_jobcode
string ls_jobtitle
string ls_funddept
string ls_addinfo
//---------------------------
ls_grpid = sle_group_num.text
ll_grpid = f_stol(ls_grpid)
ls_group_name = sle_group_name.text
ls_row = sle_row.text
ls_row = f_lpad(ls_row, 2, "0")
ls_col = sle_col.text
ls_col = f_lpad(ls_row, 2, "0")
ls_callnum = sle_callnum.text
ls_addinfo = f_replace_string_in_string(ls_callnum, "1J", " ")
ls_addinfo = trim(ls_addinfo)
ls_positionid = sle_position_id.text
ls_jobcode = sle_job_code.text
ls_jobtitle = sle_job_title.text
ls_funddept = sle_funddept.text
//---------------------------
long ll_assgnd_empno
string ls_vehnum
string ls_error
dec dec_basepay
long ll_xrefid
int li_rtn_value
//----------------------------
boolean bSaved 
string ls_sql_err_text
bSaved = false
ll_assgnd_empno = 0
if(f_len_ext(ls_positionid) = 0) then
	MessageBox("Notification","Position ID cannot be blank!")
else
	if(f_len_ext(ls_callnum) = 2) then
		MessageBox("Notification","Invalid Callnum!")
	else
		
		MessageBox("Notification","Saving new records disabled. need to review code");
		
		
//		//look up available sns_board_specs_others record
//		integer li_num_grpid_avail_rows
//		//
//		select count(*) into :li_num_grpid_avail_rows from sns_board_specs_others where grpid = :ll_grpid using sqlca;
//		//
//		//insert into sns_board_specs_others
//		insert into sns_board_specs_others(groupname, nrow, ncol, grpid, empname, empno, callnum, issuper, isunfilled, active)
//		values(:ls_group_name, :ls_row, :ls_col, :ll_grpid, '', :ll_assgnd_empno, :ls_callnum, 0, 1, 1)
//		using sqlca;
//		//
//		if(sqlca.sqlcode <> -1) then
//			//
//			commit using sqlca;
//			//
//			//insert into sns_staffing_grps_positions2
//			ls_vehnum = "."
//			dec_basepay = 0.0
//			ll_xrefid = 0
//			ls_jobcode = trim(ls_jobcode)
//			//
//			insert into sns_staffing_grps_positions2(grpid, callnum, assgnd_empno, funddept, addinfo, vehnum, positionid, jobcode, jobtitle, basepay, xrefid, active)
//			values(:ll_grpid, :ls_callnum, :ll_assgnd_empno, :ls_funddept, :ls_addinfo, :ls_vehnum, :ls_positionid, :ls_jobcode, :ls_jobtitle, :dec_basepay, :ll_xrefid, 1)
//			using sqlca;
//			//
//			if(sqlca.sqlcode <> -1) then
//				//
//				commit using sqlca;
//				//
//				//f_insert_pos2_support_table_records(ll_grpid, ls_callnum, ll_empno, ls_funddept, ls_addinfo, ls_vehinfo, ls_positionid, ls_jobcode, ls_jobtitle, dec_basepay, b_modify_positions2_table, ref ls_error, ref sqlca)
//				li_rtn_value = f_insert_pos2_support_table_records(ll_grpid, ls_callnum, ll_assgnd_empno, ls_funddept, ls_addinfo, ls_vehnum, ls_positionid, ls_jobcode, ls_jobtitle, dec_basepay, false, ref ls_error, ref sqlca)
//				//
//				bSaved = true
//			else
//				ls_sql_err_text = sqlca.sqlerrtext
//				//
//				rollback using sqlca;
//				//
//			end if
//		else
//			ls_sql_err_text = sqlca.sqlerrtext
//			//
//			rollback using sqlca;
//			//
//		end if		
	end if
end if




end event

type st_5 from statictext within w_insert_position
integer x = 553
integer y = 228
integer width = 279
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Group Col:"
alignment alignment = right!
boolean focusrectangle = false
end type

type sle_col from singlelineedit within w_insert_position
integer x = 837
integer y = 212
integer width = 128
integer height = 84
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 12639424
boolean displayonly = true
borderstyle borderstyle = stylelowered!
end type

type st_4 from statictext within w_insert_position
integer x = 69
integer y = 228
integer width = 306
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Group Row:"
alignment alignment = right!
boolean focusrectangle = false
end type

type sle_row from singlelineedit within w_insert_position
integer x = 375
integer y = 216
integer width = 137
integer height = 84
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 12639424
boolean displayonly = true
borderstyle borderstyle = stylelowered!
end type

type sle_group_name from singlelineedit within w_insert_position
integer x = 695
integer y = 112
integer width = 905
integer height = 84
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 12639424
boolean displayonly = true
borderstyle borderstyle = stylelowered!
end type

type sle_group_num from singlelineedit within w_insert_position
integer x = 375
integer y = 112
integer width = 261
integer height = 84
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 12639424
boolean displayonly = true
borderstyle borderstyle = stylelowered!
end type

type st_3 from statictext within w_insert_position
integer x = 105
integer y = 124
integer width = 256
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Group#:"
alignment alignment = right!
boolean focusrectangle = false
end type

type sle_callnum from singlelineedit within w_insert_position
integer x = 370
integer y = 728
integer width = 416
integer height = 84
integer taborder = 10
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
string text = "1J"
borderstyle borderstyle = stylelowered!
end type

type st_2 from statictext within w_insert_position
integer x = 105
integer y = 736
integer width = 256
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "CallNum:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_1 from statictext within w_insert_position
integer x = 416
integer y = 12
integer width = 1152
integer height = 64
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "---- Insert UNFILLED Position ----"
boolean focusrectangle = false
end type

type ln_1 from line within w_insert_position
long linecolor = 33554432
integer linethickness = 13
integer beginx = 46
integer beginy = 972
integer endx = 1838
integer endy = 972
end type

type ln_2 from line within w_insert_position
long linecolor = 33554432
integer linethickness = 13
integer beginx = 41
integer beginy = 1520
integer endx = 1833
integer endy = 1520
end type

