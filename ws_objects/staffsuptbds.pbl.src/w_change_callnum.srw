$PBExportHeader$w_change_callnum.srw
forward
global type w_change_callnum from window
end type
type sle_others_id from singlelineedit within w_change_callnum
end type
type st_7 from statictext within w_change_callnum
end type
type sle_ordering from singlelineedit within w_change_callnum
end type
type st_6 from statictext within w_change_callnum
end type
type sle_empno from singlelineedit within w_change_callnum
end type
type st_5 from statictext within w_change_callnum
end type
type sle_empname from singlelineedit within w_change_callnum
end type
type st_4 from statictext within w_change_callnum
end type
type pb_cancel from picturebutton within w_change_callnum
end type
type pb_save from picturebutton within w_change_callnum
end type
type sle_new_callnum from singlelineedit within w_change_callnum
end type
type sle_curr_callnum from singlelineedit within w_change_callnum
end type
type st_3 from statictext within w_change_callnum
end type
type st_2 from statictext within w_change_callnum
end type
type st_1 from statictext within w_change_callnum
end type
end forward

global type w_change_callnum from window
integer width = 1111
integer height = 968
boolean titlebar = true
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 65535
string icon = "AppIcon!"
boolean clientedge = true
boolean center = true
sle_others_id sle_others_id
st_7 st_7
sle_ordering sle_ordering
st_6 st_6
sle_empno sle_empno
st_5 st_5
sle_empname sle_empname
st_4 st_4
pb_cancel pb_cancel
pb_save pb_save
sle_new_callnum sle_new_callnum
sle_curr_callnum sle_curr_callnum
st_3 st_3
st_2 st_2
st_1 st_1
end type
global w_change_callnum w_change_callnum

type variables
string ls_orig_orderby
end variables

on w_change_callnum.create
this.sle_others_id=create sle_others_id
this.st_7=create st_7
this.sle_ordering=create sle_ordering
this.st_6=create st_6
this.sle_empno=create sle_empno
this.st_5=create st_5
this.sle_empname=create sle_empname
this.st_4=create st_4
this.pb_cancel=create pb_cancel
this.pb_save=create pb_save
this.sle_new_callnum=create sle_new_callnum
this.sle_curr_callnum=create sle_curr_callnum
this.st_3=create st_3
this.st_2=create st_2
this.st_1=create st_1
this.Control[]={this.sle_others_id,&
this.st_7,&
this.sle_ordering,&
this.st_6,&
this.sle_empno,&
this.st_5,&
this.sle_empname,&
this.st_4,&
this.pb_cancel,&
this.pb_save,&
this.sle_new_callnum,&
this.sle_curr_callnum,&
this.st_3,&
this.st_2,&
this.st_1}
end on

on w_change_callnum.destroy
destroy(this.sle_others_id)
destroy(this.st_7)
destroy(this.sle_ordering)
destroy(this.st_6)
destroy(this.sle_empno)
destroy(this.st_5)
destroy(this.sle_empname)
destroy(this.st_4)
destroy(this.pb_cancel)
destroy(this.pb_save)
destroy(this.sle_new_callnum)
destroy(this.sle_curr_callnum)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_1)
end on

event open;string ls_parms
ls_parms = Message.StringParm //CURR CALLNUM
if(f_len_ext(ls_parms) > 2) then
	string lsa_parseoutdata[]
	integer li_num_parse_items
	li_num_parse_items = f_parseoutstring_ext(ls_parms, "|", ref lsa_parseoutdata)
	if(li_num_parse_items >= 5) then
		string ls_empno
		string ls_empname
		string ls_curr_callnum
		string ls_orderby
		ls_curr_callnum = lsa_parseoutdata[1]
		ls_empno = lsa_parseoutdata[2]
		ls_empname = lsa_parseoutdata[3]
		ls_orderby = lsa_parseoutdata[4]
		ls_orig_orderby = ls_orderby
		sle_empno.text = ls_empno
		sle_empname.text = ls_empname
		sle_curr_callnum.text = ls_curr_callnum
		sle_ordering.text = ls_orderby
		sle_others_id.text = lsa_parseoutdata[5]
		sle_new_callnum.text = "?"
	else
		MessageBox("Notification","Missing call number empno!")
		CloseWithReturn(w_change_callnum, "CANCEL")
	end if
else
	MessageBox("Notification","Current Callnum parameters cannot be blank!")
	CloseWithReturn(w_change_callnum, "CANCEL")
end if 
end event

type sle_others_id from singlelineedit within w_change_callnum
integer x = 27
integer y = 764
integer width = 110
integer height = 80
integer taborder = 20
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 553648127
string text = "0"
boolean border = false
textcase textcase = upper!
boolean displayonly = true
borderstyle borderstyle = stylelowered!
end type

type st_7 from statictext within w_change_callnum
integer x = 891
integer y = 652
integer width = 146
integer height = 64
integer textsize = -7
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 65535
string text = "(0->12)"
boolean focusrectangle = false
end type

type sle_ordering from singlelineedit within w_change_callnum
integer x = 613
integer y = 636
integer width = 274
integer height = 80
integer taborder = 20
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
string text = "0"
textcase textcase = upper!
borderstyle borderstyle = stylelowered!
end type

type st_6 from statictext within w_change_callnum
integer x = 343
integer y = 648
integer width = 261
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 16711680
long backcolor = 65535
string text = "Ordering:"
alignment alignment = right!
boolean focusrectangle = false
end type

type sle_empno from singlelineedit within w_change_callnum
integer x = 613
integer y = 292
integer width = 274
integer height = 100
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 65535
boolean displayonly = true
borderstyle borderstyle = stylelowered!
end type

type st_5 from statictext within w_change_callnum
integer x = 73
integer y = 304
integer width = 521
integer height = 72
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 65535
string text = "Empno#:"
alignment alignment = right!
boolean focusrectangle = false
end type

type sle_empname from singlelineedit within w_change_callnum
integer x = 32
integer y = 184
integer width = 1019
integer height = 100
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 65535
boolean displayonly = true
borderstyle borderstyle = stylelowered!
end type

type st_4 from statictext within w_change_callnum
integer y = 116
integer width = 521
integer height = 72
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 65535
string text = "Employee Name:"
alignment alignment = right!
boolean focusrectangle = false
end type

type pb_cancel from picturebutton within w_change_callnum
integer x = 247
integer y = 740
integer width = 238
integer height = 92
integer taborder = 20
integer textsize = -9
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Cancel"
boolean originalsize = true
long textcolor = 16777215
long backcolor = 255
end type

event clicked;CloseWithReturn(w_change_callnum, "CANCEL")
end event

type pb_save from picturebutton within w_change_callnum
integer x = 626
integer y = 740
integer width = 238
integer height = 92
integer taborder = 20
integer textsize = -9
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Save"
boolean originalsize = true
long backcolor = 25231232
end type

event clicked;string ls_curr_callnum
string ls_new_callnum
string ls_empno
string ls_empname
long ll_empno
string ls_ordering
integer li_orderby
string ls_sql_err_text
string ls_errors_text
ls_errors_text = ""
ls_empno = trim(sle_empno.text)
ll_empno = f_stol(ls_empno)
if(ll_empno > 0) then
	ls_empname = sle_empname.text
	ls_curr_callnum = sle_curr_callnum.text
	ls_new_callnum = sle_new_callnum.text
	ls_ordering = sle_ordering.text
	if(((f_len_ext(ls_new_callnum) > 2) and (pos(ls_new_callnum, "1J") > 0)) or (ls_orig_orderby <> ls_ordering)) then
		string ls_others_id
		ls_others_id = sle_others_id.text
		long ll_others_id
		ll_others_id = f_stol(ls_others_id)
		if(ll_others_id > 0) then
			li_orderby = f_stoi(ls_ordering)
			if(ls_new_callnum = "?") then
				//
				update sns_board_specs_others set orderby = :li_orderby where id = :ll_others_id using sqlca;
				//
			else
				//
				update sns_board_specs_others set callnum = :ls_new_callnum, orderby = :li_orderby where id = :ll_others_id using sqlca;
				//
			end if
			if(sqlca.sqlcode <> -1) then
				//
				commit using sqlca;
				//
			else
				ls_sql_err_text = sqlca.sqlerrtext
				//
				rollback using sqlca;
				//
				ls_errors_text = "SNS_BOARD_SPECS_OTHERS: FAILED UPDATE CALLNUM/ORDERBY." + gs_crlf
			end if
		end if
		//callnums in tables
		//------------------------------------------
		//callnum = sns_staffing_grps_positions2 
		//callnum = shs_emp_lookup_info
		//spunitno = sns_pos_xref
		//pspunitno = sns_pos_xref_mods
		//unitno = sns_spillman_master
		//unitno = sns_spillman_data
		//------------------------------------------
		if(ls_new_callnum <> "?") then
		
			string ls_addinfo
			ls_addinfo = ls_new_callnum
			ls_addinfo = f_replace_string_in_string(ls_addinfo , "1J", " ")
			ls_addinfo = trim(ls_addinfo)
			integer li_num_updates
			li_num_updates = 0
			//UPDATE sns_staffing_grps_positions2
			long ll_exists_id
			ll_exists_id = 0
			//
			select id into :ll_exists_id from sns_staffing_grps_positions2 where assgnd_empno = :ll_empno using sqlca;
			//
			if(ll_exists_id > 0) then
				//
				update sns_staffing_grps_positions2 set callnum = :ls_new_callnum, addinfo = :ls_addinfo where id = :ll_exists_id using sqlca;
				//
				if(sqlca.sqlcode <> -1) then
					//
					commit using sqlca;
					//
					li_num_updates++
				else
					ls_sql_err_text = sqlca.sqlerrtext
					//
					rollback using sqlca;
					//
					ls_errors_text = "sns_staffing_grps_positions2: FAILED UPDATE CALLNUM." + gs_crlf				
				end if
			end if
			//update shs_emp_lookup_info
			ll_exists_id = 0
			//
			select id into :ll_exists_id from shs_emp_lookup_info where shs_empno = :ll_empno using sqlca;
			//
			if(ll_exists_id > 0) then
				//
				update shs_emp_lookup_info set callnum = :ls_new_callnum where id = :ll_exists_id using sqlca;
				//
				if(sqlca.sqlcode <> -1) then
					//
					commit using sqlca;
					//
					li_num_updates++
				else
					ls_sql_err_text = sqlca.sqlerrtext				
					//
					rollback using sqlca;
					//
					ls_errors_text = "shs_emp_lookup_info: FAILED UPDATE CALLNUM." + gs_crlf					
				end if
			end if
			//update sns_pos_xref
			ll_exists_id = 0
			//
			select id into :ll_exists_id from sns_pos_xref where empno = :ll_empno using sqlca;
			//
			if(ll_exists_id > 0) then
				//
				update sns_pos_xref set spunitno = :ls_new_callnum where id = :ll_exists_id using sqlca;
				//
				if(sqlca.sqlcode <> -1) then
					//
					commit using sqlca;
					//
					li_num_updates++
				else
					ls_sql_err_text = sqlca.sqlerrtext
					//
					rollback using sqlca;
					//
					ls_errors_text = "sns_pos_xref: FAILED UPDATE CALLNUM." + gs_crlf				
				end if
			end if
			//update sns_pos_xref_mods
			ll_exists_id = 0
			//
			select id into :ll_exists_id from sns_pos_xref_mods where pempno = :ll_empno using sqlca;
			//
			if(ll_exists_id > 0) then
				//
				update sns_pos_xref_mods set pspunitno = :ls_new_callnum where id = :ll_exists_id using sqlca;
				//
				if(sqlca.sqlcode <> -1) then
					//
					commit using sqlca;
					//
					li_num_updates++
				else
					ls_sql_err_text = sqlca.sqlerrtext				
					//
					rollback using sqlca;
					//
					ls_errors_text = "sns_pos_xref_mods: FAILED UPDATE CALLNUM." + gs_crlf					
				end if
			end if
			//update sns_spillman_master/data		
			if(li_num_updates > 0) then
				ll_exists_id = 0
				//
				select id into :ll_exists_id from sns_spillman_master where ltrim(rtrim(eidnum)) = :ls_empno using sqlca;
				//
				if(ll_exists_id > 0) then
					//note: unitnolocked prevent cdunits from updating the callnum
					//
					update sns_spillman_master set unitno = :ls_new_callnum, unitnolocked = 1 where id = :ll_exists_id using sqlca;
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
						ls_errors_text = "sns_spillman_master: FAILED UPDATE UNITNO." + gs_crlf						
					end if
				end if
				//
				insert into sns_callnum_chglog(currcallnum, newcallnum, chgby, callnumempno, callnumempname, active)
				values(:ls_curr_callnum, :ls_new_callnum, :gs_winuser, :ll_empno, :ls_empname, 1)
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
					ls_errors_text = "sns_callnum_chglog: FAILED UPDATE CURRCALNUM/NEWCALLNUM/CHGBY." + gs_crlf					
				end if
			end if
		end if //ls_callnum <> "?" check
		if(f_len_ext(ls_errors_text) > 0) then
			ls_errors_text = "ERROR(s): " + ls_errors_text
			MessageBox("Notification", ls_errors_text, Exclamation!)
			CloseWithReturn(w_change_callnum, "ERROR")
		else	
			CloseWithReturn(w_change_callnum, "SAVED")
		end if
	else
		MessageBox("Notification","New Callnum cannot be blank and must start with a 1J.")
	end if
else
	MessageBox("Notification","Invvalid empno! cannot save")
end if

end event

type sle_new_callnum from singlelineedit within w_change_callnum
integer x = 613
integer y = 516
integer width = 274
integer height = 100
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
textcase textcase = upper!
borderstyle borderstyle = stylelowered!
end type

type sle_curr_callnum from singlelineedit within w_change_callnum
integer x = 613
integer y = 404
integer width = 274
integer height = 100
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 65535
boolean displayonly = true
borderstyle borderstyle = stylelowered!
end type

type st_3 from statictext within w_change_callnum
integer x = 197
integer y = 528
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 65535
string text = "New CallNum:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_2 from statictext within w_change_callnum
integer x = 73
integer y = 416
integer width = 521
integer height = 72
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 65535
string text = "Current Callnum:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_1 from statictext within w_change_callnum
integer x = 151
integer y = 8
integer width = 795
integer height = 84
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33488896
long backcolor = 65535
string text = "Change Call Number"
boolean focusrectangle = false
end type

