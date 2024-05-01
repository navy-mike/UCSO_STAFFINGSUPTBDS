$PBExportHeader$w_judicial_services.srw
forward
global type w_judicial_services from window
end type
type st_4 from statictext within w_judicial_services
end type
type st_2 from statictext within w_judicial_services
end type
type st_3 from statictext within w_judicial_services
end type
type cbx_show_birthdays from checkbox within w_judicial_services
end type
type pb_3 from picturebutton within w_judicial_services
end type
type dw_jud_admin from datawindow within w_judicial_services
end type
type dw_jud_group2 from datawindow within w_judicial_services
end type
type dw_jud_group1 from datawindow within w_judicial_services
end type
type dw_jud_supr1 from datawindow within w_judicial_services
end type
type dw_jud_chief from datawindow within w_judicial_services
end type
type st_1 from statictext within w_judicial_services
end type
type pb_2 from picturebutton within w_judicial_services
end type
type pb_1 from picturebutton within w_judicial_services
end type
end forward

global type w_judicial_services from window
integer width = 4535
integer height = 4044
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_4 st_4
st_2 st_2
st_3 st_3
cbx_show_birthdays cbx_show_birthdays
pb_3 pb_3
dw_jud_admin dw_jud_admin
dw_jud_group2 dw_jud_group2
dw_jud_group1 dw_jud_group1
dw_jud_supr1 dw_jud_supr1
dw_jud_chief dw_jud_chief
st_1 st_1
pb_2 pb_2
pb_1 pb_1
end type
global w_judicial_services w_judicial_services

on w_judicial_services.create
this.st_4=create st_4
this.st_2=create st_2
this.st_3=create st_3
this.cbx_show_birthdays=create cbx_show_birthdays
this.pb_3=create pb_3
this.dw_jud_admin=create dw_jud_admin
this.dw_jud_group2=create dw_jud_group2
this.dw_jud_group1=create dw_jud_group1
this.dw_jud_supr1=create dw_jud_supr1
this.dw_jud_chief=create dw_jud_chief
this.st_1=create st_1
this.pb_2=create pb_2
this.pb_1=create pb_1
this.Control[]={this.st_4,&
this.st_2,&
this.st_3,&
this.cbx_show_birthdays,&
this.pb_3,&
this.dw_jud_admin,&
this.dw_jud_group2,&
this.dw_jud_group1,&
this.dw_jud_supr1,&
this.dw_jud_chief,&
this.st_1,&
this.pb_2,&
this.pb_1}
end on

on w_judicial_services.destroy
destroy(this.st_4)
destroy(this.st_2)
destroy(this.st_3)
destroy(this.cbx_show_birthdays)
destroy(this.pb_3)
destroy(this.dw_jud_admin)
destroy(this.dw_jud_group2)
destroy(this.dw_jud_group1)
destroy(this.dw_jud_supr1)
destroy(this.dw_jud_chief)
destroy(this.st_1)
destroy(this.pb_2)
destroy(this.pb_1)
end on

event open;long ll_num_retrieved

dw_jud_chief.settransobject(sqlca)
ll_num_retrieved = dw_jud_chief.Retrieve(118)

dw_jud_supr1.settransobject(sqlca)
ll_num_retrieved = dw_jud_supr1.Retrieve(117, '1J30')

dw_jud_group1.settransobject(sqlca)
ll_num_retrieved = dw_jud_group1.Retrieve(135)

dw_jud_group2.settransobject(sqlca)
ll_num_retrieved = dw_jud_group2.Retrieve(136)

dw_jud_admin.settransobject(sqlca)
ll_num_retrieved = dw_jud_admin.Retrieve(59)
end event

type st_4 from statictext within w_judicial_services
integer x = 2542
integer y = 868
integer width = 517
integer height = 64
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tw Cen MT Condensed Extra Bold"
long textcolor = 16777215
long backcolor = 255
string text = "BIRTHDAY HAS PASSED"
alignment alignment = center!
boolean border = true
boolean focusrectangle = false
end type

type st_2 from statictext within w_judicial_services
integer x = 2011
integer y = 868
integer width = 517
integer height = 64
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tw Cen MT Condensed Extra Bold"
long textcolor = 33554432
long backcolor = 65280
string text = "BIRTHDAY IS TODAY"
alignment alignment = center!
boolean border = true
boolean focusrectangle = false
end type

type st_3 from statictext within w_judicial_services
integer x = 1481
integer y = 868
integer width = 517
integer height = 64
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tw Cen MT Condensed Extra Bold"
long textcolor = 33554432
long backcolor = 16776960
string text = "BIRTHDAY IS SOON"
alignment alignment = center!
boolean border = true
boolean focusrectangle = false
end type

type cbx_show_birthdays from checkbox within w_judicial_services
integer x = 1979
integer y = 768
integer width = 567
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Show All Birthdays"
end type

event clicked;if(cbx_show_birthdays.checked = true) then
	gb_show_all_birthdays = true
else
	gb_show_all_birthdays = false
end if
long ll_num_retrieved

//lb_test.reset()

dw_jud_chief.settransobject(sqlca)
ll_num_retrieved = dw_jud_chief.Retrieve(118)

dw_jud_supr1.settransobject(sqlca)
ll_num_retrieved = dw_jud_supr1.Retrieve(117, '1J30')

//dw_jud_supr2.settransobject(sqlca)
//ll_num_retrieved = dw_jud_supr2.Retrieve(117, '1J31')

dw_jud_group1.settransobject(sqlca)
ll_num_retrieved = dw_jud_group1.Retrieve(135)

dw_jud_group2.settransobject(sqlca)
ll_num_retrieved = dw_jud_group2.Retrieve(136)

dw_jud_admin.settransobject(sqlca)
ll_num_retrieved = dw_jud_admin.Retrieve(59)

//dw_jud_group3.settransobject(sqlca)
//ll_num_retrieved = dw_jud_group3.Retrieve(137)
//
//dw_jud_group4.settransobject(sqlca)
//ll_num_retrieved = dw_jud_group4.Retrieve(138)
//
//dw_jud_group5.settransobject(sqlca)
//ll_num_retrieved = dw_jud_group5.Retrieve(139)
//
//dw_jud_group6.settransobject(sqlca)
//ll_num_retrieved = dw_jud_group6.Retrieve(140)
//
end event

type pb_3 from picturebutton within w_judicial_services
integer x = 3643
integer y = 2564
integer width = 251
integer height = 100
integer taborder = 10
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "CLOSE"
boolean originalsize = true
long textcolor = 16777215
long backcolor = 255
end type

event clicked;close(w_judicial_services)
end event

type dw_jud_admin from datawindow within w_judicial_services
integer x = 3013
integer y = 964
integer width = 1463
integer height = 1484
integer taborder = 60
string dragicon = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFGRN.ICO"
string title = "none"
string dataobject = "dw_jud_groups"
boolean livescroll = true
borderstyle borderstyle = styleshadowbox!
end type

event clicked;//if(bIsDragging = false) then
//	string ls_dwo_name
//	string ls_hdrtext
//	long ll_grpid 
//	string ls_grpid	
//	long ll_empno
//	string ls_callnum
//	string ls_empname			
//	integer li_grow
//	integer li_gcol
//	string ls_parms
//	string ls_rtn_parms
//	long ll_row_count
//	integer li_num_rows
//	boolean bAutoRefresh
//	bAutoRefresh = false
//	boolean bOkToUpdate
//	bOkToUpdate = true	
//	string ls_refresh_grpids
//	//=======================
//	long ll_clicked_grpid
//	ll_clicked_grpid = 1
//	//=======================
//	datawindow dw_clicked_object
//	dw_clicked_object = f_getDwobjectByGrpid(ll_clicked_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//	if(IsNull(dw_clicked_object) = false) then
//		sle_drag_from_hdrtext.text = ""
//		sle_drag_from_object.text = ""
//		sle_drag_from_row.text = ""
//		sle_drag_from_grpid.text = ""
//		sle_drag_from_empno.text = ""
//		sle_drag_from_callnum.text = ""
//		sle_drag_from_empname.text = ""
//		if(row = 0) then
//			ls_hdrtext = dw_clicked_object.getitemstring(1, "grpteamid")
//		else
//			ls_hdrtext = dw_clicked_object.getitemstring(row, "grpteamid")
//		end if
//		string ls_hdrtext_short
//		integer li_hpos
//		li_hpos = pos(ls_hdrtext, "{")
//		if(li_hpos > 0) then
//			ls_hdrtext_short = trim(upper(mid(ls_hdrtext, 1, (li_hpos - 1))))
//		end if
//		ls_grpid = f_extract_bracketed_item(ls_hdrtext, "{","}", true)
//		ll_grpid = f_stol(ls_grpid)		
//		ls_dwo_name = trim(upper(dwo.name)) //B_INSERT_POSITION
//		sle_drag_from_row.text = string(row)
//		ll_row_count = dw_clicked_object.rowcount()	
//		li_grow = f_deterGrpidRowCol(ll_grpid, ll_row_count, ref li_gcol)
//		//
//		select numrows into :li_num_rows from sns_bd_others_layout_specs where grpid = :ll_grpid using sqlca;
//		//
//		ls_hdrtext_short = "/" + ls_hdrtext_short + "/"
//		if((row > 0) and (ls_dwo_name = "SNS_BOARD_SPECS_OTHERS_EMPNAME") and (pos(gs_not_allowed_to_dragdrop_hdrtexts, ls_hdrtext_short) = 0)) then
//			ll_empno = dw_clicked_object.getitemnumber(row, "sns_board_specs_others_empno")
//			if(ll_empno > 0) then
//				bIsDragging = true
//				sle_drag_from_object.text = upper(dwo.name)
//				sle_drag_from_hdrtext.text = ls_hdrtext
//				sle_drag_from_grpid.text = string(ll_grpid)
//				sle_drag_from_empno.text = string(ll_empno)
//				ls_callnum = dw_clicked_object.getitemstring(row, "sns_board_specs_others_callnum")
//				sle_drag_from_callnum.text = ls_callnum
//				ls_empname = dw_clicked_object.getitemstring(row, "sns_board_specs_others_empname")
//				sle_drag_from_empname.text = ls_empname
//				dw_clicked_object.Drag(Begin!)
//				dw_clicked_object.dragicon = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFGRN.ICO"
//				sle_icon_filenanme.text = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFGRN.ICO"
//			else
//				bAutoRefresh = false
//				ls_callnum = dw_clicked_object.getitemstring(row, "sns_board_specs_others_callnum")
//				sle_drag_from_callnum.text = ls_callnum
//				ls_empname = dw_clicked_object.getitemstring(row, "sns_board_specs_others_empname")
//				sle_drag_from_empname.text = ls_empname				
//				if(pos(ls_empname, "UNFILLED") > 0) then
//					integer li_drslt
//					integer li_max_names
//					long ll_num_avail_positions
//					li_drslt = MessageBox("Question","Are you sure you want to remove " + ls_empname + " from " + gs_crlf + ls_hdrtext + " with callnum " + ls_callnum + "?", QUESTION!, YESNO!, 1)
//					if(li_drslt = 1) then
//						integer li_del_rtn_value
//						li_del_rtn_value = 0
//						if(pos(ls_empname, "UNFILLED") > 0) and (ls_callnum = "TBD") then
//							//****************
//							//**** CASE 3 ****
//							//****************
//							li_del_rtn_value = f_deleteunfilledposition(ref dw_clicked_object, row, dw_unassigned, ref sqlca)
//							if(li_del_rtn_value = 1) then
//								bAutoRefresh = true
//							end if
//						elseif((pos(ls_empname, "UNFILLED") > 0) and (pos(ls_callnum, "1J") = 1)) then
//							//****************
//							//**** CASE 3 ****
//							//****************
//							li_del_rtn_value = f_deleteunfilledposition(ref dw_clicked_object, row, dw_unassigned, ref sqlca)
//							if(li_del_rtn_value = 1) then
//								bAutoRefresh = true
//							end if				
//						end if
//					end if
//				end if
//			end if //ll_empno > 0
//		elseif((row > 0) and (ls_dwo_name = "SNS_BOARD_SPECS_OTHERS_CALLNUM")) then
//			string ls_curr_calllnum
//			ls_curr_calllnum = dw_clicked_object.getitemstring(row, "sns_board_specs_others_callnum")
//			ls_empname = dw_clicked_object.getitemstring(row, "sns_board_specs_others_empname")
//			ll_empno = dw_clicked_object.getitemnumber(row, "sns_board_specs_others_empno")	
//			integer li_curr_orderby
//			li_curr_orderby = dw_clicked_object.getitemnumber(row, "sns_board_specs_others_orderby")
//			if(IsNull(li_curr_orderby) = true) then
//				li_curr_orderby = 0
//			end if
//			long ll_record_id
//			ll_record_id = dw_clicked_object.getitemnumber(row, "sns_board_specs_others_id")	
//			if((ll_empno > 0) and (ll_record_id > 0)) then
//				ls_parms = ls_curr_calllnum + "|" + string(ll_empno) + "|" + ls_empname + "|" + string(li_curr_orderby) + "|" + string(ll_record_id)
//				OpenWithParm(w_change_callnum, ls_parms)
//				ls_rtn_parms = Message.StringParm
//				if(pos(ls_rtn_parms, "ERROR") > 0) then
//					MessageBox("Notifcation","Call Number/Order by not changed. one or more errors occured! Call Administator with error. x4008")
//					bOkToUpdate = false
//				elseif(pos(ls_rtn_parms, "CANCEL") > 0) then
//					bOkToUpdate = false
//				end if
//				if(bOkToUpdate = true) then
//					dw_clicked_object.Retrieve(ll_clicked_grpid)
//					bAutoRefresh = true
//				end if
//			end if
//		else //row = 0
//			if(li_grow < li_num_rows) then
//				if(li_grow > ll_row_count) then 
//					if(ls_dwo_name = "B_INSERT_POSITION") then
//						gb_inserted_unfilled = false
//						//ll_grpid||li_grow||li_gcol||ls_hdrtext||ll_row_count
//						ls_parms = string(ll_grpid) + "|" + string(li_grow) + "|" + string(li_gcol) + "|" + ls_hdrtext + "|" + string(ll_row_count)
//						OpenWithParm(w_insert_position, ls_parms)
//						ls_rtn_parms = Message.StringParm
//						dw_clicked_object.Retrieve(ll_grpid)
//						gb_inserted_unfilled = true						
//						bAutoRefresh = true
//					end if					
//				else
//					if(ll_grpid > 0) then
//						string ls_funddept
//						string ls_groupname
//						//
//						select grpteam, funddept into :ls_groupname, :ls_funddept from sns_staffing_groups where id = :ll_grpid using sqlca;
//						//
//						string ls_row
//						string ls_col
//						ls_row = string(li_grow)
//						ls_col = string(li_gcol)
//						if(f_len_ext(ls_row) < 2) then
//							ls_row = f_lpad(ls_row, 2, "0")
//						end if
//						if(f_len_ext(ls_col) < 2) then
//							ls_col = f_lpad(ls_col, 2, "0")
//						end if
//						//insert unfilled position
//						//f_insert_unfilled_bd_specs(ls_groupname, ls_row, ls_col, ll_grpid, ls_empname, ll_empno, ls_callnum, 0, 1, 1)
//					else
//						MessageBox("Notification", "Cannot insert row. Max number postions already used.")
//					end if
//				end if
//			else
//				MessageBox("Notification", "Cannot insert row. Max number postions already used.")
//			end if
//		end if //row > 0
//		if(bAutoRefresh = true) then
//			ls_refresh_grpids = "," + string(ll_clicked_grpid) + ","
//			sle_refresh_grpids.text = ls_refresh_grpids
//			TriggerEvent(pb_refresh, Clicked!)							
//		end if
//	end if //IsNull dw_clicked_object check
//	
//end if //bIsDragging = true
//
end event

event doubleclicked;//string ls_dwo_name
//ls_dwo_name = dwo.name
//integer li_stop
////======================= 
//long ll_clicked_grpid
//ll_clicked_grpid = 1
////=======================
//boolean bAutoRefresh
//bAutoRefresh = true
//datawindow dw_clicked_object
//dw_clicked_object = f_getDwobjectByGrpid(ll_clicked_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//if(IsNull(dw_clicked_object) = false) then
//if(ls_dwo_name = "sns_board_specs_others_issuper") then  //old = sns_employees_super_lvl
//		integer li_super_lvl 
//		long ll_empno
//		ll_empno = dw_clicked_object.getitemnumber(row, 'sns_board_specs_others_empno') //old = sns_staffing_grps_positions2_assgnd_empno
//		li_super_lvl = dw_clicked_object.getitemnumber(row, 'sns_board_specs_others_issuper')
//		if(li_super_lvl = 1) then
//			dw_clicked_object.setitem(row, 'sns_board_specs_others_issuper', 0)
//			f_set_employees_super_lvl(0, ll_empno, ref sqlca)
//		else
//			dw_clicked_object.setitem(row, 'sns_board_specs_others_issuper', 1)
//			f_set_employees_super_lvl(1, ll_empno, ref sqlca)		
//		end if
//	else
//		if(ls_dwo_name = "datawindow") then
//			//=======================================================
//			//fm.io_employee
//			long ll_fm_empno
//			string ls_fm_empname
//			integer li_fm_fund
//			long ll_fm_dept
//			string ls_fm_email
//			string ls_fm_title
//			long ll_fm_super_empno
//			integer li_fm_fte_status
//			long ll_fm_jobcode
//			string ls_fm_positionid
//			ll_fm_empno = 0
//			ls_fm_empname = ""
//			li_fm_fund = 0
//			ll_fm_dept = 0
//			ls_fm_email = ""
//			ls_fm_title = ""
//			ll_fm_super_empno = 0
//			li_fm_fte_status = 0
//			ll_fm_jobcode = 0
//			ls_fm_positionid = ""
//			//sns_employees
//			long ll_emp_id
//			long ll_emp_empno
//			string ls_emp_empname
//			long ll_emp_grpid
//			integer li_emp_fund
//			long ll_emp_dept
//			string ls_emp_email
//			string ls_emp_title
//			long ll_emp_super_empno
//			decimal dec_emp_fte
//			string ls_emp_jobcode
//			string ls_emp_positionid
//			string ls_emp_depttitle
//			string ls_emp_jobtitle
//			string ls_emp_supervisor
//			string ls_emp_grps_resp     //KILLIAN-NANCY [13517]
//			ll_emp_id = 0
//			ll_emp_empno = 0
//			ls_emp_empname = ""
//			ll_emp_grpid  = 0
//			li_emp_fund = 0
//			ll_emp_dept = 0
//			ls_emp_email = ""
//			ls_emp_title = ""
//			ll_emp_super_empno = 0
//			dec_emp_fte = 0.0
//			ls_emp_jobcode = ""
//			ls_emp_positionid = ""
//			ls_emp_depttitle = ""
//			ls_emp_jobtitle = ""
//			ls_emp_supervisor = ""
//			ls_emp_grps_resp = ""
//			//sns_staffing_grps_positions2
//			long ll_pos_id
//			long ll_pos_assgnd_empno
//			long ll_pos_grpid
//			string ls_pos_callnum
//			string ls_pos_funddept
//			string ls_pos_addinfo
//			string ls_pos_jobtitle
//			string ls_pos_jobcode
//			string ls_pos_positionid
//			long ll_pos_xrefid		
//			ll_pos_id = 0
//			ll_pos_assgnd_empno = 0
//			ll_pos_grpid = 0
//			ls_pos_callnum = ""
//			ls_pos_funddept = ""
//			ls_pos_addinfo = ""
//			ls_pos_jobtitle = ""
//			ls_pos_jobcode = ""
//			ls_pos_positionid = ""
//			ll_pos_xrefid = 0		
//			//=======================================================
//			integer li_rtn_result		
//			//add employee
//			long ll_grpteamid_grpid
//			string ls_groupname
//			ls_groupname = dw_clicked_object.getitemstring(1, "grpteamid")
//			string ls_grpid
//			ls_grpid = f_extract_bracketed_item(ls_groupname, "{", "}", true)
//			ll_grpteamid_grpid = f_stol(ls_grpid)
//			long ll_to_grpid
//			ll_to_grpid = ll_clicked_grpid
//			if(ll_to_grpid > 0) then
//				string ls_messageparm
//				ls_messageparm = string(ll_clicked_grpid)
//				OpenWithParm(w_add_user, ls_messageparm)
//				string ls_selected_username
//				ls_selected_username = Message.StringParm
//				if(f_len_ext(ls_selected_username) > 0) then
//					li_rtn_result = MessageBox("Notification","Do you want to add User " + ls_selected_username + " to group " + ls_groupname, QUESTION!, YESNO!)
//					if(li_rtn_result = 1) then
//						long ll_add_user_empno
//						ll_add_user_empno = 0
//						string ls_selected_empno
//						ls_selected_empno = f_extract_bracketed_item(ls_selected_username, "[", "]", true)
//						ll_add_user_empno = f_stol(ls_selected_empno)
//						if(ll_add_user_empno > 0) then
//							string ls_selected_empname
//							int li_epos
//							li_epos = pos(ls_selected_username, "[")
//							if(li_epos > 0) then
//								ls_selected_empname = trim(mid(ls_selected_username, 1, (li_epos - 1)))
//							end if
//							//===================================
//							//*** INSERT INTO DRAG_TO GROUP ***
//							//===================================
//							string ls_to_callnum
//							integer li_num_updates
//							string ls_from_empname
//							long ll_from_bs_specs_others_exists_id
//							long ll_from_emp_exists_id
//							long ll_from_empno
//							string ls_from_positionid
//							string ls_sqlerrtext
//							string lsa_dd_errors[]
//							integer li_rtn_value
//							string ls_from_funddept
//							string ls_from_jobcode
//							string ls_from_jobtitle
//							string ls_error
//							string ls_to_positionid
//							integer li_commit_rtn_value
//							string ls_sql_error
//							long ll_xrefmods_ppos2recid
//							long ll_xref_exists_id
//							long ll_xrefmods_exists_id
//							long ll_emp_exists_id	
//							boolean bInsertNewUser
//							bInsertNewUser = false
//							string lsa_avail_callnums[]
//							integer li_num_avail_callnums
//							string ls_csql
//							//old code... ls_csql = "select callnum from sns_board_specs_others where grpid = " + string(ll_to_grpid) + " and empname is null and callnum is not null order by nrow, ncol"
//							ls_csql = "select callnum from sns_board_specs_others where grpid = " + string(ll_to_grpid) + " and instr(empname,'UNFILLED') > 0 and callnum is not null order by callnum"
//							li_num_avail_callnums = f_app_ds_populate_string_array_by_sql(ref lsa_avail_callnums, ls_csql, gi_pad_len, gs_delim, gb_compress, ref sqlca)
//							if(li_num_avail_callnums = 1) then
//								li_rtn_result = MessageBox("Notification","Only one available callnum position available [" + lsa_avail_callnums[1] + "]. Assign new user to that callnum?", QUESTION!, YESNO!)
//								if(li_rtn_result = 1) then
//									ls_to_callnum = lsa_avail_callnums[1]
//									bInsertNewUser = true
//								end if
//							elseif(li_num_avail_callnums > 1) then
//								integer li_cloop
//								string ls_callnums
//								for li_cloop = 1 to li_num_avail_callnums
//									ls_callnums += lsa_avail_callnums[li_cloop]
//									ls_callnums += ","
//								next
//								ls_callnums = f_trim_trailing_char(ls_callnums, ",")
//								string ls_selected_callnum
//								ls_selected_callnum = ""
//								ls_messageparm = ls_callnums
//								OpenWithParm(w_callnum_select, ls_messageparm)
//								ls_selected_callnum = Message.StringParm
//								if(f_len_ext(ls_selected_callnum) > 0) then
//									ls_to_callnum = ls_selected_callnum
//									bInsertNewUser = true							
//								end if
//							else
//								li_rtn_result = MessageBox("Notification","There are no available unfilled positions with call numbers. Add new user anyway?", QUESTION!, YESNO!)
//								if(li_rtn_result = 1) then
//									ls_to_callnum = "NEW"
//									bInsertNewUser = true
//								end if
//							end if
//							if(bInsertNewUser = true) then
//								string ls_selected_username_empno
//								ls_selected_username_empno = f_extract_bracketed_item(ls_selected_username, "[", "]", true)
//								ll_fm_empno = f_stol(ls_selected_username_empno)
//								if(ll_fm_empno > 0) then
//									//fm.io_employee
//									select empname, fund, dept, email, title, super_empno, fte_status, job_code, position_id into :ls_fm_empname,:li_fm_fund,:ll_fm_dept,:ls_fm_email,
//									:ls_fm_title, :ll_fm_super_empno, :li_fm_fte_status, :ll_fm_jobcode, :ls_fm_positionid
//									from fm.io_employee where empno = :ll_fm_empno
//									using sqlca;
//									//								
//									//sns_employees
//									select id, empno, empname, grpid, fund, dept, email, title, super_empno, fte, jobcode, positionid, depttitle, jobtitle, supervisor, grps_resp 
//									into :ll_emp_id, :ll_emp_empno, :ls_emp_empname, :ll_emp_grpid, :li_emp_fund, :ll_emp_dept, :ls_emp_email, :ls_emp_title, :ll_emp_super_empno, 
//									:dec_emp_fte, :ls_emp_jobcode, :ls_emp_positionid, :ls_emp_depttitle, :ls_emp_jobtitle, :ls_emp_supervisor, :ls_emp_grps_resp	
//									from sns_employees where empno = :ll_fm_empno
//									using sqlca;
//									//
//									//sns_staffing_grps_positions2
//									select id, assgnd_empno, grpid, callnum, funddept, addinfo, jobtitle, jobcode, positionid, xrefid 
//									into :ll_pos_id, :ll_pos_assgnd_empno, :ll_pos_grpid, :ls_pos_callnum, :ls_pos_funddept, :ls_pos_addinfo, :ls_pos_jobtitle, :ls_pos_jobcode,
//									:ls_pos_positionid, :ll_pos_xrefid
//									from sns_staffing_grps_positions2 where assgnd_empno = :ll_fm_empno
//									using sqlca;
//									
//									//       ls_fm_empname  ll_emp_id ll_pos_id
//									//       HOLMAN, CHLOE  316       46
//									//       -------------  --------- ---------
//									//CASE#1 CANNOT BE BLANK  > 0       >0      
//									//CASE#2 CANNOT BE BLANK  > 0       =0
//									//-----------------------------------------
//									//
//									if((f_len_ext(ls_fm_empname) > 0) and (ll_emp_id > 0) and (ll_pos_id > 0)) then
//										ls_pos_funddept = string(li_fm_fund) + "-" + string(ll_fm_dept)
//										//CASE#1
//										// 
//										integer li_num_avail_callnums_found
//										string lsa_avail_unused_callnums[]
//										li_num_avail_callnums_found = f_get_avail_group_callnums(ll_clicked_grpid, ref lsa_avail_unused_callnums, ref sqlca)
//										if(li_num_avail_callnums_found > 0) then
//											string ls_callnum_to_assign
//											ls_callnum_to_assign = ""
//											if(li_num_avail_callnums_found > 1) then
//												string ls_select_from_callnums
//												ls_select_from_callnums = f_create_string_from_array(lsa_avail_unused_callnums, ",")
//												ls_messageparm = ls_select_from_callnums
//												OpenWithParm(w_callnum_select, ls_messageparm)
//												ls_callnum_to_assign = Message.StringParm
//											else
//												ls_callnum_to_assign = lsa_avail_unused_callnums[1]
//											end if
//											if(f_len_ext(ls_callnum_to_assign) > 0) then
//												
//												li_rtn_result = MessageBox("Notification","Found available callnum " + ls_callnum_to_assign + ". Assign user to this callnum?", QUESTION!, YESNO!)
//												if(li_rtn_result = 1) then
//													ls_pos_addinfo = ls_callnum_to_assign
//													//update tables
//													// SNS_STAFFING_GRPS_POSTIIONS2
//													// SNS_POS_XREF
//													// SNS_POS_XREF_MODS
//													ls_pos_addinfo = f_replace_string_in_string(ls_pos_addinfo, "1J", "")
//													ls_pos_addinfo = trim(ls_pos_addinfo)
//													integer li_pos_rtn_value
//													string ls_pos_rtn_error
//													//if ll_pos_id = 0 then CASE2 will be supported by following function
//													//                 f_insert_pos2_support_table_records(ll_grpid, ls_callnum, ll_empno, ls_funddept, ls_addinfo, ls_vehinfo, ls_positionid, ls_jobcode, ls_jobtitle, dec_basepay, b_modify_positions2_table, ref ls_error, ref sqlca)
//													li_pos_rtn_value = f_insert_pos2_support_table_records(ll_clicked_grpid, ls_callnum_to_assign, ll_fm_empno, ls_pos_funddept, ls_pos_addinfo, ".", ls_fm_positionid, string(ll_fm_jobcode), ls_fm_title, 0.0, true, ls_pos_rtn_error, ref sqlca)
//													if(li_pos_rtn_value = 1) then
//														//update SNS_EMPLOYEES
//														string ls_fm_jobcode
//														ls_fm_jobcode = string(ls_fm_jobcode)
//														string ls_cost_center_descr
//														long ll_grp_super_empno
//														long ll_root_grp_super_empno
//														//
//														select grp_super_empno, root_grp_super_empno into :ll_grp_super_empno, :ll_root_grp_super_empno from sns_staffing_groups where id = :ll_clicked_grpid using sqlca;
//														//
//														select descr into :ls_cost_center_descr from sns_ucso_cost_centers where fund = :li_fm_fund and dept = :ll_fm_dept using sqlca;
//														//
//														select empname into :ls_emp_supervisor from sns_employees where empno = :ll_grp_super_empno using sqlca;
//														//
//														select empname into :ls_emp_grps_resp from sns_employees where empno = :ll_root_grp_super_empno using sqlca;
//														//
//														ls_emp_grps_resp = trim(ls_emp_grps_resp) + "     [" + string(ll_root_grp_super_empno) + "]"
//														//			
//														update sns_employees set grpid = :ll_clicked_grpid, fund = :li_fm_fund, dept = :ll_fm_dept, title = :ls_fm_title, jobcode = :ls_fm_jobcode,
//														positionid = trim(upper(:ls_fm_positionid)), depttitle = :ls_cost_center_descr, jobtitle = :ls_fm_title, supervisor = :ls_emp_supervisor,
//														super_empno = :ll_grp_super_empno, grps_resp = :ls_emp_grps_resp
//														where id = :ll_emp_id
//														using sqlca;
//														// 
//														if(sqlca.sqlcode <> -1) then
//															//
//															commit using sqlca;
//															//
//															//update tables
//															// sns_board_specs_others
//															// sns_bd_others_layout_specs														
//															
//															
//															
//														else
//															ls_sqlerrtext = sqlca.sqlerrtext
//															//
//															rollback using sqlca;
//															//
//															ls_sqlerrtext = "update to sns_board_specs_others error=" + ls_sqlerrtext
//															f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)													
//														end if
//													
//													
//													else
//														MessageBox("Notifications","Failed to update positions support tables.")
//													end if												
//												end if
//											else
//												MessageBox("Notification","Callnum must not be blank.")
//											end if
//										else
//											MessageBox("Notifications","All defined callnums are already assigned. You must unassign employee to free up a callnum. Then try again.");
//										end if
//									
//									end if
//									
//								end if
//							
//								string ls_to_addinfo
//								int li_apos
//								li_apos = pos(ls_to_callnum, "J")
//								if(li_apos > 0) then
//									ls_to_addinfo = trim(mid(ls_to_callnum, (li_apos + 1)))
//								else
//									ls_to_addinfo = ls_to_callnum
//								end if
//								//to add user empno must not exist in sns_staffing_grps_positions2 table
//								long ll_pos_assgnd_empno_exists_id
//								//
//								select id into :ll_pos_assgnd_empno_exists_id from sns_staffing_grps_positions2 where assgnd_empno = :ll_add_user_empno using sqlca;
//								//
//								li_rtn_result = 0
//								if(ll_pos_assgnd_empno_exists_id > 0) then
//									li_rtn_result = MessageBox("Notification","Employee " + ls_selected_empname + " already Exist/Assigned in the positions table. Move Anyway?", QUESTION!, YESNO!, 1)
//								end if
//								boolean bOkToMove
//								if(li_rtn_result = 0) then
//									bOkToMove = false
//								elseif(li_rtn_result = 1) then
//									bOkToMove = true
//								end if
//								if((ll_pos_assgnd_empno_exists_id = 0) or (bOkToMove = true)) then
//								
//									li_num_updates = 0
//									long ll_to_bs_specs_others_exists_id
//									ll_to_bs_specs_others_exists_id = 0
//									//determine next avail call num to add user to
//									//
//									select id into :ll_to_bs_specs_others_exists_id from sns_board_specs_others where callnum = :ls_to_callnum and  grpid = :ll_to_grpid using sqlca;
//									//
//									if((ll_to_bs_specs_others_exists_id > 0) and (ll_to_grpid > 0)) then
//										//
//										select callnum into :ls_to_callnum from sns_board_specs_others where id = :ll_to_bs_specs_others_exists_id using sqlca;
//										//
//										if(bOkToMove = false) then
//										
//											update sns_board_specs_others set empname = :ls_selected_empname, empno = :ll_add_user_empno, positionid = ''
//											where id = :ll_to_bs_specs_others_exists_id
//											using sqlca;
//											//
//											if(sqlca.sqlcode <> -1) then
//												//
//												commit using sqlca;
//												//
//												li_num_updates++
//											else
//												ls_sqlerrtext = sqlca.sqlerrtext
//												//
//												rollback using sqlca;
//												//
//												ls_sqlerrtext = "update to sns_board_specs_others error=" + ls_sqlerrtext
//												f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//											end if								
//											li_rtn_value = 0
//											//  0 = successful
//											// -1 = no action taken
//											// -2 = li_assgnd_empno_count > 0
//											// -3 = li_positionid_count > 0
//											// -4 = assgnd_empno not found in pos2
//											// -5 = ll_pos2idshort invalid
//											// -6 = tr_sqlca sqlcode = -1 sns_staffing_grps_positions2
//											// -7 = tr_sqlca sqlcode = -1 sns_pos_xref
//											// -8 = tr_sqlca sqlcode = -1 sns_pos_xref_mods
//											// -9 = tr_sqlca sqlcode = -1 sns_group_ids
//											//-10 = ll_pos2idshort <0 or > 90000 
//											
//											//ll_to_grpid = 3
//											//ls_to_callnum = 1j132
//											//ll_add_user_empno = 17545
//											//ls_from_funddept = 
//											//ls_to_addinfo =
//											//ls_from_positionid =
//											//ls_from_jobcode =
//											//ls_from_jobtitle =
//											
//											//
//											select to_char(fund) || '-' || to_char(dept), positionid, jobcode, jobtitle into :ls_from_funddept, :ls_from_positionid, :ls_from_jobcode, :ls_from_jobtitle
//											from sns_employees where empno = :ll_add_user_empno 
//											using sqlca;
//											//
//											if((IsNull(ls_from_funddept) = true) or (IsNull(ls_from_positionid) = true) or (IsNull(ls_from_jobcode) = true) or (IsNull(ls_from_jobtitle) = true)) then
//												//retrieve fm.io_employee data
//												//
//												select to_char(fund) || '-' || to_char(dept), position_id, job_code, title into :ls_from_funddept, :ls_from_positionid, :ls_from_jobcode, :ls_from_jobtitle
//												from fm.io_employee where empno = :ll_add_user_empno 
//												using sqlca;
//												//
//												if(IsNull(ls_from_funddept) = true) then
//													ls_from_funddept = ""
//												end if
//												if(IsNull(ls_from_jobcode) = true) then
//													ls_from_jobcode = ""
//												end if
//												if(IsNull(ls_from_jobtitle) = true) then
//													ls_from_jobtitle = ""
//												end if
//											end if
//											ls_from_positionid = trim(upper(ls_from_positionid))
//											ls_from_jobtitle = trim(upper(ls_from_jobtitle))
//											
//											li_stop = 0
//	
//											if((IsNull(ls_from_funddept) = false) and (IsNull(ls_from_positionid) = false) and (IsNull(ls_from_jobcode) = false) and (IsNull(ls_from_jobtitle) = false)) then
//	
//												li_rtn_value = f_insert_pos2_support_table_records(ll_to_grpid, ls_to_callnum, ll_add_user_empno, ls_from_funddept, ls_to_addinfo, &
//																													".", ls_from_positionid, ls_from_jobcode, ls_from_jobtitle, 0.0, true, &
//																													ref ls_error, ref sqlca)
//												if(li_rtn_value >= 1) then
//													if(ll_from_emp_exists_id > 0) then
//														//update sns_board_specs_others positionid
//														//
//														select positionid into :ls_to_positionid from sns_staffing_grps_positions2 where assgnd_empno = :ll_add_user_empno using sqlca;
//														//
//														update sns_board_specs_others set positionid = :ls_to_positionid where id = :ll_to_bs_specs_others_exists_id using sqlca;
//														//
//													
//														// - update sns_employees set positionid = "", title = "", jobcode = "", jobtitle = "", supervisor = 0, grps_resp = "", grpid = 0 where id = ll_from_emp_exists_id
//														update sns_employees set positionid = :ls_to_positionid, title = :ls_from_jobtitle, jobcode = :ls_from_jobcode, grpid = :ll_to_grpid
//														where id = :ll_add_user_empno
//														using sqlca;
//														//
//														if(sqlca.sqlcode <> -1) then
//															//
//															commit using sqlca;
//															//
//															li_num_updates++
//														else
//															ls_sqlerrtext = sqlca.sqlerrtext
//															//
//															rollback using sqlca;
//															//
//															ls_sqlerrtext = "update to sns_employees columns error=" + ls_sqlerrtext
//															f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//															bAutoRefresh = false
//														end if										
//														if((ll_to_grpid > 0) and (li_num_updates >= 2)) then
//															long ll_grps_resp
//															ll_grp_super_empno = 0
//															ll_grps_resp = 0
//															ll_grp_super_empno = 0
//															//
//															select grp_super_empno, root_grp_super_empno into :ll_grp_super_empno, :ll_grps_resp from sns_staffing_groups where id = :ll_to_grpid using sqlca;
//															//
//															update sns_employees set grps_resp = :ll_grps_resp, supervisor = :ll_grp_super_empno  where id = :ll_add_user_empno using sqlca;
//															//
//															if(sqlca.sqlcode <> -1) then
//																//
//																commit using sqlca;
//																//
//																li_num_updates++
//															else
//																ls_sqlerrtext = sqlca.sqlerrtext
//																//
//																rollback using sqlca;
//																//
//																ls_sqlerrtext = "update to sns_employees grps_resp,supervisor error=" + ls_sqlerrtext
//																f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//																bAutoRefresh = false
//															end if											
//														end if //ll_to_grpid > 0
//													end if//ll_from_emp_exists_id > 0
//												end if //li_rtn_value = 0
//											else
//												string ls_msg_text
//												ls_msg_text = "One or more Null Values. Cannot add new user."
//												if(ls_to_positionid = "") or (IsNull(ls_to_positionid) = true) then
//													ls_msg_text += " Positionid is blank!"
//												end if
//												bAutoRefresh = false
//												MessageBox("Notification",ls_msg_text)
//											end if //check for IsNull for funddept, positionid, jobcode, jobtitle
//										else
//											//bOkToMove = true
//											//move employee from positions2 grpid to the ll_clicked_grpid
//											// sns_staffing_grps_positions2
//											//  -change grpid to the move to grpid
//											//  -change callnum and addinfo to new callnum
//											// sns_pos_xref
//											//  -change grpid to the move to group grpid
//											//  -change spunitno to new callnum
//											// sns_pos_xref_mods
//											//  -change pgrpid to the move to group grpid
//											//  -change pspunitno to new callnum
//											// sns_employees
//											//  -update the grpid to move to group grpid
//											// sns_board_specs_others
//											//  -update empname
//											//  -       empno
//											//  -       positionid
//											//  - where callnum = selected callnum
//											//example: move CARLE-JOSEPH from SPECIAL VICTIMS UNIT TO EM2
//											//ll_add_user_empno = 16858
//											//ll_clicked_grpid = 9
//											//ls_to_callnum = "1J2550"
//											//ll_to_bs_specs_others_exists_id = 88
//											//ls_groupname = "EAGLE MOUNTAION 2 {9}"
//											//ls_selected_callnum = "1J2550"
//											//ls_selected_empname = "CARLE-JOSEPH"
//											//ls_selected_empno = 16858
//											//ll_pos_assgnd_empno_exists_id = 116
//											string ls_new_funddept
//											integer li_fund
//											long ll_dept
//											integer li_prev_fund
//											long ll_prev_dept
//											string ls_pos
//											if(ll_pos_assgnd_empno_exists_id > 0) then
//												//
//												select positionid,jobcode,jobtitle into :ls_pos_positionid, :ls_pos_jobcode, :ls_pos_jobtitle from sns_staffing_grps_positions2 where id = :ll_pos_assgnd_empno_exists_id using sqlca;
//												//
//												select funddept into :ls_new_funddept from sns_staffing_groups where id = :ll_clicked_grpid using sqlca;
//												//
//												int li_tpos
//												li_tpos = pos(ls_new_funddept, "-")
//												if(li_tpos > 0) then
//													li_fund = f_stoi(trim(mid(ls_new_funddept, 1, (li_tpos - 1))))
//													ll_dept = f_stol(trim(mid(ls_new_funddept, (li_tpos + 1))))
//												end if
//												ll_pos_xrefid = 0
//												ll_xrefmods_ppos2recid = 0
//												//
//												select xrefid into :ll_pos_xrefid from sns_staffing_grps_positions2 where id = :ll_pos_assgnd_empno_exists_id using sqlca;
//												//
//												if(ll_pos_xrefid > 0) then
//													ll_xrefmods_ppos2recid = ll_pos_assgnd_empno_exists_id
//													if(ll_xrefmods_ppos2recid > 0) then
//														//
//														select id into :ll_xrefmods_exists_id from sns_pos_xref_mods where ppos2recid = :ll_xrefmods_ppos2recid using sqlca;
//														//
//													end if
//												end if
//												//
//												select id into :ll_emp_exists_id from sns_employees where empno = :ll_add_user_empno using sqlca;
//												//
//												update sns_staffing_grps_positions2 set grpid = :ll_clicked_grpid, callnum = :ls_to_callnum, addinfo = :ls_to_addinfo, funddept = :ls_new_funddept where id = :ll_pos_assgnd_empno_exists_id using sqlca;
//												//
//												li_commit_rtn_value = f_commit_rollback_record(ref sqlca);
//												if(li_commit_rtn_value = 1) then
//													if(ll_pos_xrefid > 0) then
//														//
//														update sns_pos_xref set grpid = :ll_clicked_grpid, spunitno = :ls_to_callnum where id = :ll_pos_xrefid using sqlca;
//														//
//														li_commit_rtn_value = f_commit_rollback_record(ref sqlca);
//														if(li_commit_rtn_value = 1) then
//															//
//															if(ll_xrefmods_exists_id > 0) then
//																//
//																update sns_pos_xref_mods set pgrpid = :ll_clicked_grpid, pspunitno = :ls_to_callnum where id = :ll_xrefmods_exists_id using sqlca;
//																//
//																li_commit_rtn_value = f_commit_rollback_record(ref sqlca);
//																if(li_commit_rtn_value = 1) then
//																	//do nothing
//																else
//																	ls_sql_error = "Failed to update position xref mods table. Contact administrator x4008."
//																end if
//															end if
//														else
//															ls_sql_error = "Failed to update position xref table. Contact administrator x4008."
//														end if
//													
//													end if
//												else	
//													ls_sql_error = "Failed to update positions table. Contact administrator x4008."
//												end if
//												if(f_len_ext(ls_sql_error) = 0) then
//													if(ll_emp_exists_id > 0) then
//														//
//														update sns_employees set prevfund = fund, prevdept = dept where id = :ll_emp_exists_id using sqlca;
//														//
//														update sns_employees set grpid = :ll_clicked_grpid, fund = :li_fund, dept = :ll_dept, jobcode = :ls_pos_jobcode, jobtitle = :ls_pos_jobtitle
//														where id = :ll_emp_exists_id 
//														using sqlca;
//														//
//														li_commit_rtn_value = f_commit_rollback_record(ref sqlca);
//														if(li_commit_rtn_value = 1) then														
//															//do nothing
//														else
//															ls_sql_error = "Failed to update employees table. 	Contact administrator x4008."												
//														end if
//													end if
//												end if
//												if(f_len_ext(ls_sql_error) = 0) then
//													//
//													update sns_board_specs_others set empname = :ls_selected_empname, empno = :ll_add_user_empno, positionid = :ls_pos_positionid
//													where id = :ll_to_bs_specs_others_exists_id
//													using sqlca;
//													//
//													li_commit_rtn_value = f_commit_rollback_record(ref sqlca);
//													if(li_commit_rtn_value = 1) then
//														//do nothing
//													else
//														ls_sql_error = "Failed to update board specs table. Contact administrator x4008."												
//													end if
//												end if
//												if(f_len_ext(ls_sql_error) = 0) then
//													MessageBox("Notification", "Successfully moved employee " + ls_selected_empname + " to " + ls_groupname)
//												else
//													MessageBox("Notification",ls_sql_error,Exclamation!)
//												end if
//											end if
//										end if
//									else
//										//insert into tables
//										MessageBox("Notification","insert into table code not yet coded!")
//										
////										integer li_func_rtn_value
////										//collect to table variables
////										if(ll_add_user_empno > 0) then
////											long ll_pos_exists_id
////											long ll_pos_xrefid
////											long ll_pos_funddept
////											string ls_pos_funddept
////											string ls_pos_addinfo
////											string ls_pos_jobcode
////											string ls_pos_jobtitle
////											long ll_xrefmods_ppos2recid
////											long ll_xref_exists_id
////											long ll_xrefmods_exists_id
////											long ll_emp_exists_id
////											long ll_bs_specs_others_exists_id
////											//
////											select id, xrefid, funddept, addinfo, jobcode, jobtitle into :ll_pos_exists_id, :ll_pos_xrefid, :ls_pos_funddept, :ls_pos_addinfo, :ls_pos_jobcode, :ls_pos_jobtitle from sns_staffing_grps_positions2 where assgnd_empno = :ll_add_user_empno using sqlca;
////											//
////											if(ll_pos_exists_id > 0) then
////												ll_xrefmods_ppos2recid = ll_pos_exists_id
////											else
////												
////											end if
////											//
////											select id into :ll_xref_exists_id from sns_pos_xref where empno = :ll_add_user_empno using sqlca;
////											//
////											select id into :ll_xrefmods_exists_id from sns_pos_xref_mods where pempno = :ll_add_user_empno using sqlca;
////											//
////											select id into :ll_emp_exists_id from sns_employees where empno = :ll_add_user_empno using sqlca;
////											//
////											select id into :ll_bs_specs_others_exists_id from sns_board_specs_others where ltrim(rtrim(upper(empname))) = :ls_selected_empname and empno = :ll_add_user_empno using sqlca;
////											//	
////											if(ll_pos_exists_id = 0) then
////												//insert into sns_staffing_grps_positions2
////												//li_func_rtn_value = f_insert_pos2_support_table_records(
////												//ll_clicked_grpid, 
////												//ls_callnum, 
////												//ll_empno, 
////												//ls_funddept, 
////												//ls_addinfo, 
////												//ls_vehinfo, 
////												//ls_positionid, 
////												//ls_jobcode, 
////												//ls_jobtitle, 
////												//dec_basepay, 
////												//b_modify_positions2_table, 
////												//ref ls_error, ref sqlca)
////											end if
////											
////											
////											
////											
////											
////											
////											
////										end if
//										li_stop = 0
//									end if //ll_from_bs_specs_others_exists_id > 0											
//								else
//									MessageBox("Notification","Cannot add Employee " + ls_selected_empname + ". They already Exist/Assigned in the positions table in a different group.")
//								end if
//							else
//								//bInsertNewUser = false code block
//								bAutoRefresh = false
//								MessageBox("Notification","One or more callnum preset code block failed!")
//							end if //bInsertNewUser = true
//							if(bAutoRefresh = true) then
//								string ls_refresh_grpids
//								ls_refresh_grpids = "," + string(ll_clicked_grpid) + ","
//								sle_refresh_grpids.text = ls_refresh_grpids
//								TriggerEvent(pb_refresh, Clicked!)							
//							end if
//						end if //ll_add_user_empno > 0
//					end if
//				end if
//			end if //ll_to_grpid > 0
//		end if
//	end if 
//end if	
//
end event

event dragdrop;//if(bIsDragging = true) then
//	integer li_stop
//	sle_drag_drop_row.text = string(row)
//	//=======================
//	long ll_dragdrop_grpid
//	ll_dragdrop_grpid = 1
//	//=======================
//	datawindow dw_to_object
//	dw_to_object = f_getDwobjectByGrpid(ll_dragdrop_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//	datawindow dw_from_object
//	long ll_from_grpid
//	ll_from_grpid = f_stol(sle_drag_from_grpid.text)
//	if(ll_from_grpid > 0) then	
//		dw_from_object = f_getDwobjectByGrpid(ll_from_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//	end if
//	datawindow dw_unassigned_object
//	dw_unassigned_object = f_getDwobjectByGrpid(131, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//	if((IsValid(dw_from_object) = true) and (IsValid(dw_to_object) = true)) then
//		string ls_errors
//		string ls_drag_from_positionid
//		string ls_dwo_name
//		long ll_to_grpid
//		string ls_grpid		
//		string ls_empname
//		long ll_empno
//		string ls_callnum
//		long ll_row_count
//		long ll_num_avail_positions
//		integer li_to_grow
//		integer li_to_gcol	
//		string ls_from_hdrtext
//		string ls_from_empname
//		long ll_from_row
//		string ls_to_hdrtext
//		string ls_to_empname
//		long ll_to_row
//		string ls_mode
//		long ll_from_empno
//		long ll_to_empno
//		long ll_to_rowcount
//		string ls_from_text
//		long ll_from_pos_id
//		long ll_from_xrefid
//		string ls_from_positionid
//		long ll_to_pos_id
//		long ll_to_xrefid
//		string ls_to_positionid
//		string ls_jobcode
//		string ls_jobtitle
//		string ls_funddept
//		string ls_addinfo
//		string ls_vehnum
//		integer li_rtn_value
//		string ls_error
//		string ls_groupname
//		integer li_case_num
//		integer li_active
//		integer li_issuper
//		integer li_isunfilled
//		integer li_pos2idshort
//		string ls_status
//		long ll_pid
//		integer li_remins_rtn
//		string ls_row
//		string ls_col
//		string ls_icon_name
//		string ls_sqlerrtext
//		string ls_from_callnum
//		integer li_commit_status
//		integer li_num_dup_callnums
//		ls_errors = ""
//		ls_icon_name = sle_icon_filenanme.text 		
//		li_remins_rtn = 0
//		ll_pid = 0
//		//---------------------------------
//		ls_dwo_name = ""
//		ll_to_grpid = 0
//		ls_grpid = ""
//		ls_empname = ""
//		ll_empno = 0
//		ls_callnum = ""
//		ll_row_count = 0
//		ll_num_avail_positions = 0
//		li_to_grow = 0
//		li_to_gcol = 0
//		ls_row = ""
//		ls_col = ""
//		ls_from_callnum = ""
//		//---------------------------------
//		ls_from_callnum = sle_drag_from_callnum.text
//		ls_dwo_name = upper(dwo.name)
//		ls_drag_from_positionid = ""
//		ls_drag_from_positionid = sle_drag_from_positionid.text
//		string ls_hdrtext
//		if(row = 0) then
//			ls_hdrtext = dw_to_object.getitemstring(1, "grpteamid")	
//		else
//			ls_hdrtext = dw_to_object.getitemstring(row, "grpteamid")	
//		end if
//		ls_grpid = f_extract_bracketed_item(ls_hdrtext, "{","}", true)
//		ll_to_grpid = f_stol(ls_grpid)		
//		string ls_dragfrom_hdrtext
//		ls_dragfrom_hdrtext = sle_drag_from_hdrtext.text
//		sle_drag_drop_hdrtext.text = ls_hdrtext
//		sle_drag_drop_object.text = ls_dwo_name
//		sle_drag_drop_grpid.text = string(ll_to_grpid)
//		ll_row_count = dw_to_object.rowcount()			
//		sle_dragdrop_rowcount.text = string(ll_row_count)	
//		if(ll_to_grpid > 0) then
//			li_to_grow = f_deterGrpidRowCol(ll_to_grpid, ll_row_count, ref li_to_gcol)
//			//
//			select count(*) into :ll_num_avail_positions	from sns_board_specs_others where grpid = :ll_to_grpid using sqlca;
//			//
//			sle_num_avail_positions.text = string(ll_num_avail_positions)
//		end if		
//		sle_drag_drop_row.text = string(row)
//		sle_drag_drop_col.text = string(li_to_gcol)
////		if(ls_hdrtext = ls_dragfrom_hdrtext) then
////			if((ls_dragfrom_hdrtext = ls_hdrtext) and (ls_dwo_name = "DATAWINDOW") and (ll_dragdrop_grpid = ll_to_grpid) and (row = 0)) then
////				//just display info and cancel drag
////				sle_drag_drop_empname.text = "INSERT"
////				dw_to_object.Drag(Cancel!)
////				bIsDragging = false		
////				sle_is_dragging.text = string(bIsDragging)				
////			else
////				triggerevent(pb_cancel_dragdrop, Clicked!) //if same window as dragenter then cancel dragdrop
////			end if
////		else
//			ll_empno = 0
//			ll_to_grpid = 0	
//			//w_main.sle_drag_drop_hdrtext.text = ls_hdrtext
//			if(row > 0) then
//				ls_empname = dw_to_object.getitemstring(row, "sns_board_specs_others_empname")
//				sle_drag_drop_empname.text = ls_empname		
//				ls_callnum = dw_to_object.getitemstring(row, "sns_board_specs_others_callnum")
//				sle_drag_drop_callnum.text = ls_callnum				
//				ll_empno = dw_to_object.getitemnumber(row, "sns_board_specs_others_empno")
//				sle_drag_drop_empno.text = string(ll_empno)
//				if(ll_empno > 0) then
//				end if //ll_empno > 0
//			else
//				sle_drag_drop_empname.text = "INSERT"
//				sle_drag_drop_empno.text = string(ll_empno)
//			end if
//			dw_to_object.Drag(Cancel!)
//			bIsDragging = false	
//			//
//			ls_from_hdrtext = ""
//			ls_from_empname = ""
//			ll_from_row = 0
//			ls_to_hdrtext = ""
//			ls_to_empname = ""
//			ll_to_row = 0
//			ls_mode = ""
//			ll_from_empno = 0
//			ll_to_empno = 0
//			ll_to_rowcount = 0
//			ls_from_text = ""
//			//
//			ls_from_text = sle_drag_from_object.text
//			ls_from_hdrtext = sle_drag_from_hdrtext.text
//			ls_from_empname = sle_drag_from_empname.text
//			ll_from_row = f_stol(sle_drag_from_row.text)
//			ls_to_hdrtext = sle_drag_drop_hdrtext.text
//			ls_to_empname = sle_drag_drop_empname.text
//			ll_to_row = row
//			ll_from_grpid = f_stol(sle_drag_from_grpid.text)
//			ll_to_grpid = f_stol(sle_drag_drop_grpid.text)
//			ll_from_empno = f_stol(sle_drag_from_empno.text)
//			ll_to_empno = f_stol(sle_drag_drop_empno.text)
//			ll_to_rowcount = dw_to_object.rowcount()
//			//------------------- fix xrefids if needed --------------------------
//			ll_from_pos_id = 0
//			ll_from_xrefid = 0
//			ls_from_positionid = ""
//			ll_to_pos_id = 0
//			ll_to_xrefid = 0
//			ls_to_positionid = ""
//			//------------------------------
//			boolean bSkipInvalidDropCallnum
//			bSkipInvalidDropCallnum = false
//			if(ll_from_grpid = 131) then
//				if(ls_callnum <> ls_from_callnum) then
//					MessageBox("Notification","When dragging from the 'UNASSIGNED {131}' group and the call number is not blank, then it can only be dropped on a like '** UNFILLED **' call number. Try again please!", Exclamation!)
//					bSkipInvalidDropCallnum = true
//				end if
//			end if
//			//------------------------------
//			if(bSkipInvalidDropCallnum = false) then
//				//
//				select positionid into :ls_from_positionid from sns_staffing_grps_positions2 where assgnd_empno = :ll_from_empno using sqlca;
//				//
//				sle_drag_from_positionid.text = ls_from_positionid
//				//
//				select positionid into :ls_to_positionid from sns_staffing_grps_positions2 where assgnd_empno = :ll_to_empno using sqlca;
//				//
//				sle_drag_to_positionid.text = ls_to_positionid
//				if(f_len_ext(ls_from_positionid) >= 14) then
//					//
//					select id,xrefid into :ll_from_pos_id, :ll_from_xrefid from sns_staffing_grps_positions2 where ltrim(rtrim(upper(positionid))) = :ls_from_positionid using sqlca;
//					//
//				end if			
//				if(f_len_ext(ls_to_positionid) >= 14) then
//					//
//					select id,xrefid into :ll_to_pos_id, :ll_to_xrefid from sns_staffing_grps_positions2 where ltrim(rtrim(upper(positionid))) = :ls_to_positionid using sqlca;
//					//
//				end if
//				if(ll_from_xrefid = 0) then
//					ll_from_xrefid = f_fix_xrefid(ll_from_empno, ref sqlca)
//				end if
//				if(ll_to_xrefid = 0) then
//					ll_to_xrefid = f_fix_xrefid(ll_to_empno, ref sqlca)
//				end if
//				ls_jobcode = ""
//				ls_jobtitle = ""
//				ls_funddept = ""
//				ls_error = ""
//				if(ll_to_empno > 0) then
//					//
//					select job_code, title into :ls_jobcode, :ls_jobtitle from fm.io_employee using sqlca;
//					//
//				end if
//				//-------------------------------------------------------------------
//				ls_mode = f_deterDragDropMode(ll_to_row, ll_to_rowcount, ll_num_avail_positions, ll_from_grpid, ll_to_grpid, ll_from_empno, ll_to_empno, ls_from_empname, ls_to_empname, ls_from_hdrtext, ls_to_hdrtext)
//				sle_drag_drop_mode.text = ls_mode
//				if(f_len_ext(ls_mode) >= 4) then
//					ls_error = ""
//					ls_addinfo = "."
//					ls_vehnum = "."
//					ls_groupname = "PATROL"
//					li_case_num = 0				
//					li_active = 1
//					li_issuper = 0
//					li_isunfilled = 0
//					ls_col = string(li_to_gcol)
//					ls_row = string(li_to_grow)
//					long ll_fm_empno
//					string ls_fm_empname
//					string ls_fm_funddept
//					string ls_fm_title
//					long ll_fm_jobcode
//					string ls_fm_jobcode
//					string ls_fm_positionid
//					ll_fm_empno = 0
//					ls_fm_empname = ""
//					ls_fm_funddept = ""
//					ls_fm_title = ""
//					ll_fm_jobcode = 0
//					ls_fm_positionid = ""
//					if(ll_to_empno > 0) then
//						//
//						select empno, empname, fund || '-' || dept as funddept, title, job_code, position_id into :ll_fm_empno, :ls_fm_empname, :ls_fm_funddept, :ls_fm_title, :ll_fm_jobcode, :ls_fm_positionid
//						from fm.io_employee
//						where empno = 17117			
//						using sqlca;
//						//
//						if(ll_fm_jobcode > 0) then
//							ls_fm_funddept = string(ll_fm_jobcode)
//						end if
//					end if
//					//===========================
//					boolean bSuccessfulMove
//					boolean bSuccessfulRemove
//					boolean bSuccessfulInsert
//					string lsa_dd_errors[]				
//					//===========================
//	
//					string ls_from_funddept
//					string ls_from_addinfo
//					string ls_from_jobcode
//					string ls_from_jobtitle
//					integer li_num_deletes
//					integer li_num_updates		
//					integer li_inserted_status
//					ls_from_funddept = ""
//					ls_from_addinfo = ""
//					ls_from_jobcode = ""
//					ls_from_jobtitle = ""
//	
//					//
//					long ll_from_pos_exists_id
//					long ll_from_xref_exists_id
//					long ll_from_xrefmods_exists_id
//					long ll_from_emp_exists_id
//					long ll_from_xrefmods_ppos2recid
//					long ll_from_bs_specs_others_exists_id				
//					long ll_from_pos_xrefid
//					string ls_from_pos_funddept
//					string ls_from_pos_addinfo
//					string ls_from_pos_jobcode
//					string ls_from_pos_jobtitle
//					ll_from_pos_exists_id = 0              //used
//					ll_from_xref_exists_id = 0             
//					ll_from_xrefmods_exists_id = 0 
//					ll_from_emp_exists_id = 0 
//					ll_from_xrefmods_ppos2recid = 0        //used
//					ll_from_bs_specs_others_exists_id = 0 				
//					ll_from_pos_xrefid = 0                 //used
//					
//					ll_from_pos_xrefid = 0
//					ls_from_pos_funddept = ""              //used
//					ls_from_pos_addinfo = ""               //used
//					ls_from_pos_jobcode = ""               //used
//					ls_from_pos_jobtitle = ""              //used
//					//				
//					long ll_to_pos_exists_id
//					long ll_to_xref_exists_id
//					long ll_to_xrefmods_exists_id
//					long ll_to_emp_exists_id
//					long ll_to_xrefmods_ppos2recid
//					long ll_to_bs_specs_others_exists_id		
//					long ll_to_pos_xrefid
//					string ls_to_pos_funddept
//					string ls_to_pos_addinfo
//					string ls_to_pos_jobcode
//					string ls_to_pos_jobtitle
//					ll_to_pos_exists_id = 0                //used
//					ll_to_xref_exists_id = 0
//					ll_to_xrefmods_exists_id = 0
//					ll_to_emp_exists_id = 0
//					ll_to_xrefmods_ppos2recid = 0
//					ll_to_bs_specs_others_exists_id = 0
//					ll_to_pos_xrefid = 0                   //used
//					ls_to_pos_funddept = ""                //used
//					ls_to_pos_addinfo = ""                 //used
//					ls_to_pos_jobcode = ""                 //used
//					ls_to_pos_jobtitle = ""                //used
//					//collect from table variables
//					if(ll_from_empno > 0) then
//						//
//						select id, xrefid, funddept, addinfo, jobcode, jobtitle into :ll_from_pos_exists_id, :ll_from_pos_xrefid, :ls_from_pos_funddept, :ls_from_pos_addinfo, :ls_from_pos_jobcode, :ls_from_pos_jobtitle from sns_staffing_grps_positions2 where assgnd_empno = :ll_from_empno using sqlca;
//						//
//						if(ll_from_pos_exists_id > 0) then
//							ll_from_xrefmods_ppos2recid = ll_from_pos_exists_id
//						end if
//						select id into :ll_from_xref_exists_id from sns_pos_xref where empno = :ll_from_empno using sqlca;
//						//
//						select id into :ll_from_xrefmods_exists_id from sns_pos_xref_mods where pempno = :ll_from_empno using sqlca;
//						//
//						select id into :ll_from_emp_exists_id from sns_employees where empno = :ll_from_empno using sqlca;
//						//
//						select id into :ll_from_bs_specs_others_exists_id from sns_board_specs_others where ltrim(rtrim(upper(empname))) = :ls_from_empname and empno = :ll_from_empno using sqlca;
//						//
//					end if
//					if((ll_from_pos_exists_id = 0) and (ll_from_pos_xrefid = 0) and (ll_from_bs_specs_others_exists_id = 0)) then
//						if(f_len_ext(ls_from_positionid) > 0) then
//							//
//							select id, xrefid into :ll_from_pos_exists_id, :ll_from_pos_xrefid from sns_staffing_grps_positions2 where ltrim(rtrim(upper(positionid))) = :ls_from_positionid using sqlca;
//							//
//							if(ll_from_pos_exists_id > 0) then
//								ll_from_xrefmods_ppos2recid = ll_from_pos_exists_id
//								//
//								select id into :ll_from_xrefmods_exists_id from sns_pos_xref_mods where ppos2recid = :ll_from_pos_exists_id using sqlca;
//								//
//							end if
//							if((ll_from_xref_exists_id = 0) and (ll_from_pos_xrefid > 0)) then
//								//
//								select id into :ll_from_xref_exists_id from sns_pos_xref where id = :ll_from_pos_xrefid using sqlca;
//							end if
//						end if
//						if((ll_from_grpid > 0) and (f_len_ext(ls_callnum) > 0)) then
//							//
//							select id into :ll_from_bs_specs_others_exists_id from sns_board_specs_others where grpid = :ll_from_grpid and callnum = :ls_from_callnum using sqlca;
//							//
//						end if
//					end if					
//					
//					//collect to table variables
//					if(ll_to_empno > 0) then
//						//
//						select id, xrefid, funddept, addinfo, jobcode, jobtitle into :ll_to_pos_exists_id, :ll_to_pos_xrefid, :ls_to_pos_funddept, :ls_to_pos_addinfo, :ls_to_pos_jobcode, :ls_to_pos_jobtitle from sns_staffing_grps_positions2 where assgnd_empno = :ll_to_empno using sqlca;
//						//
//						if(ll_to_pos_exists_id > 0) then
//							ll_to_xrefmods_ppos2recid = ll_to_pos_exists_id
//						end if
//						select id into :ll_to_xref_exists_id from sns_pos_xref where empno = :ll_to_empno using sqlca;
//						//
//						select id into :ll_to_xrefmods_exists_id from sns_pos_xref_mods where pempno = :ll_to_empno using sqlca;
//						//
//						select id into :ll_to_emp_exists_id from sns_employees where empno = :ll_to_empno using sqlca;
//						//
//						select id into :ll_to_bs_specs_others_exists_id from sns_board_specs_others where ltrim(rtrim(upper(empname))) = :ls_to_empname and empno = :ll_to_empno using sqlca;
//						//			
//					end if	
//					if((ll_to_pos_exists_id = 0) and (ll_to_pos_xrefid = 0) and (ll_to_bs_specs_others_exists_id = 0)) then
//						if(f_len_ext(ls_to_positionid) > 0) then
//							//
//							select id, xrefid into :ll_to_pos_exists_id, :ll_to_pos_xrefid from sns_staffing_grps_positions2 where ltrim(rtrim(upper(positionid))) = :ls_to_positionid using sqlca;
//							//
//							if(ll_to_pos_exists_id > 0) then
//								ll_to_xrefmods_ppos2recid = ll_to_pos_exists_id
//								//
//								select id into :ll_to_xrefmods_exists_id from sns_pos_xref_mods where ppos2recid = :ll_to_pos_exists_id using sqlca;
//								//
//							end if
//							if((ll_to_xref_exists_id = 0) and (ll_to_pos_xrefid > 0)) then
//								//
//								select id into :ll_to_xref_exists_id from sns_pos_xref where id = :ll_to_pos_xrefid using sqlca;
//							end if
//						end if
//						if((ll_dragdrop_grpid > 0) and (f_len_ext(ls_callnum) > 0)) then
//							//
//							select id into :ll_to_bs_specs_others_exists_id from sns_board_specs_others where grpid = :ll_dragdrop_grpid and callnum = :ls_callnum using sqlca;
//							//
//						end if
//					end if
//					li_num_dup_callnums = 0
//					//
//					select count(*) into :li_num_dup_callnums from sns_board_specs_others where callnum = :ls_callnum using sqlca;
//					//
//					if(li_num_dup_callnums > 0) then
//						MessageBox("Notification","Call number " + ls_callnum + " Is already assigned!", Exclamation!)
//						return
//					end if
//					
//					//                                     ls_from_hdrtext      ls_from_text       ll_from_grpid       ls_from_empname         ll_from_row   ls_mode      ls_to_hdrtext       ls_dwo_name         ll_to_grpid        ls_to_empname       ll_to_row        numavailpositions     dropgrouprowcount from_empno
//					//li_case_num = f_determine_case_num(ls_drag_from_header, ls_drag_from_text, ll_drag_from_grpid, ls_drag_from_empname, li_drag_from_row, ls_mode, ls_drag_drop_header, ls_drag_drop_text, ll_drag_drop_grpid, ls_drag_drop_empname, li_drag_drop_row, li_num_avail_rows, li_drop_to_rowcount, ll_from_empno)
//					li_case_num = f_determine_case_num(ls_from_hdrtext, ls_from_text, ll_from_grpid, ls_from_empname, ll_from_row, ls_mode, ls_to_hdrtext, ls_dwo_name, ll_to_grpid, ls_to_empname, ll_to_row, ll_num_avail_positions, ll_row_count, ls_icon_name, ll_from_empno)
//					sle_case_num.text = string(li_case_num)				
//					//###############
//					//### CASE# 9 ###
//					//###############
//					if(li_case_num = 9) then
//						//-------------------------------------------------------------------------
//						//MOVE DRAG_FROM_EMPNAME TO *** UNFILLED *** POSTION WITHIN SAME GROUP
//						//example GABBITAS-KONNER MOVE FROM 1J2534 TO 1J2532 (UNFILLED)
//						//ll_from_pos_exists_id	1678
//						//ll_from_pos_xrefid	366
//						//ll_from_xrefmods_ppos2recid	1678
//						//ll_from_xref_exists_id	366
//						//ll_from_xrefmods_exists_id	366
//						//ll_from_emp_exists_id	1215
//						//ll_from_bs_specs_others_exists_id	74
//						//ll_to_pos_exists_id	638
//						//ll_to_pos_xrefid	212
//						//ll_to_xrefmods_ppos2recid	638
//						//ll_to_xref_exists_id	212
//						//ll_to_xrefmods_exists_id	212
//						//ll_to_emp_exists_id	0 (unfilled postion han not empno)
//						//ll_to_bs_specs_others_exists_id	80
//						//-------------------------------------------------------------------------
//						//ll_dragdrop_grpid	8
//						//ll_from_grpid	8
//						//ll_from_empno	19633
//						//li_drag_drop_row	3
//						//li_drag_from_row	5
//						//li_drop_to_rowcount	10
//						//li_num_avail_rows	12
//						//ls_callnum	1J2532
//						//ls_from_callnum	1J2534
//						//li_super_lvl	
//						//ls_from_positionid	00512
//						//ls_to_positionid	00066
//   					//-------------------------------------------------------------------------
//						//swap records callnum in sns_staffing_grps_positions2 and sns_pos_xref and sns_pos_xref_mods between from -> to   to -> from
//						if((ll_from_pos_exists_id > 0) and (ll_to_pos_exists_id > 0)) then
//							//--- drag from updates ---
//							//
//							update sns_staffing_grps_positions2 set callnum = :ls_callnum where id = :ll_from_pos_exists_id using sqlca;
//							//
//							li_commit_status = f_commit_rollback_record(ref sqlca)
//							if((ll_from_pos_xrefid > 0) and (li_commit_status = 1)) then
//								//
//								update sns_pos_xref set spunitno = :ls_callnum where id = :ll_from_pos_xrefid using sqlca;
//								//
//								li_commit_status = f_commit_rollback_record(ref sqlca)
//								if((ll_from_xrefmods_exists_id > 0) and (li_commit_status = 1)) then
//									//
//									update sns_pos_xref_mods set pspunitno = :ls_callnum where id = :ll_from_xrefmods_exists_id using sqlca;
//									//
//									f_commit_rollback_record(ref sqlca)
//								end if
//							end if
//							//--- drag to updates ---
//							//
//							update sns_staffing_grps_positions2 set callnum = :ls_from_callnum where id = :ll_to_pos_exists_id using sqlca;
//							//
//							li_commit_status = f_commit_rollback_record(ref sqlca)
//							if((ll_to_pos_xrefid > 0) and (li_commit_status = 1)) then
//								//
//								update sns_pos_xref set spunitno = :ls_from_callnum where id = :ll_to_pos_xrefid using sqlca;
//								//
//								li_commit_status = f_commit_rollback_record(ref sqlca)
//								if((ll_to_xrefmods_exists_id > 0) and (li_commit_status = 1)) then
//									//
//									update sns_pos_xref_mods set pspunitno = :ls_from_callnum where id = :ll_to_xrefmods_exists_id using sqlca;
//									//
//									f_commit_rollback_record(ref sqlca)
//								end if
//							end if
//						end if						
//						//swap records callnums in sns_board_specs_others between from and to  from -> to   to -> from
//						if((ll_from_bs_specs_others_exists_id > 0) and (ll_to_bs_specs_others_exists_id > 0)) then
//							//
//							update sns_board_specs_others set callnum = :ls_from_callnum where id = :ll_to_bs_specs_others_exists_id using sqlca;
//							//
//							f_commit_rollback_record(ref sqlca)
//							//
//							update sns_board_specs_others set callnum = :ls_callnum where id = :ll_from_bs_specs_others_exists_id using sqlca;
//							//
//							f_commit_rollback_record(ref sqlca)							
//						end if
//					end if
//					//###############
//					//### CASE# 6 ###
//					//###############
//					if(li_case_num = 6) then
//						li_isunfilled = 1
//						//-sle_drag_from_hdrtext <> sle_drag_drop_hdrtext
//						//-sle_drag_from_object = 'SNS_BOARD_SPECS_OTHERS_EMPLOYEE'
//						//-sle_drag_from_row between 1 and 12
//						//-sle_drag_from_empno > 0
//						//-sle_drag_from_grpid > 0
//						//-mode = 'EMPTY'
//						//-sle_drag_drop_object = 'DATAWINDOW'
//						//-sle_drag_drop_grpid > 0 and <> sle_drom_from_grpid
//						//-sle_drag_drop_empname = 'INSERT'
//						//-sle_dragdrop_rowcount > 0 and <= sle_num_avail_positions
//						//INSERT INTO DRAG_TO_GROUP
//						//REMOVE FROM DRAG_FROM_GROUP
//						//
//						li_stop = 0
//						bSuccessfulMove = false
//						bSuccessfulRemove = false
//						bSuccessfulInsert = false					
//	
//						//===================================
//						//*** REMOVE FROM DRAG_FROM GROUP ***
//						//===================================
//						//bSuccessfulRemove = f_remove_from_dragfrom_group(ll_from_pos_exists_id, ll_from_bs_specs_others_exists_id, ll_from_xref_exists_id, ll_from_xrefmods_exists_id, ll_from_emp_exists_id, ref lsa_dd_errors, ref li_num_deletes, ref li_num_updates, ref sqlca)
//						
//						if((ll_from_pos_exists_id > 0) and (ll_from_bs_specs_others_exists_id > 0)) then
//	
//							li_num_deletes = 0
//							li_num_updates = 0
//							// - delete from sns_staffing_grps_positions2 where id = ll_from_pos_exists_id
//							delete from sns_staffing_grps_positions2 where id = :ll_from_pos_exists_id using sqlca;
//							//
//							if(sqlca.sqlcode <> -1) then
//								//
//								commit using sqlca;
//								//
//								li_num_deletes++
//							else
//								ls_sqlerrtext = sqlca.sqlerrtext
//								//
//								rollback using sqlca;
//								//
//								ls_sqlerrtext = "delete from sns_staffing_grps_positions2 error=" + ls_sqlerrtext
//								f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//							end if
//							// - delete from sns_pos_xref where id = ll_from_xref_exists_id
//							if(ll_from_xref_exists_id > 0) then
//								//
//								delete from sns_pos_xref where id = :ll_from_xref_exists_id using sqlca;
//								//
//								if(sqlca.sqlcode <> -1) then
//									//
//									commit using sqlca;
//									//
//									li_num_deletes++
//								else
//									ls_sqlerrtext = sqlca.sqlerrtext
//									//
//									rollback using sqlca;
//									//
//									ls_sqlerrtext = "delete from sns_pos_xref error=" + ls_sqlerrtext
//									f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//								end if
//							end if
//							// - delete from sns_pos_xref_mods where id = ll_from_xrefmods_exists_id
//							if(ll_from_xrefmods_exists_id > 0) then
//								//
//								delete from sns_pos_xref_mods where id = :ll_from_xrefmods_exists_id using sqlca;
//								//
//								if(sqlca.sqlcode <> -1) then
//									//
//									commit using sqlca;
//									//
//									li_num_deletes++
//								else
//									ls_sqlerrtext = sqlca.sqlerrtext
//									//
//									rollback using sqlca;
//									//
//									ls_sqlerrtext = "delete from sns_pos_xref_mods error=" + ls_sqlerrtext
//									f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//								end if							
//							end if
//							// - update sns_employees set positionid = "", title = "", jobcode = "", jobtitle = "", supervisor = 0, grps_resp = "", grpid = 0 where id = ll_from_emp_exists_id
//							if(ll_from_emp_exists_id > 0) then
//								//''
//								update sns_employees set positionid = '', title = '', jobcode = '', jobtitle = '', supervisor = '', grps_resp = '', grpid = 0	
//								where id = :ll_from_emp_exists_id 
//								using sqlca;
//								//
//								if(sqlca.sqlcode <> -1) then
//									//
//									commit using sqlca;
//									//
//									li_num_updates++
//								else
//									ls_sqlerrtext = sqlca.sqlerrtext
//									//
//									rollback using sqlca;
//									//
//									ls_sqlerrtext = "update sns_employees error=" + ls_sqlerrtext
//									f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//								end if								
//							end if
//							// - update sns_board_specs_others set empname = "", empno = 0, positionid = "" where id = ll_from_bs_specs_others_exists_id
//							if(ll_from_bs_specs_others_exists_id > 0) then
//								//
//								update sns_board_specs_others set empname = '', empno = 0, positionid = ''
//								where id = :ll_from_bs_specs_others_exists_id
//								using sqlca;
//								//
//								if(sqlca.sqlcode <> -1) then
//									//
//									commit using sqlca;
//									//
//									li_num_updates++
//								else
//									ls_sqlerrtext = sqlca.sqlerrtext
//									//
//									rollback using sqlca;
//									//
//									ls_sqlerrtext = "update sns_board_specs_others error=" + ls_sqlerrtext
//									f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//								end if								
//							end if
//							if((li_num_deletes > 0) and (li_num_updates = 2) and (UpperBound(lsa_dd_errors) = 0)) then
//								bSuccessfulRemove = true
//							end if
//						end if
//						if(bSuccessfulRemove = true) then
//							//===================================
//							//*** INSERT INTO DRAG_TO GROUP ***
//							//===================================
//	//						li_inserted_status = 0
//	//						li_inserted_status = f_insert_into_dragto_group(ll_from_bs_specs_others_exists_id, ll_from_emp_exists_id, ls_from_empname, ll_from_empno, ls_from_positionid, &
//	//																						ll_to_grpid, ls_from_funddept, ls_from_jobtitle,ls_from_jobcode, ls_to_positionid, ref li_num_updates, &
//	//																						ref lsa_dd_errors, ref sqlca)
//	
//							// update sns_board_specs_others
//	
//							string ls_to_callnum
//							li_num_updates = 0
//							if(ll_from_bs_specs_others_exists_id > 0) then
//								//
//								select callnum into :ls_to_callnum from sns_board_specs_others where id = :ll_from_bs_specs_others_exists_id using sqlca;
//								//
//								update sns_board_specs_others set empname = :ls_from_empname, empno = :ll_from_empno, positionid = :ls_from_positionid
//								where id = :ll_from_bs_specs_others_exists_id
//								using sqlca;
//								//
//								if(sqlca.sqlcode <> -1) then
//									//
//									commit using sqlca;
//									//
//									li_num_updates++
//								else
//									ls_sqlerrtext = sqlca.sqlerrtext
//									//
//									rollback using sqlca;
//									//
//									ls_sqlerrtext = "update to sns_board_specs_others error=" + ls_sqlerrtext
//									f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//								end if								
//								li_rtn_value = 0
//								string ls_to_addinfo
//								ls_to_addinfo = f_replace_string_in_string(ls_to_callnum, "1J", " ")
//								ls_to_addinfo = f_compress_string(ls_to_addinfo, " ")
//								//  0 = successful
//								// -1 = no action taken
//								// -2 = li_assgnd_empno_count > 0
//								// -3 = li_positionid_count > 0
//								// -4 = assgnd_empno not found in pos2
//								// -5 = ll_pos2idshort invalid
//								// -6 = tr_sqlca sqlcode = -1 sns_staffing_grps_positions2
//								// -7 = tr_sqlca sqlcode = -1 sns_pos_xref
//								// -8 = tr_sqlca sqlcode = -1 sns_pos_xref_mods
//								// -9 = tr_sqlca sqlcode = -1 sns_group_ids
//								//-10 = ll_pos2idshort <0 or > 90000 
//								li_rtn_value = f_insert_pos2_support_table_records(ll_to_grpid, ls_to_callnum, ll_from_empno, ls_from_funddept, ls_to_addinfo, ".", ls_from_positionid, ls_from_jobcode, ls_from_jobtitle, 0.0, true, ref ls_error, ref sqlca)
//								if(li_rtn_value >= 1) then
//									if(ll_from_emp_exists_id > 0) then
//										// - update sns_employees set positionid = "", title = "", jobcode = "", jobtitle = "", supervisor = 0, grps_resp = "", grpid = 0 where id = ll_from_emp_exists_id
//										update sns_employees set positionid = :ls_to_positionid, title = :ls_from_jobtitle, jobcode = :ls_from_jobcode, grpid = :ll_to_grpid
//										where id = :ll_from_emp_exists_id
//										using sqlca;
//										//
//										if(sqlca.sqlcode <> -1) then
//											//
//											commit using sqlca;
//											//
//											li_num_updates++
//										else
//											ls_sqlerrtext = sqlca.sqlerrtext
//											//
//											rollback using sqlca;
//											//
//											ls_sqlerrtext = "update to sns_employees columns error=" + ls_sqlerrtext
//											f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//										end if										
//										if((ll_to_grpid > 0) and (li_num_updates >= 2)) then
//											long ll_grps_resp
//											long ll_grp_super_empno
//											ll_grps_resp = 0
//											ll_grp_super_empno = 0
//											//
//											select grp_super_empno, root_grp_super_empno into :ll_grp_super_empno, :ll_grps_resp from sns_staffing_groups where id = :ll_to_grpid using sqlca;
//											//
//											update sns_employees set grps_resp = :ll_grps_resp, supervisor = :ll_grp_super_empno where id = :ll_from_emp_exists_id using sqlca;
//											//
//											if(sqlca.sqlcode <> -1) then
//												//
//												commit using sqlca;
//												//
//												li_num_updates++
//											else
//												ls_sqlerrtext = sqlca.sqlerrtext
//												//
//												rollback using sqlca;
//												//
//												ls_sqlerrtext = "update to sns_employees grps_resp,supervisor error=" + ls_sqlerrtext
//												f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//											end if											
//										end if //ll_to_grpid > 0
//									end if//ll_from_emp_exists_id > 0
//								end if //li_rtn_value = 0
//							end if //ll_from_bs_specs_others_exists_id > 0						
//						end if //bSuccessfulRemove = true
//					end if //li_case_num = 6
//					//###############
//					//### CASE# 8 ###
//					//###############
//					if(li_case_num = 8) then
//						li_isunfilled = 0
//						//===================================
//						//*** REMOVE FROM DRAG_FROM GROUP ***
//						//===================================
//						bSuccessfulRemove = false
//						li_rtn_value = 0
//						// 1 = successful backup
//						//-1 = invalid li_case_num or ls_from_hdrtext or ls_to_hdrtext
//						//-2 = insert failed
//						//-3 = remove previous backup failed
//						li_rtn_value = f_backup_board_specs_tables(li_case_num, ls_from_hdrtext, ls_to_hdrtext, ll_from_pos_exists_id, ll_from_bs_specs_others_exists_id, ll_from_xref_exists_id, ll_from_xrefmods_exists_id, ll_from_emp_exists_id, ref sqlca)
//						if(li_rtn_value = 1) then
//							bSuccessfulRemove = f_remove_from_dragfrom_group(ll_from_pos_exists_id, ll_from_bs_specs_others_exists_id, ll_from_xref_exists_id, ll_from_xrefmods_exists_id, ll_from_emp_exists_id, ref lsa_dd_errors, ref li_num_deletes, ref li_num_updates, ref sqlca)
//							if(bSuccessfulRemove = true) then
//								string lsa_parms[]
//								f_allocate_string_array(39, ref lsa_parms)
//								lsa_parms[1] = string(ll_from_bs_specs_others_exists_id)
//								lsa_parms[2] = string(ll_from_emp_exists_id)
//								lsa_parms[3] = string(ll_from_pos_exists_id)
//								lsa_parms[4] = string(ll_from_pos_xrefid)
//								lsa_parms[5] = string(ll_from_xref_exists_id)
//								lsa_parms[6] = ls_empname
//								lsa_parms[7] = string(ll_from_empno)
//								lsa_parms[8] = ls_from_positionid
//								lsa_parms[9] = ls_from_funddept
//								lsa_parms[10] = ls_from_jobtitle
//								lsa_parms[11] = ls_from_jobcode
//								lsa_parms[12] = string(ll_from_grpid)
//								lsa_parms[13] = string(ll_from_row)
//								lsa_parms[14] = ls_from_pos_addinfo
//								lsa_parms[15] = ls_from_pos_funddept
//								lsa_parms[16] = ls_from_pos_jobcode
//								lsa_parms[17] = ls_from_pos_jobtitle
//								lsa_parms[18] = string(ll_to_grpid)
//								lsa_parms[19] = ls_to_positionid
//								lsa_parms[20] = string(ll_to_row)
//								lsa_parms[21] = string(ll_to_rowcount)
//								lsa_parms[22] = ls_to_empname
//								lsa_parms[23] = ls_callnum
//								lsa_parms[24] = ls_dragfrom_hdrtext
//								lsa_parms[25] = ls_empname
//								lsa_parms[26] = ls_hdrtext
//								lsa_parms[27] = ls_mode
//								lsa_parms[28] = ls_row
//								lsa_parms[29] = ""
//								lsa_parms[30] = ""
//								lsa_parms[31] = ""
//								lsa_parms[32] = ""
//								lsa_parms[33] = ""
//								lsa_parms[34] = ""
//								lsa_parms[35] = ""
//								lsa_parms[36] = ""
//								lsa_parms[37] = ""
//								lsa_parms[38] = ""
//								lsa_parms[39] = ""
//								//===================================
//								//*** INSERT INTO DRAG_TO GROUP ***
//								//===================================
//								li_inserted_status = 0
//								li_inserted_status = f_insert_into_dragto_group(li_case_num, lsa_parms, ref li_num_updates, ref lsa_dd_errors, ref sqlca)					
//							else
//								li_rtn_value = 0		
//								ls_errors = ""
//								li_rtn_value = f_restore_board_specs_backup_tables(li_case_num, ls_from_hdrtext, ls_to_hdrtext, ll_from_pos_exists_id, ll_from_bs_specs_others_exists_id, ll_from_xref_exists_id, ll_from_xrefmods_exists_id, ll_from_emp_exists_id, ref ls_errors, ref sqlca)
//								MessageBox("Notification","Drag-Drop inserts failed. Restore completed. Please Call administrator at x4008.");
//							end if
//						else
//							MessageBox("Notification","Failed to backup board specs (f_backup_board_specs_tables). return value= " + string(li_rtn_value) + ". Please Call administrator at x4008.")
//						end if
//					end if
//					//###############
//					//### CASE# 2 ###
//					//###############
//					if(li_case_num = 2) then
//					
//					end if
//					if(ll_to_grpid = ll_dragdrop_grpid) then
//						sle_refresh_grpids.text = string(ll_dragdrop_grpid)
//					else
//						string ls_refresh_grpids
//						ls_refresh_grpids = string(ll_dragdrop_grpid) + "," + string(ll_from_grpid)
//					end if
//					TriggerEvent(pb_refresh, Clicked!)	
//				end if
//				sle_is_dragging.text = string(bIsDragging)
//			end if
//		//end if
//	end if	
//end if
end event

event dragwithin;////==================
////### DRAGWITHIN ###
////==================
////dragwithin
//if(bIsDragging = true) then
//	sle_is_dragging.text = string(bIsDragging)
//	sle_dragwithin_row.text = ""
//	sle_dragwithin_header.text = ""
//	sle_dragwithin_text.text = ""
//	sle_dragwithin_empno.text = ""
//	string ls_hdrtext
//	long ll_empno
//	string ls_dwoname	
//	ls_dwoname = trim(upper(dwo.name))
//	
//	//=======================
//	long ll_clicked_grpid
//	ll_clicked_grpid = 1
//	//=======================
//	datawindow dw_clicked_object
//	dw_clicked_object = f_getDwobjectByGrpid(ll_clicked_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//	if(IsNull(dw_clicked_object) = false) then
//		ls_hdrtext = ""
//		ll_empno = 0	
//		string ls_empname
//		string ls_callnum
//		ls_hdrtext = trim(upper(dw_clicked_object.getitemstring(row, "grpteamid")))
//		ll_empno = 0
//		ls_empname = ""
//		sle_drag_drop_empname.text = ls_empname
//		//ls_callnum = dw_c.getitemstring(row, "sns_board_specs_others_callnum")
//		//ll_empno = dw_c.getitemnumber(row, "sns_board_specs_others_empno")
//		if(row > 0) then
//			ll_empno = dw_clicked_object.getitemnumber(row, "sns_board_specs_others_empno")
//			ls_empname = dw_clicked_object.getitemstring(row, "sns_board_specs_others_empname")	
//			sle_dragwithin_row.text = string(row)
//			sle_dragwithin_header.text = ls_hdrtext
//			sle_dragwithin_text.text = ls_dwoname
//			sle_dragwithin_empno.text = string(ll_empno)
//			if(sle_drag_from_hdrtext.text <> ls_hdrtext) then
//				//dragicon logic
//				if(pos(ls_dwoname, "sns_board_specs_others_empname") > 0) then
//					if(ll_empno > 0) then
//						this.dragicon = "UserObject5!"
//						sle_icon_filenanme.text = "UserObject5!"
//					else
//						this.dragicon = "StopSign!"
//						sle_icon_filenanme.text = "StopSign1!"
//					end if
//				elseif(pos(ls_dwoname, "DATAWINDOW") > 0) then
//					//if(ll_empno > 0) then
//						//this.dragicon = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFDROP.ICO"
//						//sle_icon_filenanme.text = "Drop!"
//					//else
//						this.dragicon = "StopSign!"
//						sle_icon_filenanme.text = "StopSign2!"			
//					//end if
//				else
//					//this.dragicon = "StopSign!"
//					//sle_icon_filenanme.text = "StopSign3!"			
//					this.dragicon = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFREPLACE.ICO"
//					sle_icon_filenanme.text = "Replace!"
//				end if
//			else
//				this.dragicon = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFGRN.ICO"
//				sle_icon_filenanme.text = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFGRN.ICO"
//			end if
//		else
//			this.dragicon = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFINSERT.ICO"
//			sle_icon_filenanme.text = "Insert!"
//			sle_dragwithin_row.text = string(row)
//			sle_dragwithin_header.text = ls_hdrtext
//			sle_dragwithin_text.text = ls_dwoname
//			sle_dragwithin_empno.text = string(ll_empno)
//		end if
//	end if
//end if
end event

event rbuttondown;////===================
////### RBUTTONDOWN ###
////===================
//string ls_dwo_name
//ls_dwo_name = dwo.name
//boolean bAutoRefresh
////=======================
//long ll_clicked_grpid
//ll_clicked_grpid = 1
////=======================
//datawindow dw_clicked_object
//dw_clicked_object = f_getDwobjectByGrpid(ll_clicked_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//if(IsNull(dw_clicked_object) = false) then
//	string ls_empname
//	string ls_callnum
//	string ls_hdrtext
//	string ls_refresh_grpids
//	if(row = 0) then
//		ls_hdrtext = dw_clicked_object.getitemstring(1, "grpteamid")	
//	else
//		ls_hdrtext = dw_clicked_object.getitemstring(row, "grpteamid")	
//	end if
//	string ls_grpid
//	long ll_grpid
//	ls_grpid = f_extract_bracketed_item(ls_hdrtext, "{","}", true)
//	ll_grpid = f_stol(ls_grpid)
//	long ll_num_avail_positions
//	ll_num_avail_positions = 0
//	if((row > 0) and (ll_grpid > 0)) then
//		ls_empname = dw_clicked_object.getitemstring(row, "sns_board_specs_others_empname")
//		ls_callnum = dw_clicked_object.getitemstring(row, "sns_board_specs_others_callnum")
//		//
//		select count(*) into :ll_num_avail_positions	from sns_board_specs_others where grpid = :ll_grpid using sqlca;
//		//
//		long ll_loop
//		string ls_loopdata
//		integer li_max_names
//		li_max_names = 0
//		for ll_loop = 1 to ll_num_avail_positions
//			ls_loopdata = dw_clicked_object.getitemstring(ll_loop, "sns_board_specs_others_empname")
//			if((pos(ls_loopdata, "UNFILLED") = 0) and (f_len_ext(ls_loopdata) > 0)) then
//				li_max_names++			
//			end if
//		next
//		//
//		integer li_drslt 
//		if(pos(ls_empname, "UNFILLED") = 0) then
//			li_drslt = MessageBox("Question","Are you sure you want to remove " + ls_empname + " from " + gs_crlf + ls_hdrtext + " with callnum " + ls_callnum + "?", QUESTION!, YESNO!, 1)
//			if(li_drslt = 1) then
//				integer li_del_rtn_value
//				li_del_rtn_value = 0
//				if(pos(ls_empname, "UNFILLED") > 0) and (ls_callnum = "TBD") then
//					//****************
//					//**** CASE 3 ****
//					//****************
//					li_del_rtn_value = f_deleteunfilledposition(ref dw_clicked_object, row, dw_unassigned, ref sqlca)
//					if(li_del_rtn_value = 1) then
//						bAutoRefresh = true
//					end if
//				elseif((pos(ls_empname, "UNFILLED") > 0) and (pos(ls_callnum, "1J") = 1)) then
//					//****************
//					//**** CASE 3 ****
//					//****************
//					li_del_rtn_value = f_deleteunfilledposition(ref dw_clicked_object, row, dw_unassigned, ref sqlca)
//					if(li_del_rtn_value = 1) then
//						bAutoRefresh = true
//					end if				
//				else
//					//****************
//					//**** CASE 4 ****
//					//****************
//					if((li_max_names > 0) and (row <= ll_num_avail_positions)) then
//						li_del_rtn_value = f_delete_filled_position(ref dw_clicked_object, row, dw_unassigned, ref sqlca)
//						if(li_del_rtn_value = 1) then
//							bAutoRefresh = true
//						end if
//					end if
//				end if	
//				if(bAutoRefresh = true) then
//					ls_refresh_grpids = "," + string(ll_clicked_grpid) + ","
//					sle_refresh_grpids.text = ls_refresh_grpids
//					TriggerEvent(pb_refresh, Clicked!)							
//				end if			
//			end if
//		else
//			//ls_empname <> "UNFILLED"
//			if(li_max_names < ll_num_avail_positions) then
//				li_drslt = MessageBox("Question","Do you want to replace the *** UNFILLED *** position with a employee?", QUESTION!, YESNO!, 1)
//				if(li_drslt = 1) then
//					//select employee to replace *** UNFILLED *** position
//					string ls_messageparm
//					ls_messageparm = string(ll_clicked_grpid)
//					OpenWithParm(w_add_user, ls_messageparm)
//					string ls_selected_username
//					ls_selected_username = Message.StringParm
//					if(f_len_ext(ls_selected_username) > 0) then
//						li_drslt = MessageBox("Notification","Do you want to add User " + ls_selected_username + " to group " + ls_hdrtext, QUESTION!, YESNO!)
//						if(li_drslt = 1) then					
//							//-------------------------------------------------------------
//							long ll_boards_specs_others_id //sns_board_specs_others
//							long ll_pos_id                 //sns_staffing_grps_positions2
//							long ll_pos_xref_id            //sns_pos_xref
//							long ll_pos_xref_mods_id       //sns_pos_xref_mods
//							long ll_emp_id                 //sns_employees
//							//-------------------------------------------------------------
//							long ll_emp_empno
//							string ls_emp_empname
//							string ls_positionid
//							string ls_sel_empno
//							long ll_pos_grpid
//							long ll_pos_xrefid
//							string ls_pos_addinfo
//							integer li_pos
//							long ll_pos2idshort
//							long ll_pos_addinfo
//							string ls_fm_jobcode
//							string ls_fm_jobtitle
//							string ls_fm_positionid
//							boolean b_skipadd
//							string ls_funddept
//							//-------------------------------------------------------------
//							ll_boards_specs_others_id = 0
//							ll_pos_id = 0
//							ll_pos_xref_id = 0
//							ll_pos_xref_mods_id = 0
//							ll_emp_id = 0
//							ll_emp_empno = 0
//							ls_emp_empname = ""
//							ls_positionid = ""
//							ls_sel_empno = ""
//							ll_pos_grpid = 0
//							ll_pos_xrefid = 0
//							ls_pos_addinfo = ""
//							li_pos = 0
//							ll_pos2idshort = 0
//							ll_pos_addinfo = 0
//							ls_fm_jobcode = ""
//							ls_fm_jobtitle = ""
//							ls_fm_positionid = ""
//							b_skipadd = false
//							ls_funddept = ""
//							//-------------------------------------------------------------
//							ls_sel_empno = f_extract_bracketed_item(ls_selected_username, "[", "]", true)
//							ls_pos_addinfo = ls_callnum
//							li_pos = pos(ls_callnum, "1J")
//							if(li_pos > 0) then
//								ls_pos_addinfo = trim(mid(ls_callnum, (li_pos + 2)))
//							else
//								ls_pos_addinfo = ""
//							end if
//							ll_emp_empno = f_stol(ls_sel_empno)
//							if(ll_emp_empno > 0) then
//								//
//								select job_code, title into :ls_fm_jobcode, :ls_fm_jobtitle from fm.io_employee where empno = :ll_emp_empno using sqlca;
//								//
//								select id, positionid into :ll_boards_specs_others_id, :ls_positionid from sns_board_specs_others where grpid = :ll_clicked_grpid and callnum = :ls_callnum using sqlca;
//								//
//								select id, empname into :ll_emp_id, :ls_emp_empname from sns_employees where empno = :ll_emp_empno using sqlca;
//								//
//								if((f_len_ext(ls_funddept) = 0) or (IsNull(ls_funddept) = true)) then
//									//
//									select to_char(fund) || '-' || to_char(dept) into :ls_funddept from fm.io_employee where empno = :ll_emp_empno using sqlca;
//									//
//								end if
//								if((f_len_ext(ls_positionid) = 0) or (IsNull(ls_positionid) = true)) then
//									//
//									select positionid into :ls_positionid from sns_staffing_grps_positions2 where assgnd_empno = :ll_emp_empno using sqlca;
//									//
//									if((f_len_ext(ls_positionid) = 0) or (IsNull(ls_positionid) = true)) then
//										//
//										select position_id into :ls_positionid from fm.io_employee where empno = :ll_emp_empno using sqlca;
//										//
//									end if
//								end if
//								ls_positionid = trim(upper(ls_positionid))
//								if(f_len_ext(ls_positionid) > 0) then
//									li_pos = pos(ls_positionid, "-")
//									if(li_pos > 0) then
//										ll_pos2idshort = f_stol(mid(ls_positionid, (li_pos + 1)))								
//									end if
//								else
//									b_skipadd = true
//									bAutoRefresh = false
//									MessageBox("Notification","Unable to add " + ls_emp_empname + " to group " + ls_hdrtext + ". Unable to determine POSITION ID#!")
//								end if
//								if(b_skipadd = false) then
//									if(f_len_ext(ls_positionid) > 0) then
//										//
//										select id, grpid, xrefid into :ll_pos_id, :ll_pos_grpid, :ll_pos_xrefid from sns_staffing_grps_positions2 where ltrim(rtrim(upper(positionid))) = :ls_positionid using sqlca;
//										//
//										select id into :ll_pos_xref_id from sns_pos_xref where pos2idshort = :ll_pos2idshort using sqlca;
//										//
//										select id into :ll_pos_xref_mods_id from sns_pos_xref_mods where ppos2idshort = :ll_pos2idshort using sqlca;
//										//
//									end if
//									//-------------------------------------------------------------
//									// sns_staffing_grps_positions2
//									//  -update grpid, callnum, addinfo, jobcode, jobtitle, assgnd_empno
//									// sns_pos_xref
//									//  -change grpid to the move to group grpid
//									//  -change spunitno to new callnum
//									// sns_pos_xref_mods
//									//  -change pgrpid to the move to group grpid
//									//  -change pspunitno to new callnum
//									// sns_employees
//									//  -update the grpid to move to group grpid
//									// sns_board_specs_others
//									//  -update empname
//									//  -       empno
//									//  -       positionid
//									//  - where callnum = selected callnum											
//									//-------------------------------------------------------------
//									integer li_num_update_errors
//									integer li_rtn_value
//									string ls_error
//									li_rtn_value = 0
//									li_num_update_errors = 0
//									if(ll_pos_id > 0) then
//										//sns_staffing_grps_positions2
//										//
//										update sns_staffing_grps_positions2 
//										set grpid = :ll_clicked_grpid, callnum = :ls_callnum, assgnd_empno = :ll_emp_empno, addinfo = :ls_pos_addinfo, jobcode = :ls_fm_jobcode, jobtitle = :ls_fm_jobtitle
//										where id = :ll_pos_id
//										using sqlca;
//										//
//										if(sqlca.sqlcode = -1) then
//											li_num_update_errors++
//										else
//											li_rtn_value = 1
//										end if
//										//sns_pos_xref
//										if(ll_pos_xref_id > 0) then
//											//
//											update sns_pos_xref
//											set pos2recid = :ll_pos_id, empno = :ll_emp_empno, pos2idshort = :ll_pos2idshort, spunitno = :ls_callnum, grpid = :ll_clicked_grpid, status = 'A', empname = :ls_emp_empname
//											where id = :ll_pos_xref_id
//											using sqlca;
//											//
//											if(sqlca.sqlcode = -1) then
//												li_num_update_errors++
//											end if
//											//
//											if(ll_pos_xref_mods_id > 0) then
//												//
//												update sns_pos_xref_mods
//												set ppos2recid = :ll_pos_id, pempno = :ll_emp_empno, ppos2idshort = :ll_pos2idshort, pspunitno = :ls_callnum, pgrpid = :ll_clicked_grpid
//												where id = :ll_pos_xref_mods_id
//												using sqlca;
//												//
//												if(sqlca.sqlcode = -1) then
//													li_num_update_errors++
//												end if
//											end if
//										end if
//									else
//										//insert into sns_staffing_grps_positions2, sns_pos_xref and sns_pos_xref_mods
//										li_rtn_value = f_insert_pos2_support_table_records(ll_clicked_grpid, ls_callnum, ll_emp_empno, ls_funddept, ls_pos_addinfo, &
//																	".", ls_positionid, ls_fm_jobcode, ls_fm_jobtitle, 0.0, true, &
//																	ref ls_error, ref sqlca)
//									end if
//									if((ll_emp_id > 0) and (li_rtn_value = 1)) then
//										long ll_super_empno
//										string ls_grps_resp
//										string ls_supervisor
//										long ll_grps_resp
//										//
//										select empno, empname into :ll_super_empno, :ls_supervisor from sns_board_specs_others where grpid = :ll_clicked_grpid and issuper = 1 using sqlca;
//										//
//										select root_grp_super_empno into :ll_grps_resp from sns_staffing_groups where id = :ll_clicked_grpid using sqlca;
//										//
//										ls_grps_resp = string(ll_grps_resp)
//										//
//										update sns_employees
//										set title = :ls_fm_jobtitle, jobcode = :ls_fm_jobcode, positionid = :ls_positionid, super_empno = :ll_super_empno, supervisor = :ls_supervisor, grps_resp =:ls_grps_resp, grpid = :ll_clicked_grpid
//										where empno = :ll_emp_empno
//										using sqlca;
//										//
//										if(sqlca.sqlcode = -1) then
//											li_num_update_errors++
//										end if									
//									end if
//									if(ll_boards_specs_others_id > 0) then
//										//
//										update sns_board_specs_others
//										set empname = :ls_emp_empname, empno = :ll_emp_empno, isunfilled = 0
//										where id = :ll_boards_specs_others_id
//										using sqlca;
//										//
//										if(sqlca.sqlcode = -1) then
//											li_num_update_errors++
//										end if	
//									end if
//									if(li_num_update_errors = 0) then
//										//
//										commit using sqlca;
//										//
//										bAutoRefresh = true
//										MessageBox("Notification","Successfully added " + ls_emp_empname + " to group " + ls_hdrtext)
//									else
//										//
//										rollback using sqlca;
//										//
//										MessageBox("Notification","Failed to add " + ls_emp_empname + " to group " + ls_hdrtext + " One or more errors occured [" + string(li_num_update_errors) + "].")
//										bAutoRefresh = false
//									end if
//								end if
//								if(bAutoRefresh = true) then
//									ls_refresh_grpids = "," + string(ll_clicked_grpid) + ","
//									sle_refresh_grpids.text = ls_refresh_grpids
//									TriggerEvent(pb_refresh, Clicked!)							
//								end if
//							end if //ll_emp_empno > 0
//						end if //li_rtn_result = 1
//					end if //f_len_ext(ls_selected_username) > 0)					
//				end if //li_drslt = 1
//			end if //li_max_names < ll_num_avail_positions
//		end if
//	end if
//end if
//
end event

event retrieverow;////===================
////### RETRIEVEROW ###
////===================
//string ls_empname
//long ll_assgnd_empno
//string ls_callnum
////=======================
//long ll_clicked_grpid
//ll_clicked_grpid = 1
////=======================
//datawindow dw_clicked_object
//dw_clicked_object = f_getDwobjectByGrpid(ll_clicked_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//if(IsNull(dw_clicked_object) = false) then
//	ll_assgnd_empno = dw_clicked_object.getitemnumber(row, 'sns_board_specs_others_empno')
//	ls_callnum = dw_clicked_object.getitemstring(row, 'sns_board_specs_others_callnum')
//	ls_empname = dw_clicked_object.getitemstring(row, 'sns_board_specs_others_empname')
//	if(IsNull(ls_callnum) = true) then
//		ls_callnum = ""
//	end if
//	if((ll_assgnd_empno = 0) and (f_len_ext(ls_empname) = 0) and (f_len_ext(ls_callnum) > 0)) then
//		dw_clicked_object.setitem(row, 'sns_board_specs_others_empname', '*** UNFILLED ***')
//	end if
//end if
//

///=======================
long ll_clicked_grpid
string ls_subgrpid
ll_clicked_grpid = 59
ls_subgrpid = "A0"
//=======================
datawindow dw_clicked_object
integer li_valid_object
datawindow dw_null
SetNull(dw_null)
dw_clicked_object = f_getDwDispJudObjectByGrpid_mod(ll_clicked_grpid, ls_subgrpid, dw_jud_chief, dw_jud_supr1, dw_null, dw_jud_group1, dw_jud_group2, dw_null, dw_null, dw_null, dw_null, dw_jud_admin, ref li_valid_object)
//dwobject    ll_grpid  ls_subgrpid
//dw_jud_group1 135         'G1'
//dw_jud_group2 136         'G2'
//dw_jud_admin  59          'A0'
//dw_jud_group3 137         'G3'
//dw_jud_group4 138         'G4'
//dw_jud_group5 139         'G5'
//dw_jud_group6 140         'G6'
//dw_jud_chief  118         'C0'
//dw_jud_supr1  135         'S1' 
//dw_jud_supr2  137         'S2'
integer li_dispbd
if(li_valid_object = 1) then
	if((ll_clicked_grpid = 135) or (ll_clicked_grpid = 136) or (ll_clicked_grpid = 59)) then
		string ls_grpteam
		ls_grpteam = dw_clicked_object.getitemstring(row, 'sns_staffing_groups_grpteam')
		dw_clicked_object.MODIFY("sns_staffing_groups_grpteam.Background.Color = 8454016") //15245824") 
		dw_clicked_object.MODIFY("sns_staffing_groups_grpteam.Color = 1447192") //16777215") 
	end if
	if(gb_show_all_birthdays = true) then
		li_dispbd = dw_clicked_object.getitemnumber(row, "sns_employees_dispbd")
		if(li_dispbd = 0) then
			integer li_oktoshowbd
			li_oktoshowbd = 0
			li_oktoshowbd = dw_clicked_object.getitemnumber(row, "sns_employees_oktoshowbd")
			if(li_oktoshowbd = 1) then
				dw_clicked_object.setitem(row, "sns_employees_dispbd", 4)
			end if	
		end if
	end if
end if

end event

type dw_jud_group2 from datawindow within w_judicial_services
integer x = 1541
integer y = 960
integer width = 1454
integer height = 2952
integer taborder = 50
string dragicon = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFGRN.ICO"
string title = "none"
string dataobject = "dw_jud_groups"
boolean livescroll = true
borderstyle borderstyle = styleshadowbox!
end type

event clicked;//if(bIsDragging = false) then
//	string ls_dwo_name
//	string ls_hdrtext
//	long ll_grpid 
//	string ls_grpid	
//	long ll_empno
//	string ls_callnum
//	string ls_empname			
//	integer li_grow
//	integer li_gcol
//	string ls_parms
//	string ls_rtn_parms
//	long ll_row_count
//	integer li_num_rows
//	boolean bAutoRefresh
//	bAutoRefresh = false
//	boolean bOkToUpdate
//	bOkToUpdate = true	
//	string ls_refresh_grpids
//	//=======================
//	long ll_clicked_grpid
//	ll_clicked_grpid = 1
//	//=======================
//	datawindow dw_clicked_object
//	dw_clicked_object = f_getDwobjectByGrpid(ll_clicked_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//	if(IsNull(dw_clicked_object) = false) then
//		sle_drag_from_hdrtext.text = ""
//		sle_drag_from_object.text = ""
//		sle_drag_from_row.text = ""
//		sle_drag_from_grpid.text = ""
//		sle_drag_from_empno.text = ""
//		sle_drag_from_callnum.text = ""
//		sle_drag_from_empname.text = ""
//		if(row = 0) then
//			ls_hdrtext = dw_clicked_object.getitemstring(1, "grpteamid")
//		else
//			ls_hdrtext = dw_clicked_object.getitemstring(row, "grpteamid")
//		end if
//		string ls_hdrtext_short
//		integer li_hpos
//		li_hpos = pos(ls_hdrtext, "{")
//		if(li_hpos > 0) then
//			ls_hdrtext_short = trim(upper(mid(ls_hdrtext, 1, (li_hpos - 1))))
//		end if
//		ls_grpid = f_extract_bracketed_item(ls_hdrtext, "{","}", true)
//		ll_grpid = f_stol(ls_grpid)		
//		ls_dwo_name = trim(upper(dwo.name)) //B_INSERT_POSITION
//		sle_drag_from_row.text = string(row)
//		ll_row_count = dw_clicked_object.rowcount()	
//		li_grow = f_deterGrpidRowCol(ll_grpid, ll_row_count, ref li_gcol)
//		//
//		select numrows into :li_num_rows from sns_bd_others_layout_specs where grpid = :ll_grpid using sqlca;
//		//
//		ls_hdrtext_short = "/" + ls_hdrtext_short + "/"
//		if((row > 0) and (ls_dwo_name = "SNS_BOARD_SPECS_OTHERS_EMPNAME") and (pos(gs_not_allowed_to_dragdrop_hdrtexts, ls_hdrtext_short) = 0)) then
//			ll_empno = dw_clicked_object.getitemnumber(row, "sns_board_specs_others_empno")
//			if(ll_empno > 0) then
//				bIsDragging = true
//				sle_drag_from_object.text = upper(dwo.name)
//				sle_drag_from_hdrtext.text = ls_hdrtext
//				sle_drag_from_grpid.text = string(ll_grpid)
//				sle_drag_from_empno.text = string(ll_empno)
//				ls_callnum = dw_clicked_object.getitemstring(row, "sns_board_specs_others_callnum")
//				sle_drag_from_callnum.text = ls_callnum
//				ls_empname = dw_clicked_object.getitemstring(row, "sns_board_specs_others_empname")
//				sle_drag_from_empname.text = ls_empname
//				dw_clicked_object.Drag(Begin!)
//				dw_clicked_object.dragicon = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFGRN.ICO"
//				sle_icon_filenanme.text = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFGRN.ICO"
//			else
//				bAutoRefresh = false
//				ls_callnum = dw_clicked_object.getitemstring(row, "sns_board_specs_others_callnum")
//				sle_drag_from_callnum.text = ls_callnum
//				ls_empname = dw_clicked_object.getitemstring(row, "sns_board_specs_others_empname")
//				sle_drag_from_empname.text = ls_empname				
//				if(pos(ls_empname, "UNFILLED") > 0) then
//					integer li_drslt
//					integer li_max_names
//					long ll_num_avail_positions
//					li_drslt = MessageBox("Question","Are you sure you want to remove " + ls_empname + " from " + gs_crlf + ls_hdrtext + " with callnum " + ls_callnum + "?", QUESTION!, YESNO!, 1)
//					if(li_drslt = 1) then
//						integer li_del_rtn_value
//						li_del_rtn_value = 0
//						if(pos(ls_empname, "UNFILLED") > 0) and (ls_callnum = "TBD") then
//							//****************
//							//**** CASE 3 ****
//							//****************
//							li_del_rtn_value = f_deleteunfilledposition(ref dw_clicked_object, row, dw_unassigned, ref sqlca)
//							if(li_del_rtn_value = 1) then
//								bAutoRefresh = true
//							end if
//						elseif((pos(ls_empname, "UNFILLED") > 0) and (pos(ls_callnum, "1J") = 1)) then
//							//****************
//							//**** CASE 3 ****
//							//****************
//							li_del_rtn_value = f_deleteunfilledposition(ref dw_clicked_object, row, dw_unassigned, ref sqlca)
//							if(li_del_rtn_value = 1) then
//								bAutoRefresh = true
//							end if				
//						end if
//					end if
//				end if
//			end if //ll_empno > 0
//		elseif((row > 0) and (ls_dwo_name = "SNS_BOARD_SPECS_OTHERS_CALLNUM")) then
//			string ls_curr_calllnum
//			ls_curr_calllnum = dw_clicked_object.getitemstring(row, "sns_board_specs_others_callnum")
//			ls_empname = dw_clicked_object.getitemstring(row, "sns_board_specs_others_empname")
//			ll_empno = dw_clicked_object.getitemnumber(row, "sns_board_specs_others_empno")	
//			integer li_curr_orderby
//			li_curr_orderby = dw_clicked_object.getitemnumber(row, "sns_board_specs_others_orderby")
//			if(IsNull(li_curr_orderby) = true) then
//				li_curr_orderby = 0
//			end if
//			long ll_record_id
//			ll_record_id = dw_clicked_object.getitemnumber(row, "sns_board_specs_others_id")	
//			if((ll_empno > 0) and (ll_record_id > 0)) then
//				ls_parms = ls_curr_calllnum + "|" + string(ll_empno) + "|" + ls_empname + "|" + string(li_curr_orderby) + "|" + string(ll_record_id)
//				OpenWithParm(w_change_callnum, ls_parms)
//				ls_rtn_parms = Message.StringParm
//				if(pos(ls_rtn_parms, "ERROR") > 0) then
//					MessageBox("Notifcation","Call Number/Order by not changed. one or more errors occured! Call Administator with error. x4008")
//					bOkToUpdate = false
//				elseif(pos(ls_rtn_parms, "CANCEL") > 0) then
//					bOkToUpdate = false
//				end if
//				if(bOkToUpdate = true) then
//					dw_clicked_object.Retrieve(ll_clicked_grpid)
//					bAutoRefresh = true
//				end if
//			end if
//		else //row = 0
//			if(li_grow < li_num_rows) then
//				if(li_grow > ll_row_count) then 
//					if(ls_dwo_name = "B_INSERT_POSITION") then
//						gb_inserted_unfilled = false
//						//ll_grpid||li_grow||li_gcol||ls_hdrtext||ll_row_count
//						ls_parms = string(ll_grpid) + "|" + string(li_grow) + "|" + string(li_gcol) + "|" + ls_hdrtext + "|" + string(ll_row_count)
//						OpenWithParm(w_insert_position, ls_parms)
//						ls_rtn_parms = Message.StringParm
//						dw_clicked_object.Retrieve(ll_grpid)
//						gb_inserted_unfilled = true						
//						bAutoRefresh = true
//					end if					
//				else
//					if(ll_grpid > 0) then
//						string ls_funddept
//						string ls_groupname
//						//
//						select grpteam, funddept into :ls_groupname, :ls_funddept from sns_staffing_groups where id = :ll_grpid using sqlca;
//						//
//						string ls_row
//						string ls_col
//						ls_row = string(li_grow)
//						ls_col = string(li_gcol)
//						if(f_len_ext(ls_row) < 2) then
//							ls_row = f_lpad(ls_row, 2, "0")
//						end if
//						if(f_len_ext(ls_col) < 2) then
//							ls_col = f_lpad(ls_col, 2, "0")
//						end if
//						//insert unfilled position
//						//f_insert_unfilled_bd_specs(ls_groupname, ls_row, ls_col, ll_grpid, ls_empname, ll_empno, ls_callnum, 0, 1, 1)
//					else
//						MessageBox("Notification", "Cannot insert row. Max number postions already used.")
//					end if
//				end if
//			else
//				MessageBox("Notification", "Cannot insert row. Max number postions already used.")
//			end if
//		end if //row > 0
//		if(bAutoRefresh = true) then
//			ls_refresh_grpids = "," + string(ll_clicked_grpid) + ","
//			sle_refresh_grpids.text = ls_refresh_grpids
//			TriggerEvent(pb_refresh, Clicked!)							
//		end if
//	end if //IsNull dw_clicked_object check
//	
//end if //bIsDragging = true
//
end event

event doubleclicked;//string ls_dwo_name
//ls_dwo_name = dwo.name
//integer li_stop
////======================= 
//long ll_clicked_grpid
//ll_clicked_grpid = 1
////=======================
//boolean bAutoRefresh
//bAutoRefresh = true
//datawindow dw_clicked_object
//dw_clicked_object = f_getDwobjectByGrpid(ll_clicked_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//if(IsNull(dw_clicked_object) = false) then
//if(ls_dwo_name = "sns_board_specs_others_issuper") then  //old = sns_employees_super_lvl
//		integer li_super_lvl 
//		long ll_empno
//		ll_empno = dw_clicked_object.getitemnumber(row, 'sns_board_specs_others_empno') //old = sns_staffing_grps_positions2_assgnd_empno
//		li_super_lvl = dw_clicked_object.getitemnumber(row, 'sns_board_specs_others_issuper')
//		if(li_super_lvl = 1) then
//			dw_clicked_object.setitem(row, 'sns_board_specs_others_issuper', 0)
//			f_set_employees_super_lvl(0, ll_empno, ref sqlca)
//		else
//			dw_clicked_object.setitem(row, 'sns_board_specs_others_issuper', 1)
//			f_set_employees_super_lvl(1, ll_empno, ref sqlca)		
//		end if
//	else
//		if(ls_dwo_name = "datawindow") then
//			//=======================================================
//			//fm.io_employee
//			long ll_fm_empno
//			string ls_fm_empname
//			integer li_fm_fund
//			long ll_fm_dept
//			string ls_fm_email
//			string ls_fm_title
//			long ll_fm_super_empno
//			integer li_fm_fte_status
//			long ll_fm_jobcode
//			string ls_fm_positionid
//			ll_fm_empno = 0
//			ls_fm_empname = ""
//			li_fm_fund = 0
//			ll_fm_dept = 0
//			ls_fm_email = ""
//			ls_fm_title = ""
//			ll_fm_super_empno = 0
//			li_fm_fte_status = 0
//			ll_fm_jobcode = 0
//			ls_fm_positionid = ""
//			//sns_employees
//			long ll_emp_id
//			long ll_emp_empno
//			string ls_emp_empname
//			long ll_emp_grpid
//			integer li_emp_fund
//			long ll_emp_dept
//			string ls_emp_email
//			string ls_emp_title
//			long ll_emp_super_empno
//			decimal dec_emp_fte
//			string ls_emp_jobcode
//			string ls_emp_positionid
//			string ls_emp_depttitle
//			string ls_emp_jobtitle
//			string ls_emp_supervisor
//			string ls_emp_grps_resp     //KILLIAN-NANCY [13517]
//			ll_emp_id = 0
//			ll_emp_empno = 0
//			ls_emp_empname = ""
//			ll_emp_grpid  = 0
//			li_emp_fund = 0
//			ll_emp_dept = 0
//			ls_emp_email = ""
//			ls_emp_title = ""
//			ll_emp_super_empno = 0
//			dec_emp_fte = 0.0
//			ls_emp_jobcode = ""
//			ls_emp_positionid = ""
//			ls_emp_depttitle = ""
//			ls_emp_jobtitle = ""
//			ls_emp_supervisor = ""
//			ls_emp_grps_resp = ""
//			//sns_staffing_grps_positions2
//			long ll_pos_id
//			long ll_pos_assgnd_empno
//			long ll_pos_grpid
//			string ls_pos_callnum
//			string ls_pos_funddept
//			string ls_pos_addinfo
//			string ls_pos_jobtitle
//			string ls_pos_jobcode
//			string ls_pos_positionid
//			long ll_pos_xrefid		
//			ll_pos_id = 0
//			ll_pos_assgnd_empno = 0
//			ll_pos_grpid = 0
//			ls_pos_callnum = ""
//			ls_pos_funddept = ""
//			ls_pos_addinfo = ""
//			ls_pos_jobtitle = ""
//			ls_pos_jobcode = ""
//			ls_pos_positionid = ""
//			ll_pos_xrefid = 0		
//			//=======================================================
//			integer li_rtn_result		
//			//add employee
//			long ll_grpteamid_grpid
//			string ls_groupname
//			ls_groupname = dw_clicked_object.getitemstring(1, "grpteamid")
//			string ls_grpid
//			ls_grpid = f_extract_bracketed_item(ls_groupname, "{", "}", true)
//			ll_grpteamid_grpid = f_stol(ls_grpid)
//			long ll_to_grpid
//			ll_to_grpid = ll_clicked_grpid
//			if(ll_to_grpid > 0) then
//				string ls_messageparm
//				ls_messageparm = string(ll_clicked_grpid)
//				OpenWithParm(w_add_user, ls_messageparm)
//				string ls_selected_username
//				ls_selected_username = Message.StringParm
//				if(f_len_ext(ls_selected_username) > 0) then
//					li_rtn_result = MessageBox("Notification","Do you want to add User " + ls_selected_username + " to group " + ls_groupname, QUESTION!, YESNO!)
//					if(li_rtn_result = 1) then
//						long ll_add_user_empno
//						ll_add_user_empno = 0
//						string ls_selected_empno
//						ls_selected_empno = f_extract_bracketed_item(ls_selected_username, "[", "]", true)
//						ll_add_user_empno = f_stol(ls_selected_empno)
//						if(ll_add_user_empno > 0) then
//							string ls_selected_empname
//							int li_epos
//							li_epos = pos(ls_selected_username, "[")
//							if(li_epos > 0) then
//								ls_selected_empname = trim(mid(ls_selected_username, 1, (li_epos - 1)))
//							end if
//							//===================================
//							//*** INSERT INTO DRAG_TO GROUP ***
//							//===================================
//							string ls_to_callnum
//							integer li_num_updates
//							string ls_from_empname
//							long ll_from_bs_specs_others_exists_id
//							long ll_from_emp_exists_id
//							long ll_from_empno
//							string ls_from_positionid
//							string ls_sqlerrtext
//							string lsa_dd_errors[]
//							integer li_rtn_value
//							string ls_from_funddept
//							string ls_from_jobcode
//							string ls_from_jobtitle
//							string ls_error
//							string ls_to_positionid
//							integer li_commit_rtn_value
//							string ls_sql_error
//							long ll_xrefmods_ppos2recid
//							long ll_xref_exists_id
//							long ll_xrefmods_exists_id
//							long ll_emp_exists_id	
//							boolean bInsertNewUser
//							bInsertNewUser = false
//							string lsa_avail_callnums[]
//							integer li_num_avail_callnums
//							string ls_csql
//							//old code... ls_csql = "select callnum from sns_board_specs_others where grpid = " + string(ll_to_grpid) + " and empname is null and callnum is not null order by nrow, ncol"
//							ls_csql = "select callnum from sns_board_specs_others where grpid = " + string(ll_to_grpid) + " and instr(empname,'UNFILLED') > 0 and callnum is not null order by callnum"
//							li_num_avail_callnums = f_app_ds_populate_string_array_by_sql(ref lsa_avail_callnums, ls_csql, gi_pad_len, gs_delim, gb_compress, ref sqlca)
//							if(li_num_avail_callnums = 1) then
//								li_rtn_result = MessageBox("Notification","Only one available callnum position available [" + lsa_avail_callnums[1] + "]. Assign new user to that callnum?", QUESTION!, YESNO!)
//								if(li_rtn_result = 1) then
//									ls_to_callnum = lsa_avail_callnums[1]
//									bInsertNewUser = true
//								end if
//							elseif(li_num_avail_callnums > 1) then
//								integer li_cloop
//								string ls_callnums
//								for li_cloop = 1 to li_num_avail_callnums
//									ls_callnums += lsa_avail_callnums[li_cloop]
//									ls_callnums += ","
//								next
//								ls_callnums = f_trim_trailing_char(ls_callnums, ",")
//								string ls_selected_callnum
//								ls_selected_callnum = ""
//								ls_messageparm = ls_callnums
//								OpenWithParm(w_callnum_select, ls_messageparm)
//								ls_selected_callnum = Message.StringParm
//								if(f_len_ext(ls_selected_callnum) > 0) then
//									ls_to_callnum = ls_selected_callnum
//									bInsertNewUser = true							
//								end if
//							else
//								li_rtn_result = MessageBox("Notification","There are no available unfilled positions with call numbers. Add new user anyway?", QUESTION!, YESNO!)
//								if(li_rtn_result = 1) then
//									ls_to_callnum = "NEW"
//									bInsertNewUser = true
//								end if
//							end if
//							if(bInsertNewUser = true) then
//								string ls_selected_username_empno
//								ls_selected_username_empno = f_extract_bracketed_item(ls_selected_username, "[", "]", true)
//								ll_fm_empno = f_stol(ls_selected_username_empno)
//								if(ll_fm_empno > 0) then
//									//fm.io_employee
//									select empname, fund, dept, email, title, super_empno, fte_status, job_code, position_id into :ls_fm_empname,:li_fm_fund,:ll_fm_dept,:ls_fm_email,
//									:ls_fm_title, :ll_fm_super_empno, :li_fm_fte_status, :ll_fm_jobcode, :ls_fm_positionid
//									from fm.io_employee where empno = :ll_fm_empno
//									using sqlca;
//									//								
//									//sns_employees
//									select id, empno, empname, grpid, fund, dept, email, title, super_empno, fte, jobcode, positionid, depttitle, jobtitle, supervisor, grps_resp 
//									into :ll_emp_id, :ll_emp_empno, :ls_emp_empname, :ll_emp_grpid, :li_emp_fund, :ll_emp_dept, :ls_emp_email, :ls_emp_title, :ll_emp_super_empno, 
//									:dec_emp_fte, :ls_emp_jobcode, :ls_emp_positionid, :ls_emp_depttitle, :ls_emp_jobtitle, :ls_emp_supervisor, :ls_emp_grps_resp	
//									from sns_employees where empno = :ll_fm_empno
//									using sqlca;
//									//
//									//sns_staffing_grps_positions2
//									select id, assgnd_empno, grpid, callnum, funddept, addinfo, jobtitle, jobcode, positionid, xrefid 
//									into :ll_pos_id, :ll_pos_assgnd_empno, :ll_pos_grpid, :ls_pos_callnum, :ls_pos_funddept, :ls_pos_addinfo, :ls_pos_jobtitle, :ls_pos_jobcode,
//									:ls_pos_positionid, :ll_pos_xrefid
//									from sns_staffing_grps_positions2 where assgnd_empno = :ll_fm_empno
//									using sqlca;
//									
//									//       ls_fm_empname  ll_emp_id ll_pos_id
//									//       HOLMAN, CHLOE  316       46
//									//       -------------  --------- ---------
//									//CASE#1 CANNOT BE BLANK  > 0       >0      
//									//CASE#2 CANNOT BE BLANK  > 0       =0
//									//-----------------------------------------
//									//
//									if((f_len_ext(ls_fm_empname) > 0) and (ll_emp_id > 0) and (ll_pos_id > 0)) then
//										ls_pos_funddept = string(li_fm_fund) + "-" + string(ll_fm_dept)
//										//CASE#1
//										// 
//										integer li_num_avail_callnums_found
//										string lsa_avail_unused_callnums[]
//										li_num_avail_callnums_found = f_get_avail_group_callnums(ll_clicked_grpid, ref lsa_avail_unused_callnums, ref sqlca)
//										if(li_num_avail_callnums_found > 0) then
//											string ls_callnum_to_assign
//											ls_callnum_to_assign = ""
//											if(li_num_avail_callnums_found > 1) then
//												string ls_select_from_callnums
//												ls_select_from_callnums = f_create_string_from_array(lsa_avail_unused_callnums, ",")
//												ls_messageparm = ls_select_from_callnums
//												OpenWithParm(w_callnum_select, ls_messageparm)
//												ls_callnum_to_assign = Message.StringParm
//											else
//												ls_callnum_to_assign = lsa_avail_unused_callnums[1]
//											end if
//											if(f_len_ext(ls_callnum_to_assign) > 0) then
//												
//												li_rtn_result = MessageBox("Notification","Found available callnum " + ls_callnum_to_assign + ". Assign user to this callnum?", QUESTION!, YESNO!)
//												if(li_rtn_result = 1) then
//													ls_pos_addinfo = ls_callnum_to_assign
//													//update tables
//													// SNS_STAFFING_GRPS_POSTIIONS2
//													// SNS_POS_XREF
//													// SNS_POS_XREF_MODS
//													ls_pos_addinfo = f_replace_string_in_string(ls_pos_addinfo, "1J", "")
//													ls_pos_addinfo = trim(ls_pos_addinfo)
//													integer li_pos_rtn_value
//													string ls_pos_rtn_error
//													//if ll_pos_id = 0 then CASE2 will be supported by following function
//													//                 f_insert_pos2_support_table_records(ll_grpid, ls_callnum, ll_empno, ls_funddept, ls_addinfo, ls_vehinfo, ls_positionid, ls_jobcode, ls_jobtitle, dec_basepay, b_modify_positions2_table, ref ls_error, ref sqlca)
//													li_pos_rtn_value = f_insert_pos2_support_table_records(ll_clicked_grpid, ls_callnum_to_assign, ll_fm_empno, ls_pos_funddept, ls_pos_addinfo, ".", ls_fm_positionid, string(ll_fm_jobcode), ls_fm_title, 0.0, true, ls_pos_rtn_error, ref sqlca)
//													if(li_pos_rtn_value = 1) then
//														//update SNS_EMPLOYEES
//														string ls_fm_jobcode
//														ls_fm_jobcode = string(ls_fm_jobcode)
//														string ls_cost_center_descr
//														long ll_grp_super_empno
//														long ll_root_grp_super_empno
//														//
//														select grp_super_empno, root_grp_super_empno into :ll_grp_super_empno, :ll_root_grp_super_empno from sns_staffing_groups where id = :ll_clicked_grpid using sqlca;
//														//
//														select descr into :ls_cost_center_descr from sns_ucso_cost_centers where fund = :li_fm_fund and dept = :ll_fm_dept using sqlca;
//														//
//														select empname into :ls_emp_supervisor from sns_employees where empno = :ll_grp_super_empno using sqlca;
//														//
//														select empname into :ls_emp_grps_resp from sns_employees where empno = :ll_root_grp_super_empno using sqlca;
//														//
//														ls_emp_grps_resp = trim(ls_emp_grps_resp) + "     [" + string(ll_root_grp_super_empno) + "]"
//														//			
//														update sns_employees set grpid = :ll_clicked_grpid, fund = :li_fm_fund, dept = :ll_fm_dept, title = :ls_fm_title, jobcode = :ls_fm_jobcode,
//														positionid = trim(upper(:ls_fm_positionid)), depttitle = :ls_cost_center_descr, jobtitle = :ls_fm_title, supervisor = :ls_emp_supervisor,
//														super_empno = :ll_grp_super_empno, grps_resp = :ls_emp_grps_resp
//														where id = :ll_emp_id
//														using sqlca;
//														// 
//														if(sqlca.sqlcode <> -1) then
//															//
//															commit using sqlca;
//															//
//															//update tables
//															// sns_board_specs_others
//															// sns_bd_others_layout_specs														
//															
//															
//															
//														else
//															ls_sqlerrtext = sqlca.sqlerrtext
//															//
//															rollback using sqlca;
//															//
//															ls_sqlerrtext = "update to sns_board_specs_others error=" + ls_sqlerrtext
//															f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)													
//														end if
//													
//													
//													else
//														MessageBox("Notifications","Failed to update positions support tables.")
//													end if												
//												end if
//											else
//												MessageBox("Notification","Callnum must not be blank.")
//											end if
//										else
//											MessageBox("Notifications","All defined callnums are already assigned. You must unassign employee to free up a callnum. Then try again.");
//										end if
//									
//									end if
//									
//								end if
//							
//								string ls_to_addinfo
//								int li_apos
//								li_apos = pos(ls_to_callnum, "J")
//								if(li_apos > 0) then
//									ls_to_addinfo = trim(mid(ls_to_callnum, (li_apos + 1)))
//								else
//									ls_to_addinfo = ls_to_callnum
//								end if
//								//to add user empno must not exist in sns_staffing_grps_positions2 table
//								long ll_pos_assgnd_empno_exists_id
//								//
//								select id into :ll_pos_assgnd_empno_exists_id from sns_staffing_grps_positions2 where assgnd_empno = :ll_add_user_empno using sqlca;
//								//
//								li_rtn_result = 0
//								if(ll_pos_assgnd_empno_exists_id > 0) then
//									li_rtn_result = MessageBox("Notification","Employee " + ls_selected_empname + " already Exist/Assigned in the positions table. Move Anyway?", QUESTION!, YESNO!, 1)
//								end if
//								boolean bOkToMove
//								if(li_rtn_result = 0) then
//									bOkToMove = false
//								elseif(li_rtn_result = 1) then
//									bOkToMove = true
//								end if
//								if((ll_pos_assgnd_empno_exists_id = 0) or (bOkToMove = true)) then
//								
//									li_num_updates = 0
//									long ll_to_bs_specs_others_exists_id
//									ll_to_bs_specs_others_exists_id = 0
//									//determine next avail call num to add user to
//									//
//									select id into :ll_to_bs_specs_others_exists_id from sns_board_specs_others where callnum = :ls_to_callnum and  grpid = :ll_to_grpid using sqlca;
//									//
//									if((ll_to_bs_specs_others_exists_id > 0) and (ll_to_grpid > 0)) then
//										//
//										select callnum into :ls_to_callnum from sns_board_specs_others where id = :ll_to_bs_specs_others_exists_id using sqlca;
//										//
//										if(bOkToMove = false) then
//										
//											update sns_board_specs_others set empname = :ls_selected_empname, empno = :ll_add_user_empno, positionid = ''
//											where id = :ll_to_bs_specs_others_exists_id
//											using sqlca;
//											//
//											if(sqlca.sqlcode <> -1) then
//												//
//												commit using sqlca;
//												//
//												li_num_updates++
//											else
//												ls_sqlerrtext = sqlca.sqlerrtext
//												//
//												rollback using sqlca;
//												//
//												ls_sqlerrtext = "update to sns_board_specs_others error=" + ls_sqlerrtext
//												f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//											end if								
//											li_rtn_value = 0
//											//  0 = successful
//											// -1 = no action taken
//											// -2 = li_assgnd_empno_count > 0
//											// -3 = li_positionid_count > 0
//											// -4 = assgnd_empno not found in pos2
//											// -5 = ll_pos2idshort invalid
//											// -6 = tr_sqlca sqlcode = -1 sns_staffing_grps_positions2
//											// -7 = tr_sqlca sqlcode = -1 sns_pos_xref
//											// -8 = tr_sqlca sqlcode = -1 sns_pos_xref_mods
//											// -9 = tr_sqlca sqlcode = -1 sns_group_ids
//											//-10 = ll_pos2idshort <0 or > 90000 
//											
//											//ll_to_grpid = 3
//											//ls_to_callnum = 1j132
//											//ll_add_user_empno = 17545
//											//ls_from_funddept = 
//											//ls_to_addinfo =
//											//ls_from_positionid =
//											//ls_from_jobcode =
//											//ls_from_jobtitle =
//											
//											//
//											select to_char(fund) || '-' || to_char(dept), positionid, jobcode, jobtitle into :ls_from_funddept, :ls_from_positionid, :ls_from_jobcode, :ls_from_jobtitle
//											from sns_employees where empno = :ll_add_user_empno 
//											using sqlca;
//											//
//											if((IsNull(ls_from_funddept) = true) or (IsNull(ls_from_positionid) = true) or (IsNull(ls_from_jobcode) = true) or (IsNull(ls_from_jobtitle) = true)) then
//												//retrieve fm.io_employee data
//												//
//												select to_char(fund) || '-' || to_char(dept), position_id, job_code, title into :ls_from_funddept, :ls_from_positionid, :ls_from_jobcode, :ls_from_jobtitle
//												from fm.io_employee where empno = :ll_add_user_empno 
//												using sqlca;
//												//
//												if(IsNull(ls_from_funddept) = true) then
//													ls_from_funddept = ""
//												end if
//												if(IsNull(ls_from_jobcode) = true) then
//													ls_from_jobcode = ""
//												end if
//												if(IsNull(ls_from_jobtitle) = true) then
//													ls_from_jobtitle = ""
//												end if
//											end if
//											ls_from_positionid = trim(upper(ls_from_positionid))
//											ls_from_jobtitle = trim(upper(ls_from_jobtitle))
//											
//											li_stop = 0
//	
//											if((IsNull(ls_from_funddept) = false) and (IsNull(ls_from_positionid) = false) and (IsNull(ls_from_jobcode) = false) and (IsNull(ls_from_jobtitle) = false)) then
//	
//												li_rtn_value = f_insert_pos2_support_table_records(ll_to_grpid, ls_to_callnum, ll_add_user_empno, ls_from_funddept, ls_to_addinfo, &
//																													".", ls_from_positionid, ls_from_jobcode, ls_from_jobtitle, 0.0, true, &
//																													ref ls_error, ref sqlca)
//												if(li_rtn_value >= 1) then
//													if(ll_from_emp_exists_id > 0) then
//														//update sns_board_specs_others positionid
//														//
//														select positionid into :ls_to_positionid from sns_staffing_grps_positions2 where assgnd_empno = :ll_add_user_empno using sqlca;
//														//
//														update sns_board_specs_others set positionid = :ls_to_positionid where id = :ll_to_bs_specs_others_exists_id using sqlca;
//														//
//													
//														// - update sns_employees set positionid = "", title = "", jobcode = "", jobtitle = "", supervisor = 0, grps_resp = "", grpid = 0 where id = ll_from_emp_exists_id
//														update sns_employees set positionid = :ls_to_positionid, title = :ls_from_jobtitle, jobcode = :ls_from_jobcode, grpid = :ll_to_grpid
//														where id = :ll_add_user_empno
//														using sqlca;
//														//
//														if(sqlca.sqlcode <> -1) then
//															//
//															commit using sqlca;
//															//
//															li_num_updates++
//														else
//															ls_sqlerrtext = sqlca.sqlerrtext
//															//
//															rollback using sqlca;
//															//
//															ls_sqlerrtext = "update to sns_employees columns error=" + ls_sqlerrtext
//															f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//															bAutoRefresh = false
//														end if										
//														if((ll_to_grpid > 0) and (li_num_updates >= 2)) then
//															long ll_grps_resp
//															ll_grp_super_empno = 0
//															ll_grps_resp = 0
//															ll_grp_super_empno = 0
//															//
//															select grp_super_empno, root_grp_super_empno into :ll_grp_super_empno, :ll_grps_resp from sns_staffing_groups where id = :ll_to_grpid using sqlca;
//															//
//															update sns_employees set grps_resp = :ll_grps_resp, supervisor = :ll_grp_super_empno  where id = :ll_add_user_empno using sqlca;
//															//
//															if(sqlca.sqlcode <> -1) then
//																//
//																commit using sqlca;
//																//
//																li_num_updates++
//															else
//																ls_sqlerrtext = sqlca.sqlerrtext
//																//
//																rollback using sqlca;
//																//
//																ls_sqlerrtext = "update to sns_employees grps_resp,supervisor error=" + ls_sqlerrtext
//																f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//																bAutoRefresh = false
//															end if											
//														end if //ll_to_grpid > 0
//													end if//ll_from_emp_exists_id > 0
//												end if //li_rtn_value = 0
//											else
//												string ls_msg_text
//												ls_msg_text = "One or more Null Values. Cannot add new user."
//												if(ls_to_positionid = "") or (IsNull(ls_to_positionid) = true) then
//													ls_msg_text += " Positionid is blank!"
//												end if
//												bAutoRefresh = false
//												MessageBox("Notification",ls_msg_text)
//											end if //check for IsNull for funddept, positionid, jobcode, jobtitle
//										else
//											//bOkToMove = true
//											//move employee from positions2 grpid to the ll_clicked_grpid
//											// sns_staffing_grps_positions2
//											//  -change grpid to the move to grpid
//											//  -change callnum and addinfo to new callnum
//											// sns_pos_xref
//											//  -change grpid to the move to group grpid
//											//  -change spunitno to new callnum
//											// sns_pos_xref_mods
//											//  -change pgrpid to the move to group grpid
//											//  -change pspunitno to new callnum
//											// sns_employees
//											//  -update the grpid to move to group grpid
//											// sns_board_specs_others
//											//  -update empname
//											//  -       empno
//											//  -       positionid
//											//  - where callnum = selected callnum
//											//example: move CARLE-JOSEPH from SPECIAL VICTIMS UNIT TO EM2
//											//ll_add_user_empno = 16858
//											//ll_clicked_grpid = 9
//											//ls_to_callnum = "1J2550"
//											//ll_to_bs_specs_others_exists_id = 88
//											//ls_groupname = "EAGLE MOUNTAION 2 {9}"
//											//ls_selected_callnum = "1J2550"
//											//ls_selected_empname = "CARLE-JOSEPH"
//											//ls_selected_empno = 16858
//											//ll_pos_assgnd_empno_exists_id = 116
//											string ls_new_funddept
//											integer li_fund
//											long ll_dept
//											integer li_prev_fund
//											long ll_prev_dept
//											string ls_pos
//											if(ll_pos_assgnd_empno_exists_id > 0) then
//												//
//												select positionid,jobcode,jobtitle into :ls_pos_positionid, :ls_pos_jobcode, :ls_pos_jobtitle from sns_staffing_grps_positions2 where id = :ll_pos_assgnd_empno_exists_id using sqlca;
//												//
//												select funddept into :ls_new_funddept from sns_staffing_groups where id = :ll_clicked_grpid using sqlca;
//												//
//												int li_tpos
//												li_tpos = pos(ls_new_funddept, "-")
//												if(li_tpos > 0) then
//													li_fund = f_stoi(trim(mid(ls_new_funddept, 1, (li_tpos - 1))))
//													ll_dept = f_stol(trim(mid(ls_new_funddept, (li_tpos + 1))))
//												end if
//												ll_pos_xrefid = 0
//												ll_xrefmods_ppos2recid = 0
//												//
//												select xrefid into :ll_pos_xrefid from sns_staffing_grps_positions2 where id = :ll_pos_assgnd_empno_exists_id using sqlca;
//												//
//												if(ll_pos_xrefid > 0) then
//													ll_xrefmods_ppos2recid = ll_pos_assgnd_empno_exists_id
//													if(ll_xrefmods_ppos2recid > 0) then
//														//
//														select id into :ll_xrefmods_exists_id from sns_pos_xref_mods where ppos2recid = :ll_xrefmods_ppos2recid using sqlca;
//														//
//													end if
//												end if
//												//
//												select id into :ll_emp_exists_id from sns_employees where empno = :ll_add_user_empno using sqlca;
//												//
//												update sns_staffing_grps_positions2 set grpid = :ll_clicked_grpid, callnum = :ls_to_callnum, addinfo = :ls_to_addinfo, funddept = :ls_new_funddept where id = :ll_pos_assgnd_empno_exists_id using sqlca;
//												//
//												li_commit_rtn_value = f_commit_rollback_record(ref sqlca);
//												if(li_commit_rtn_value = 1) then
//													if(ll_pos_xrefid > 0) then
//														//
//														update sns_pos_xref set grpid = :ll_clicked_grpid, spunitno = :ls_to_callnum where id = :ll_pos_xrefid using sqlca;
//														//
//														li_commit_rtn_value = f_commit_rollback_record(ref sqlca);
//														if(li_commit_rtn_value = 1) then
//															//
//															if(ll_xrefmods_exists_id > 0) then
//																//
//																update sns_pos_xref_mods set pgrpid = :ll_clicked_grpid, pspunitno = :ls_to_callnum where id = :ll_xrefmods_exists_id using sqlca;
//																//
//																li_commit_rtn_value = f_commit_rollback_record(ref sqlca);
//																if(li_commit_rtn_value = 1) then
//																	//do nothing
//																else
//																	ls_sql_error = "Failed to update position xref mods table. Contact administrator x4008."
//																end if
//															end if
//														else
//															ls_sql_error = "Failed to update position xref table. Contact administrator x4008."
//														end if
//													
//													end if
//												else	
//													ls_sql_error = "Failed to update positions table. Contact administrator x4008."
//												end if
//												if(f_len_ext(ls_sql_error) = 0) then
//													if(ll_emp_exists_id > 0) then
//														//
//														update sns_employees set prevfund = fund, prevdept = dept where id = :ll_emp_exists_id using sqlca;
//														//
//														update sns_employees set grpid = :ll_clicked_grpid, fund = :li_fund, dept = :ll_dept, jobcode = :ls_pos_jobcode, jobtitle = :ls_pos_jobtitle
//														where id = :ll_emp_exists_id 
//														using sqlca;
//														//
//														li_commit_rtn_value = f_commit_rollback_record(ref sqlca);
//														if(li_commit_rtn_value = 1) then														
//															//do nothing
//														else
//															ls_sql_error = "Failed to update employees table. 	Contact administrator x4008."												
//														end if
//													end if
//												end if
//												if(f_len_ext(ls_sql_error) = 0) then
//													//
//													update sns_board_specs_others set empname = :ls_selected_empname, empno = :ll_add_user_empno, positionid = :ls_pos_positionid
//													where id = :ll_to_bs_specs_others_exists_id
//													using sqlca;
//													//
//													li_commit_rtn_value = f_commit_rollback_record(ref sqlca);
//													if(li_commit_rtn_value = 1) then
//														//do nothing
//													else
//														ls_sql_error = "Failed to update board specs table. Contact administrator x4008."												
//													end if
//												end if
//												if(f_len_ext(ls_sql_error) = 0) then
//													MessageBox("Notification", "Successfully moved employee " + ls_selected_empname + " to " + ls_groupname)
//												else
//													MessageBox("Notification",ls_sql_error,Exclamation!)
//												end if
//											end if
//										end if
//									else
//										//insert into tables
//										MessageBox("Notification","insert into table code not yet coded!")
//										
////										integer li_func_rtn_value
////										//collect to table variables
////										if(ll_add_user_empno > 0) then
////											long ll_pos_exists_id
////											long ll_pos_xrefid
////											long ll_pos_funddept
////											string ls_pos_funddept
////											string ls_pos_addinfo
////											string ls_pos_jobcode
////											string ls_pos_jobtitle
////											long ll_xrefmods_ppos2recid
////											long ll_xref_exists_id
////											long ll_xrefmods_exists_id
////											long ll_emp_exists_id
////											long ll_bs_specs_others_exists_id
////											//
////											select id, xrefid, funddept, addinfo, jobcode, jobtitle into :ll_pos_exists_id, :ll_pos_xrefid, :ls_pos_funddept, :ls_pos_addinfo, :ls_pos_jobcode, :ls_pos_jobtitle from sns_staffing_grps_positions2 where assgnd_empno = :ll_add_user_empno using sqlca;
////											//
////											if(ll_pos_exists_id > 0) then
////												ll_xrefmods_ppos2recid = ll_pos_exists_id
////											else
////												
////											end if
////											//
////											select id into :ll_xref_exists_id from sns_pos_xref where empno = :ll_add_user_empno using sqlca;
////											//
////											select id into :ll_xrefmods_exists_id from sns_pos_xref_mods where pempno = :ll_add_user_empno using sqlca;
////											//
////											select id into :ll_emp_exists_id from sns_employees where empno = :ll_add_user_empno using sqlca;
////											//
////											select id into :ll_bs_specs_others_exists_id from sns_board_specs_others where ltrim(rtrim(upper(empname))) = :ls_selected_empname and empno = :ll_add_user_empno using sqlca;
////											//	
////											if(ll_pos_exists_id = 0) then
////												//insert into sns_staffing_grps_positions2
////												//li_func_rtn_value = f_insert_pos2_support_table_records(
////												//ll_clicked_grpid, 
////												//ls_callnum, 
////												//ll_empno, 
////												//ls_funddept, 
////												//ls_addinfo, 
////												//ls_vehinfo, 
////												//ls_positionid, 
////												//ls_jobcode, 
////												//ls_jobtitle, 
////												//dec_basepay, 
////												//b_modify_positions2_table, 
////												//ref ls_error, ref sqlca)
////											end if
////											
////											
////											
////											
////											
////											
////											
////										end if
//										li_stop = 0
//									end if //ll_from_bs_specs_others_exists_id > 0											
//								else
//									MessageBox("Notification","Cannot add Employee " + ls_selected_empname + ". They already Exist/Assigned in the positions table in a different group.")
//								end if
//							else
//								//bInsertNewUser = false code block
//								bAutoRefresh = false
//								MessageBox("Notification","One or more callnum preset code block failed!")
//							end if //bInsertNewUser = true
//							if(bAutoRefresh = true) then
//								string ls_refresh_grpids
//								ls_refresh_grpids = "," + string(ll_clicked_grpid) + ","
//								sle_refresh_grpids.text = ls_refresh_grpids
//								TriggerEvent(pb_refresh, Clicked!)							
//							end if
//						end if //ll_add_user_empno > 0
//					end if
//				end if
//			end if //ll_to_grpid > 0
//		end if
//	end if 
//end if	
//
end event

event dragdrop;//if(bIsDragging = true) then
//	integer li_stop
//	sle_drag_drop_row.text = string(row)
//	//=======================
//	long ll_dragdrop_grpid
//	ll_dragdrop_grpid = 1
//	//=======================
//	datawindow dw_to_object
//	dw_to_object = f_getDwobjectByGrpid(ll_dragdrop_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//	datawindow dw_from_object
//	long ll_from_grpid
//	ll_from_grpid = f_stol(sle_drag_from_grpid.text)
//	if(ll_from_grpid > 0) then	
//		dw_from_object = f_getDwobjectByGrpid(ll_from_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//	end if
//	datawindow dw_unassigned_object
//	dw_unassigned_object = f_getDwobjectByGrpid(131, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//	if((IsValid(dw_from_object) = true) and (IsValid(dw_to_object) = true)) then
//		string ls_errors
//		string ls_drag_from_positionid
//		string ls_dwo_name
//		long ll_to_grpid
//		string ls_grpid		
//		string ls_empname
//		long ll_empno
//		string ls_callnum
//		long ll_row_count
//		long ll_num_avail_positions
//		integer li_to_grow
//		integer li_to_gcol	
//		string ls_from_hdrtext
//		string ls_from_empname
//		long ll_from_row
//		string ls_to_hdrtext
//		string ls_to_empname
//		long ll_to_row
//		string ls_mode
//		long ll_from_empno
//		long ll_to_empno
//		long ll_to_rowcount
//		string ls_from_text
//		long ll_from_pos_id
//		long ll_from_xrefid
//		string ls_from_positionid
//		long ll_to_pos_id
//		long ll_to_xrefid
//		string ls_to_positionid
//		string ls_jobcode
//		string ls_jobtitle
//		string ls_funddept
//		string ls_addinfo
//		string ls_vehnum
//		integer li_rtn_value
//		string ls_error
//		string ls_groupname
//		integer li_case_num
//		integer li_active
//		integer li_issuper
//		integer li_isunfilled
//		integer li_pos2idshort
//		string ls_status
//		long ll_pid
//		integer li_remins_rtn
//		string ls_row
//		string ls_col
//		string ls_icon_name
//		string ls_sqlerrtext
//		string ls_from_callnum
//		integer li_commit_status
//		integer li_num_dup_callnums
//		ls_errors = ""
//		ls_icon_name = sle_icon_filenanme.text 		
//		li_remins_rtn = 0
//		ll_pid = 0
//		//---------------------------------
//		ls_dwo_name = ""
//		ll_to_grpid = 0
//		ls_grpid = ""
//		ls_empname = ""
//		ll_empno = 0
//		ls_callnum = ""
//		ll_row_count = 0
//		ll_num_avail_positions = 0
//		li_to_grow = 0
//		li_to_gcol = 0
//		ls_row = ""
//		ls_col = ""
//		ls_from_callnum = ""
//		//---------------------------------
//		ls_from_callnum = sle_drag_from_callnum.text
//		ls_dwo_name = upper(dwo.name)
//		ls_drag_from_positionid = ""
//		ls_drag_from_positionid = sle_drag_from_positionid.text
//		string ls_hdrtext
//		if(row = 0) then
//			ls_hdrtext = dw_to_object.getitemstring(1, "grpteamid")	
//		else
//			ls_hdrtext = dw_to_object.getitemstring(row, "grpteamid")	
//		end if
//		ls_grpid = f_extract_bracketed_item(ls_hdrtext, "{","}", true)
//		ll_to_grpid = f_stol(ls_grpid)		
//		string ls_dragfrom_hdrtext
//		ls_dragfrom_hdrtext = sle_drag_from_hdrtext.text
//		sle_drag_drop_hdrtext.text = ls_hdrtext
//		sle_drag_drop_object.text = ls_dwo_name
//		sle_drag_drop_grpid.text = string(ll_to_grpid)
//		ll_row_count = dw_to_object.rowcount()			
//		sle_dragdrop_rowcount.text = string(ll_row_count)	
//		if(ll_to_grpid > 0) then
//			li_to_grow = f_deterGrpidRowCol(ll_to_grpid, ll_row_count, ref li_to_gcol)
//			//
//			select count(*) into :ll_num_avail_positions	from sns_board_specs_others where grpid = :ll_to_grpid using sqlca;
//			//
//			sle_num_avail_positions.text = string(ll_num_avail_positions)
//		end if		
//		sle_drag_drop_row.text = string(row)
//		sle_drag_drop_col.text = string(li_to_gcol)
////		if(ls_hdrtext = ls_dragfrom_hdrtext) then
////			if((ls_dragfrom_hdrtext = ls_hdrtext) and (ls_dwo_name = "DATAWINDOW") and (ll_dragdrop_grpid = ll_to_grpid) and (row = 0)) then
////				//just display info and cancel drag
////				sle_drag_drop_empname.text = "INSERT"
////				dw_to_object.Drag(Cancel!)
////				bIsDragging = false		
////				sle_is_dragging.text = string(bIsDragging)				
////			else
////				triggerevent(pb_cancel_dragdrop, Clicked!) //if same window as dragenter then cancel dragdrop
////			end if
////		else
//			ll_empno = 0
//			ll_to_grpid = 0	
//			//w_main.sle_drag_drop_hdrtext.text = ls_hdrtext
//			if(row > 0) then
//				ls_empname = dw_to_object.getitemstring(row, "sns_board_specs_others_empname")
//				sle_drag_drop_empname.text = ls_empname		
//				ls_callnum = dw_to_object.getitemstring(row, "sns_board_specs_others_callnum")
//				sle_drag_drop_callnum.text = ls_callnum				
//				ll_empno = dw_to_object.getitemnumber(row, "sns_board_specs_others_empno")
//				sle_drag_drop_empno.text = string(ll_empno)
//				if(ll_empno > 0) then
//				end if //ll_empno > 0
//			else
//				sle_drag_drop_empname.text = "INSERT"
//				sle_drag_drop_empno.text = string(ll_empno)
//			end if
//			dw_to_object.Drag(Cancel!)
//			bIsDragging = false	
//			//
//			ls_from_hdrtext = ""
//			ls_from_empname = ""
//			ll_from_row = 0
//			ls_to_hdrtext = ""
//			ls_to_empname = ""
//			ll_to_row = 0
//			ls_mode = ""
//			ll_from_empno = 0
//			ll_to_empno = 0
//			ll_to_rowcount = 0
//			ls_from_text = ""
//			//
//			ls_from_text = sle_drag_from_object.text
//			ls_from_hdrtext = sle_drag_from_hdrtext.text
//			ls_from_empname = sle_drag_from_empname.text
//			ll_from_row = f_stol(sle_drag_from_row.text)
//			ls_to_hdrtext = sle_drag_drop_hdrtext.text
//			ls_to_empname = sle_drag_drop_empname.text
//			ll_to_row = row
//			ll_from_grpid = f_stol(sle_drag_from_grpid.text)
//			ll_to_grpid = f_stol(sle_drag_drop_grpid.text)
//			ll_from_empno = f_stol(sle_drag_from_empno.text)
//			ll_to_empno = f_stol(sle_drag_drop_empno.text)
//			ll_to_rowcount = dw_to_object.rowcount()
//			//------------------- fix xrefids if needed --------------------------
//			ll_from_pos_id = 0
//			ll_from_xrefid = 0
//			ls_from_positionid = ""
//			ll_to_pos_id = 0
//			ll_to_xrefid = 0
//			ls_to_positionid = ""
//			//------------------------------
//			boolean bSkipInvalidDropCallnum
//			bSkipInvalidDropCallnum = false
//			if(ll_from_grpid = 131) then
//				if(ls_callnum <> ls_from_callnum) then
//					MessageBox("Notification","When dragging from the 'UNASSIGNED {131}' group and the call number is not blank, then it can only be dropped on a like '** UNFILLED **' call number. Try again please!", Exclamation!)
//					bSkipInvalidDropCallnum = true
//				end if
//			end if
//			//------------------------------
//			if(bSkipInvalidDropCallnum = false) then
//				//
//				select positionid into :ls_from_positionid from sns_staffing_grps_positions2 where assgnd_empno = :ll_from_empno using sqlca;
//				//
//				sle_drag_from_positionid.text = ls_from_positionid
//				//
//				select positionid into :ls_to_positionid from sns_staffing_grps_positions2 where assgnd_empno = :ll_to_empno using sqlca;
//				//
//				sle_drag_to_positionid.text = ls_to_positionid
//				if(f_len_ext(ls_from_positionid) >= 14) then
//					//
//					select id,xrefid into :ll_from_pos_id, :ll_from_xrefid from sns_staffing_grps_positions2 where ltrim(rtrim(upper(positionid))) = :ls_from_positionid using sqlca;
//					//
//				end if			
//				if(f_len_ext(ls_to_positionid) >= 14) then
//					//
//					select id,xrefid into :ll_to_pos_id, :ll_to_xrefid from sns_staffing_grps_positions2 where ltrim(rtrim(upper(positionid))) = :ls_to_positionid using sqlca;
//					//
//				end if
//				if(ll_from_xrefid = 0) then
//					ll_from_xrefid = f_fix_xrefid(ll_from_empno, ref sqlca)
//				end if
//				if(ll_to_xrefid = 0) then
//					ll_to_xrefid = f_fix_xrefid(ll_to_empno, ref sqlca)
//				end if
//				ls_jobcode = ""
//				ls_jobtitle = ""
//				ls_funddept = ""
//				ls_error = ""
//				if(ll_to_empno > 0) then
//					//
//					select job_code, title into :ls_jobcode, :ls_jobtitle from fm.io_employee using sqlca;
//					//
//				end if
//				//-------------------------------------------------------------------
//				ls_mode = f_deterDragDropMode(ll_to_row, ll_to_rowcount, ll_num_avail_positions, ll_from_grpid, ll_to_grpid, ll_from_empno, ll_to_empno, ls_from_empname, ls_to_empname, ls_from_hdrtext, ls_to_hdrtext)
//				sle_drag_drop_mode.text = ls_mode
//				if(f_len_ext(ls_mode) >= 4) then
//					ls_error = ""
//					ls_addinfo = "."
//					ls_vehnum = "."
//					ls_groupname = "PATROL"
//					li_case_num = 0				
//					li_active = 1
//					li_issuper = 0
//					li_isunfilled = 0
//					ls_col = string(li_to_gcol)
//					ls_row = string(li_to_grow)
//					long ll_fm_empno
//					string ls_fm_empname
//					string ls_fm_funddept
//					string ls_fm_title
//					long ll_fm_jobcode
//					string ls_fm_jobcode
//					string ls_fm_positionid
//					ll_fm_empno = 0
//					ls_fm_empname = ""
//					ls_fm_funddept = ""
//					ls_fm_title = ""
//					ll_fm_jobcode = 0
//					ls_fm_positionid = ""
//					if(ll_to_empno > 0) then
//						//
//						select empno, empname, fund || '-' || dept as funddept, title, job_code, position_id into :ll_fm_empno, :ls_fm_empname, :ls_fm_funddept, :ls_fm_title, :ll_fm_jobcode, :ls_fm_positionid
//						from fm.io_employee
//						where empno = 17117			
//						using sqlca;
//						//
//						if(ll_fm_jobcode > 0) then
//							ls_fm_funddept = string(ll_fm_jobcode)
//						end if
//					end if
//					//===========================
//					boolean bSuccessfulMove
//					boolean bSuccessfulRemove
//					boolean bSuccessfulInsert
//					string lsa_dd_errors[]				
//					//===========================
//	
//					string ls_from_funddept
//					string ls_from_addinfo
//					string ls_from_jobcode
//					string ls_from_jobtitle
//					integer li_num_deletes
//					integer li_num_updates		
//					integer li_inserted_status
//					ls_from_funddept = ""
//					ls_from_addinfo = ""
//					ls_from_jobcode = ""
//					ls_from_jobtitle = ""
//	
//					//
//					long ll_from_pos_exists_id
//					long ll_from_xref_exists_id
//					long ll_from_xrefmods_exists_id
//					long ll_from_emp_exists_id
//					long ll_from_xrefmods_ppos2recid
//					long ll_from_bs_specs_others_exists_id				
//					long ll_from_pos_xrefid
//					string ls_from_pos_funddept
//					string ls_from_pos_addinfo
//					string ls_from_pos_jobcode
//					string ls_from_pos_jobtitle
//					ll_from_pos_exists_id = 0              //used
//					ll_from_xref_exists_id = 0             
//					ll_from_xrefmods_exists_id = 0 
//					ll_from_emp_exists_id = 0 
//					ll_from_xrefmods_ppos2recid = 0        //used
//					ll_from_bs_specs_others_exists_id = 0 				
//					ll_from_pos_xrefid = 0                 //used
//					
//					ll_from_pos_xrefid = 0
//					ls_from_pos_funddept = ""              //used
//					ls_from_pos_addinfo = ""               //used
//					ls_from_pos_jobcode = ""               //used
//					ls_from_pos_jobtitle = ""              //used
//					//				
//					long ll_to_pos_exists_id
//					long ll_to_xref_exists_id
//					long ll_to_xrefmods_exists_id
//					long ll_to_emp_exists_id
//					long ll_to_xrefmods_ppos2recid
//					long ll_to_bs_specs_others_exists_id		
//					long ll_to_pos_xrefid
//					string ls_to_pos_funddept
//					string ls_to_pos_addinfo
//					string ls_to_pos_jobcode
//					string ls_to_pos_jobtitle
//					ll_to_pos_exists_id = 0                //used
//					ll_to_xref_exists_id = 0
//					ll_to_xrefmods_exists_id = 0
//					ll_to_emp_exists_id = 0
//					ll_to_xrefmods_ppos2recid = 0
//					ll_to_bs_specs_others_exists_id = 0
//					ll_to_pos_xrefid = 0                   //used
//					ls_to_pos_funddept = ""                //used
//					ls_to_pos_addinfo = ""                 //used
//					ls_to_pos_jobcode = ""                 //used
//					ls_to_pos_jobtitle = ""                //used
//					//collect from table variables
//					if(ll_from_empno > 0) then
//						//
//						select id, xrefid, funddept, addinfo, jobcode, jobtitle into :ll_from_pos_exists_id, :ll_from_pos_xrefid, :ls_from_pos_funddept, :ls_from_pos_addinfo, :ls_from_pos_jobcode, :ls_from_pos_jobtitle from sns_staffing_grps_positions2 where assgnd_empno = :ll_from_empno using sqlca;
//						//
//						if(ll_from_pos_exists_id > 0) then
//							ll_from_xrefmods_ppos2recid = ll_from_pos_exists_id
//						end if
//						select id into :ll_from_xref_exists_id from sns_pos_xref where empno = :ll_from_empno using sqlca;
//						//
//						select id into :ll_from_xrefmods_exists_id from sns_pos_xref_mods where pempno = :ll_from_empno using sqlca;
//						//
//						select id into :ll_from_emp_exists_id from sns_employees where empno = :ll_from_empno using sqlca;
//						//
//						select id into :ll_from_bs_specs_others_exists_id from sns_board_specs_others where ltrim(rtrim(upper(empname))) = :ls_from_empname and empno = :ll_from_empno using sqlca;
//						//
//					end if
//					if((ll_from_pos_exists_id = 0) and (ll_from_pos_xrefid = 0) and (ll_from_bs_specs_others_exists_id = 0)) then
//						if(f_len_ext(ls_from_positionid) > 0) then
//							//
//							select id, xrefid into :ll_from_pos_exists_id, :ll_from_pos_xrefid from sns_staffing_grps_positions2 where ltrim(rtrim(upper(positionid))) = :ls_from_positionid using sqlca;
//							//
//							if(ll_from_pos_exists_id > 0) then
//								ll_from_xrefmods_ppos2recid = ll_from_pos_exists_id
//								//
//								select id into :ll_from_xrefmods_exists_id from sns_pos_xref_mods where ppos2recid = :ll_from_pos_exists_id using sqlca;
//								//
//							end if
//							if((ll_from_xref_exists_id = 0) and (ll_from_pos_xrefid > 0)) then
//								//
//								select id into :ll_from_xref_exists_id from sns_pos_xref where id = :ll_from_pos_xrefid using sqlca;
//							end if
//						end if
//						if((ll_from_grpid > 0) and (f_len_ext(ls_callnum) > 0)) then
//							//
//							select id into :ll_from_bs_specs_others_exists_id from sns_board_specs_others where grpid = :ll_from_grpid and callnum = :ls_from_callnum using sqlca;
//							//
//						end if
//					end if					
//					
//					//collect to table variables
//					if(ll_to_empno > 0) then
//						//
//						select id, xrefid, funddept, addinfo, jobcode, jobtitle into :ll_to_pos_exists_id, :ll_to_pos_xrefid, :ls_to_pos_funddept, :ls_to_pos_addinfo, :ls_to_pos_jobcode, :ls_to_pos_jobtitle from sns_staffing_grps_positions2 where assgnd_empno = :ll_to_empno using sqlca;
//						//
//						if(ll_to_pos_exists_id > 0) then
//							ll_to_xrefmods_ppos2recid = ll_to_pos_exists_id
//						end if
//						select id into :ll_to_xref_exists_id from sns_pos_xref where empno = :ll_to_empno using sqlca;
//						//
//						select id into :ll_to_xrefmods_exists_id from sns_pos_xref_mods where pempno = :ll_to_empno using sqlca;
//						//
//						select id into :ll_to_emp_exists_id from sns_employees where empno = :ll_to_empno using sqlca;
//						//
//						select id into :ll_to_bs_specs_others_exists_id from sns_board_specs_others where ltrim(rtrim(upper(empname))) = :ls_to_empname and empno = :ll_to_empno using sqlca;
//						//			
//					end if	
//					if((ll_to_pos_exists_id = 0) and (ll_to_pos_xrefid = 0) and (ll_to_bs_specs_others_exists_id = 0)) then
//						if(f_len_ext(ls_to_positionid) > 0) then
//							//
//							select id, xrefid into :ll_to_pos_exists_id, :ll_to_pos_xrefid from sns_staffing_grps_positions2 where ltrim(rtrim(upper(positionid))) = :ls_to_positionid using sqlca;
//							//
//							if(ll_to_pos_exists_id > 0) then
//								ll_to_xrefmods_ppos2recid = ll_to_pos_exists_id
//								//
//								select id into :ll_to_xrefmods_exists_id from sns_pos_xref_mods where ppos2recid = :ll_to_pos_exists_id using sqlca;
//								//
//							end if
//							if((ll_to_xref_exists_id = 0) and (ll_to_pos_xrefid > 0)) then
//								//
//								select id into :ll_to_xref_exists_id from sns_pos_xref where id = :ll_to_pos_xrefid using sqlca;
//							end if
//						end if
//						if((ll_dragdrop_grpid > 0) and (f_len_ext(ls_callnum) > 0)) then
//							//
//							select id into :ll_to_bs_specs_others_exists_id from sns_board_specs_others where grpid = :ll_dragdrop_grpid and callnum = :ls_callnum using sqlca;
//							//
//						end if
//					end if
//					li_num_dup_callnums = 0
//					//
//					select count(*) into :li_num_dup_callnums from sns_board_specs_others where callnum = :ls_callnum using sqlca;
//					//
//					if(li_num_dup_callnums > 0) then
//						MessageBox("Notification","Call number " + ls_callnum + " Is already assigned!", Exclamation!)
//						return
//					end if
//					
//					//                                     ls_from_hdrtext      ls_from_text       ll_from_grpid       ls_from_empname         ll_from_row   ls_mode      ls_to_hdrtext       ls_dwo_name         ll_to_grpid        ls_to_empname       ll_to_row        numavailpositions     dropgrouprowcount from_empno
//					//li_case_num = f_determine_case_num(ls_drag_from_header, ls_drag_from_text, ll_drag_from_grpid, ls_drag_from_empname, li_drag_from_row, ls_mode, ls_drag_drop_header, ls_drag_drop_text, ll_drag_drop_grpid, ls_drag_drop_empname, li_drag_drop_row, li_num_avail_rows, li_drop_to_rowcount, ll_from_empno)
//					li_case_num = f_determine_case_num(ls_from_hdrtext, ls_from_text, ll_from_grpid, ls_from_empname, ll_from_row, ls_mode, ls_to_hdrtext, ls_dwo_name, ll_to_grpid, ls_to_empname, ll_to_row, ll_num_avail_positions, ll_row_count, ls_icon_name, ll_from_empno)
//					sle_case_num.text = string(li_case_num)				
//					//###############
//					//### CASE# 9 ###
//					//###############
//					if(li_case_num = 9) then
//						//-------------------------------------------------------------------------
//						//MOVE DRAG_FROM_EMPNAME TO *** UNFILLED *** POSTION WITHIN SAME GROUP
//						//example GABBITAS-KONNER MOVE FROM 1J2534 TO 1J2532 (UNFILLED)
//						//ll_from_pos_exists_id	1678
//						//ll_from_pos_xrefid	366
//						//ll_from_xrefmods_ppos2recid	1678
//						//ll_from_xref_exists_id	366
//						//ll_from_xrefmods_exists_id	366
//						//ll_from_emp_exists_id	1215
//						//ll_from_bs_specs_others_exists_id	74
//						//ll_to_pos_exists_id	638
//						//ll_to_pos_xrefid	212
//						//ll_to_xrefmods_ppos2recid	638
//						//ll_to_xref_exists_id	212
//						//ll_to_xrefmods_exists_id	212
//						//ll_to_emp_exists_id	0 (unfilled postion han not empno)
//						//ll_to_bs_specs_others_exists_id	80
//						//-------------------------------------------------------------------------
//						//ll_dragdrop_grpid	8
//						//ll_from_grpid	8
//						//ll_from_empno	19633
//						//li_drag_drop_row	3
//						//li_drag_from_row	5
//						//li_drop_to_rowcount	10
//						//li_num_avail_rows	12
//						//ls_callnum	1J2532
//						//ls_from_callnum	1J2534
//						//li_super_lvl	
//						//ls_from_positionid	00512
//						//ls_to_positionid	00066
//   					//-------------------------------------------------------------------------
//						//swap records callnum in sns_staffing_grps_positions2 and sns_pos_xref and sns_pos_xref_mods between from -> to   to -> from
//						if((ll_from_pos_exists_id > 0) and (ll_to_pos_exists_id > 0)) then
//							//--- drag from updates ---
//							//
//							update sns_staffing_grps_positions2 set callnum = :ls_callnum where id = :ll_from_pos_exists_id using sqlca;
//							//
//							li_commit_status = f_commit_rollback_record(ref sqlca)
//							if((ll_from_pos_xrefid > 0) and (li_commit_status = 1)) then
//								//
//								update sns_pos_xref set spunitno = :ls_callnum where id = :ll_from_pos_xrefid using sqlca;
//								//
//								li_commit_status = f_commit_rollback_record(ref sqlca)
//								if((ll_from_xrefmods_exists_id > 0) and (li_commit_status = 1)) then
//									//
//									update sns_pos_xref_mods set pspunitno = :ls_callnum where id = :ll_from_xrefmods_exists_id using sqlca;
//									//
//									f_commit_rollback_record(ref sqlca)
//								end if
//							end if
//							//--- drag to updates ---
//							//
//							update sns_staffing_grps_positions2 set callnum = :ls_from_callnum where id = :ll_to_pos_exists_id using sqlca;
//							//
//							li_commit_status = f_commit_rollback_record(ref sqlca)
//							if((ll_to_pos_xrefid > 0) and (li_commit_status = 1)) then
//								//
//								update sns_pos_xref set spunitno = :ls_from_callnum where id = :ll_to_pos_xrefid using sqlca;
//								//
//								li_commit_status = f_commit_rollback_record(ref sqlca)
//								if((ll_to_xrefmods_exists_id > 0) and (li_commit_status = 1)) then
//									//
//									update sns_pos_xref_mods set pspunitno = :ls_from_callnum where id = :ll_to_xrefmods_exists_id using sqlca;
//									//
//									f_commit_rollback_record(ref sqlca)
//								end if
//							end if
//						end if						
//						//swap records callnums in sns_board_specs_others between from and to  from -> to   to -> from
//						if((ll_from_bs_specs_others_exists_id > 0) and (ll_to_bs_specs_others_exists_id > 0)) then
//							//
//							update sns_board_specs_others set callnum = :ls_from_callnum where id = :ll_to_bs_specs_others_exists_id using sqlca;
//							//
//							f_commit_rollback_record(ref sqlca)
//							//
//							update sns_board_specs_others set callnum = :ls_callnum where id = :ll_from_bs_specs_others_exists_id using sqlca;
//							//
//							f_commit_rollback_record(ref sqlca)							
//						end if
//					end if
//					//###############
//					//### CASE# 6 ###
//					//###############
//					if(li_case_num = 6) then
//						li_isunfilled = 1
//						//-sle_drag_from_hdrtext <> sle_drag_drop_hdrtext
//						//-sle_drag_from_object = 'SNS_BOARD_SPECS_OTHERS_EMPLOYEE'
//						//-sle_drag_from_row between 1 and 12
//						//-sle_drag_from_empno > 0
//						//-sle_drag_from_grpid > 0
//						//-mode = 'EMPTY'
//						//-sle_drag_drop_object = 'DATAWINDOW'
//						//-sle_drag_drop_grpid > 0 and <> sle_drom_from_grpid
//						//-sle_drag_drop_empname = 'INSERT'
//						//-sle_dragdrop_rowcount > 0 and <= sle_num_avail_positions
//						//INSERT INTO DRAG_TO_GROUP
//						//REMOVE FROM DRAG_FROM_GROUP
//						//
//						li_stop = 0
//						bSuccessfulMove = false
//						bSuccessfulRemove = false
//						bSuccessfulInsert = false					
//	
//						//===================================
//						//*** REMOVE FROM DRAG_FROM GROUP ***
//						//===================================
//						//bSuccessfulRemove = f_remove_from_dragfrom_group(ll_from_pos_exists_id, ll_from_bs_specs_others_exists_id, ll_from_xref_exists_id, ll_from_xrefmods_exists_id, ll_from_emp_exists_id, ref lsa_dd_errors, ref li_num_deletes, ref li_num_updates, ref sqlca)
//						
//						if((ll_from_pos_exists_id > 0) and (ll_from_bs_specs_others_exists_id > 0)) then
//	
//							li_num_deletes = 0
//							li_num_updates = 0
//							// - delete from sns_staffing_grps_positions2 where id = ll_from_pos_exists_id
//							delete from sns_staffing_grps_positions2 where id = :ll_from_pos_exists_id using sqlca;
//							//
//							if(sqlca.sqlcode <> -1) then
//								//
//								commit using sqlca;
//								//
//								li_num_deletes++
//							else
//								ls_sqlerrtext = sqlca.sqlerrtext
//								//
//								rollback using sqlca;
//								//
//								ls_sqlerrtext = "delete from sns_staffing_grps_positions2 error=" + ls_sqlerrtext
//								f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//							end if
//							// - delete from sns_pos_xref where id = ll_from_xref_exists_id
//							if(ll_from_xref_exists_id > 0) then
//								//
//								delete from sns_pos_xref where id = :ll_from_xref_exists_id using sqlca;
//								//
//								if(sqlca.sqlcode <> -1) then
//									//
//									commit using sqlca;
//									//
//									li_num_deletes++
//								else
//									ls_sqlerrtext = sqlca.sqlerrtext
//									//
//									rollback using sqlca;
//									//
//									ls_sqlerrtext = "delete from sns_pos_xref error=" + ls_sqlerrtext
//									f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//								end if
//							end if
//							// - delete from sns_pos_xref_mods where id = ll_from_xrefmods_exists_id
//							if(ll_from_xrefmods_exists_id > 0) then
//								//
//								delete from sns_pos_xref_mods where id = :ll_from_xrefmods_exists_id using sqlca;
//								//
//								if(sqlca.sqlcode <> -1) then
//									//
//									commit using sqlca;
//									//
//									li_num_deletes++
//								else
//									ls_sqlerrtext = sqlca.sqlerrtext
//									//
//									rollback using sqlca;
//									//
//									ls_sqlerrtext = "delete from sns_pos_xref_mods error=" + ls_sqlerrtext
//									f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//								end if							
//							end if
//							// - update sns_employees set positionid = "", title = "", jobcode = "", jobtitle = "", supervisor = 0, grps_resp = "", grpid = 0 where id = ll_from_emp_exists_id
//							if(ll_from_emp_exists_id > 0) then
//								//''
//								update sns_employees set positionid = '', title = '', jobcode = '', jobtitle = '', supervisor = '', grps_resp = '', grpid = 0	
//								where id = :ll_from_emp_exists_id 
//								using sqlca;
//								//
//								if(sqlca.sqlcode <> -1) then
//									//
//									commit using sqlca;
//									//
//									li_num_updates++
//								else
//									ls_sqlerrtext = sqlca.sqlerrtext
//									//
//									rollback using sqlca;
//									//
//									ls_sqlerrtext = "update sns_employees error=" + ls_sqlerrtext
//									f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//								end if								
//							end if
//							// - update sns_board_specs_others set empname = "", empno = 0, positionid = "" where id = ll_from_bs_specs_others_exists_id
//							if(ll_from_bs_specs_others_exists_id > 0) then
//								//
//								update sns_board_specs_others set empname = '', empno = 0, positionid = ''
//								where id = :ll_from_bs_specs_others_exists_id
//								using sqlca;
//								//
//								if(sqlca.sqlcode <> -1) then
//									//
//									commit using sqlca;
//									//
//									li_num_updates++
//								else
//									ls_sqlerrtext = sqlca.sqlerrtext
//									//
//									rollback using sqlca;
//									//
//									ls_sqlerrtext = "update sns_board_specs_others error=" + ls_sqlerrtext
//									f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//								end if								
//							end if
//							if((li_num_deletes > 0) and (li_num_updates = 2) and (UpperBound(lsa_dd_errors) = 0)) then
//								bSuccessfulRemove = true
//							end if
//						end if
//						if(bSuccessfulRemove = true) then
//							//===================================
//							//*** INSERT INTO DRAG_TO GROUP ***
//							//===================================
//	//						li_inserted_status = 0
//	//						li_inserted_status = f_insert_into_dragto_group(ll_from_bs_specs_others_exists_id, ll_from_emp_exists_id, ls_from_empname, ll_from_empno, ls_from_positionid, &
//	//																						ll_to_grpid, ls_from_funddept, ls_from_jobtitle,ls_from_jobcode, ls_to_positionid, ref li_num_updates, &
//	//																						ref lsa_dd_errors, ref sqlca)
//	
//							// update sns_board_specs_others
//	
//							string ls_to_callnum
//							li_num_updates = 0
//							if(ll_from_bs_specs_others_exists_id > 0) then
//								//
//								select callnum into :ls_to_callnum from sns_board_specs_others where id = :ll_from_bs_specs_others_exists_id using sqlca;
//								//
//								update sns_board_specs_others set empname = :ls_from_empname, empno = :ll_from_empno, positionid = :ls_from_positionid
//								where id = :ll_from_bs_specs_others_exists_id
//								using sqlca;
//								//
//								if(sqlca.sqlcode <> -1) then
//									//
//									commit using sqlca;
//									//
//									li_num_updates++
//								else
//									ls_sqlerrtext = sqlca.sqlerrtext
//									//
//									rollback using sqlca;
//									//
//									ls_sqlerrtext = "update to sns_board_specs_others error=" + ls_sqlerrtext
//									f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//								end if								
//								li_rtn_value = 0
//								string ls_to_addinfo
//								ls_to_addinfo = f_replace_string_in_string(ls_to_callnum, "1J", " ")
//								ls_to_addinfo = f_compress_string(ls_to_addinfo, " ")
//								//  0 = successful
//								// -1 = no action taken
//								// -2 = li_assgnd_empno_count > 0
//								// -3 = li_positionid_count > 0
//								// -4 = assgnd_empno not found in pos2
//								// -5 = ll_pos2idshort invalid
//								// -6 = tr_sqlca sqlcode = -1 sns_staffing_grps_positions2
//								// -7 = tr_sqlca sqlcode = -1 sns_pos_xref
//								// -8 = tr_sqlca sqlcode = -1 sns_pos_xref_mods
//								// -9 = tr_sqlca sqlcode = -1 sns_group_ids
//								//-10 = ll_pos2idshort <0 or > 90000 
//								li_rtn_value = f_insert_pos2_support_table_records(ll_to_grpid, ls_to_callnum, ll_from_empno, ls_from_funddept, ls_to_addinfo, ".", ls_from_positionid, ls_from_jobcode, ls_from_jobtitle, 0.0, true, ref ls_error, ref sqlca)
//								if(li_rtn_value >= 1) then
//									if(ll_from_emp_exists_id > 0) then
//										// - update sns_employees set positionid = "", title = "", jobcode = "", jobtitle = "", supervisor = 0, grps_resp = "", grpid = 0 where id = ll_from_emp_exists_id
//										update sns_employees set positionid = :ls_to_positionid, title = :ls_from_jobtitle, jobcode = :ls_from_jobcode, grpid = :ll_to_grpid
//										where id = :ll_from_emp_exists_id
//										using sqlca;
//										//
//										if(sqlca.sqlcode <> -1) then
//											//
//											commit using sqlca;
//											//
//											li_num_updates++
//										else
//											ls_sqlerrtext = sqlca.sqlerrtext
//											//
//											rollback using sqlca;
//											//
//											ls_sqlerrtext = "update to sns_employees columns error=" + ls_sqlerrtext
//											f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//										end if										
//										if((ll_to_grpid > 0) and (li_num_updates >= 2)) then
//											long ll_grps_resp
//											long ll_grp_super_empno
//											ll_grps_resp = 0
//											ll_grp_super_empno = 0
//											//
//											select grp_super_empno, root_grp_super_empno into :ll_grp_super_empno, :ll_grps_resp from sns_staffing_groups where id = :ll_to_grpid using sqlca;
//											//
//											update sns_employees set grps_resp = :ll_grps_resp, supervisor = :ll_grp_super_empno where id = :ll_from_emp_exists_id using sqlca;
//											//
//											if(sqlca.sqlcode <> -1) then
//												//
//												commit using sqlca;
//												//
//												li_num_updates++
//											else
//												ls_sqlerrtext = sqlca.sqlerrtext
//												//
//												rollback using sqlca;
//												//
//												ls_sqlerrtext = "update to sns_employees grps_resp,supervisor error=" + ls_sqlerrtext
//												f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//											end if											
//										end if //ll_to_grpid > 0
//									end if//ll_from_emp_exists_id > 0
//								end if //li_rtn_value = 0
//							end if //ll_from_bs_specs_others_exists_id > 0						
//						end if //bSuccessfulRemove = true
//					end if //li_case_num = 6
//					//###############
//					//### CASE# 8 ###
//					//###############
//					if(li_case_num = 8) then
//						li_isunfilled = 0
//						//===================================
//						//*** REMOVE FROM DRAG_FROM GROUP ***
//						//===================================
//						bSuccessfulRemove = false
//						li_rtn_value = 0
//						// 1 = successful backup
//						//-1 = invalid li_case_num or ls_from_hdrtext or ls_to_hdrtext
//						//-2 = insert failed
//						//-3 = remove previous backup failed
//						li_rtn_value = f_backup_board_specs_tables(li_case_num, ls_from_hdrtext, ls_to_hdrtext, ll_from_pos_exists_id, ll_from_bs_specs_others_exists_id, ll_from_xref_exists_id, ll_from_xrefmods_exists_id, ll_from_emp_exists_id, ref sqlca)
//						if(li_rtn_value = 1) then
//							bSuccessfulRemove = f_remove_from_dragfrom_group(ll_from_pos_exists_id, ll_from_bs_specs_others_exists_id, ll_from_xref_exists_id, ll_from_xrefmods_exists_id, ll_from_emp_exists_id, ref lsa_dd_errors, ref li_num_deletes, ref li_num_updates, ref sqlca)
//							if(bSuccessfulRemove = true) then
//								string lsa_parms[]
//								f_allocate_string_array(39, ref lsa_parms)
//								lsa_parms[1] = string(ll_from_bs_specs_others_exists_id)
//								lsa_parms[2] = string(ll_from_emp_exists_id)
//								lsa_parms[3] = string(ll_from_pos_exists_id)
//								lsa_parms[4] = string(ll_from_pos_xrefid)
//								lsa_parms[5] = string(ll_from_xref_exists_id)
//								lsa_parms[6] = ls_empname
//								lsa_parms[7] = string(ll_from_empno)
//								lsa_parms[8] = ls_from_positionid
//								lsa_parms[9] = ls_from_funddept
//								lsa_parms[10] = ls_from_jobtitle
//								lsa_parms[11] = ls_from_jobcode
//								lsa_parms[12] = string(ll_from_grpid)
//								lsa_parms[13] = string(ll_from_row)
//								lsa_parms[14] = ls_from_pos_addinfo
//								lsa_parms[15] = ls_from_pos_funddept
//								lsa_parms[16] = ls_from_pos_jobcode
//								lsa_parms[17] = ls_from_pos_jobtitle
//								lsa_parms[18] = string(ll_to_grpid)
//								lsa_parms[19] = ls_to_positionid
//								lsa_parms[20] = string(ll_to_row)
//								lsa_parms[21] = string(ll_to_rowcount)
//								lsa_parms[22] = ls_to_empname
//								lsa_parms[23] = ls_callnum
//								lsa_parms[24] = ls_dragfrom_hdrtext
//								lsa_parms[25] = ls_empname
//								lsa_parms[26] = ls_hdrtext
//								lsa_parms[27] = ls_mode
//								lsa_parms[28] = ls_row
//								lsa_parms[29] = ""
//								lsa_parms[30] = ""
//								lsa_parms[31] = ""
//								lsa_parms[32] = ""
//								lsa_parms[33] = ""
//								lsa_parms[34] = ""
//								lsa_parms[35] = ""
//								lsa_parms[36] = ""
//								lsa_parms[37] = ""
//								lsa_parms[38] = ""
//								lsa_parms[39] = ""
//								//===================================
//								//*** INSERT INTO DRAG_TO GROUP ***
//								//===================================
//								li_inserted_status = 0
//								li_inserted_status = f_insert_into_dragto_group(li_case_num, lsa_parms, ref li_num_updates, ref lsa_dd_errors, ref sqlca)					
//							else
//								li_rtn_value = 0		
//								ls_errors = ""
//								li_rtn_value = f_restore_board_specs_backup_tables(li_case_num, ls_from_hdrtext, ls_to_hdrtext, ll_from_pos_exists_id, ll_from_bs_specs_others_exists_id, ll_from_xref_exists_id, ll_from_xrefmods_exists_id, ll_from_emp_exists_id, ref ls_errors, ref sqlca)
//								MessageBox("Notification","Drag-Drop inserts failed. Restore completed. Please Call administrator at x4008.");
//							end if
//						else
//							MessageBox("Notification","Failed to backup board specs (f_backup_board_specs_tables). return value= " + string(li_rtn_value) + ". Please Call administrator at x4008.")
//						end if
//					end if
//					//###############
//					//### CASE# 2 ###
//					//###############
//					if(li_case_num = 2) then
//					
//					end if
//					if(ll_to_grpid = ll_dragdrop_grpid) then
//						sle_refresh_grpids.text = string(ll_dragdrop_grpid)
//					else
//						string ls_refresh_grpids
//						ls_refresh_grpids = string(ll_dragdrop_grpid) + "," + string(ll_from_grpid)
//					end if
//					TriggerEvent(pb_refresh, Clicked!)	
//				end if
//				sle_is_dragging.text = string(bIsDragging)
//			end if
//		//end if
//	end if	
//end if
end event

event dragwithin;////==================
////### DRAGWITHIN ###
////==================
////dragwithin
//if(bIsDragging = true) then
//	sle_is_dragging.text = string(bIsDragging)
//	sle_dragwithin_row.text = ""
//	sle_dragwithin_header.text = ""
//	sle_dragwithin_text.text = ""
//	sle_dragwithin_empno.text = ""
//	string ls_hdrtext
//	long ll_empno
//	string ls_dwoname	
//	ls_dwoname = trim(upper(dwo.name))
//	
//	//=======================
//	long ll_clicked_grpid
//	ll_clicked_grpid = 1
//	//=======================
//	datawindow dw_clicked_object
//	dw_clicked_object = f_getDwobjectByGrpid(ll_clicked_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//	if(IsNull(dw_clicked_object) = false) then
//		ls_hdrtext = ""
//		ll_empno = 0	
//		string ls_empname
//		string ls_callnum
//		ls_hdrtext = trim(upper(dw_clicked_object.getitemstring(row, "grpteamid")))
//		ll_empno = 0
//		ls_empname = ""
//		sle_drag_drop_empname.text = ls_empname
//		//ls_callnum = dw_c.getitemstring(row, "sns_board_specs_others_callnum")
//		//ll_empno = dw_c.getitemnumber(row, "sns_board_specs_others_empno")
//		if(row > 0) then
//			ll_empno = dw_clicked_object.getitemnumber(row, "sns_board_specs_others_empno")
//			ls_empname = dw_clicked_object.getitemstring(row, "sns_board_specs_others_empname")	
//			sle_dragwithin_row.text = string(row)
//			sle_dragwithin_header.text = ls_hdrtext
//			sle_dragwithin_text.text = ls_dwoname
//			sle_dragwithin_empno.text = string(ll_empno)
//			if(sle_drag_from_hdrtext.text <> ls_hdrtext) then
//				//dragicon logic
//				if(pos(ls_dwoname, "sns_board_specs_others_empname") > 0) then
//					if(ll_empno > 0) then
//						this.dragicon = "UserObject5!"
//						sle_icon_filenanme.text = "UserObject5!"
//					else
//						this.dragicon = "StopSign!"
//						sle_icon_filenanme.text = "StopSign1!"
//					end if
//				elseif(pos(ls_dwoname, "DATAWINDOW") > 0) then
//					//if(ll_empno > 0) then
//						//this.dragicon = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFDROP.ICO"
//						//sle_icon_filenanme.text = "Drop!"
//					//else
//						this.dragicon = "StopSign!"
//						sle_icon_filenanme.text = "StopSign2!"			
//					//end if
//				else
//					//this.dragicon = "StopSign!"
//					//sle_icon_filenanme.text = "StopSign3!"			
//					this.dragicon = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFREPLACE.ICO"
//					sle_icon_filenanme.text = "Replace!"
//				end if
//			else
//				this.dragicon = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFGRN.ICO"
//				sle_icon_filenanme.text = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFGRN.ICO"
//			end if
//		else
//			this.dragicon = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFINSERT.ICO"
//			sle_icon_filenanme.text = "Insert!"
//			sle_dragwithin_row.text = string(row)
//			sle_dragwithin_header.text = ls_hdrtext
//			sle_dragwithin_text.text = ls_dwoname
//			sle_dragwithin_empno.text = string(ll_empno)
//		end if
//	end if
//end if
end event

event rbuttondown;////===================
////### RBUTTONDOWN ###
////===================
//string ls_dwo_name
//ls_dwo_name = dwo.name
//boolean bAutoRefresh
////=======================
//long ll_clicked_grpid
//ll_clicked_grpid = 1
////=======================
//datawindow dw_clicked_object
//dw_clicked_object = f_getDwobjectByGrpid(ll_clicked_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//if(IsNull(dw_clicked_object) = false) then
//	string ls_empname
//	string ls_callnum
//	string ls_hdrtext
//	string ls_refresh_grpids
//	if(row = 0) then
//		ls_hdrtext = dw_clicked_object.getitemstring(1, "grpteamid")	
//	else
//		ls_hdrtext = dw_clicked_object.getitemstring(row, "grpteamid")	
//	end if
//	string ls_grpid
//	long ll_grpid
//	ls_grpid = f_extract_bracketed_item(ls_hdrtext, "{","}", true)
//	ll_grpid = f_stol(ls_grpid)
//	long ll_num_avail_positions
//	ll_num_avail_positions = 0
//	if((row > 0) and (ll_grpid > 0)) then
//		ls_empname = dw_clicked_object.getitemstring(row, "sns_board_specs_others_empname")
//		ls_callnum = dw_clicked_object.getitemstring(row, "sns_board_specs_others_callnum")
//		//
//		select count(*) into :ll_num_avail_positions	from sns_board_specs_others where grpid = :ll_grpid using sqlca;
//		//
//		long ll_loop
//		string ls_loopdata
//		integer li_max_names
//		li_max_names = 0
//		for ll_loop = 1 to ll_num_avail_positions
//			ls_loopdata = dw_clicked_object.getitemstring(ll_loop, "sns_board_specs_others_empname")
//			if((pos(ls_loopdata, "UNFILLED") = 0) and (f_len_ext(ls_loopdata) > 0)) then
//				li_max_names++			
//			end if
//		next
//		//
//		integer li_drslt 
//		if(pos(ls_empname, "UNFILLED") = 0) then
//			li_drslt = MessageBox("Question","Are you sure you want to remove " + ls_empname + " from " + gs_crlf + ls_hdrtext + " with callnum " + ls_callnum + "?", QUESTION!, YESNO!, 1)
//			if(li_drslt = 1) then
//				integer li_del_rtn_value
//				li_del_rtn_value = 0
//				if(pos(ls_empname, "UNFILLED") > 0) and (ls_callnum = "TBD") then
//					//****************
//					//**** CASE 3 ****
//					//****************
//					li_del_rtn_value = f_deleteunfilledposition(ref dw_clicked_object, row, dw_unassigned, ref sqlca)
//					if(li_del_rtn_value = 1) then
//						bAutoRefresh = true
//					end if
//				elseif((pos(ls_empname, "UNFILLED") > 0) and (pos(ls_callnum, "1J") = 1)) then
//					//****************
//					//**** CASE 3 ****
//					//****************
//					li_del_rtn_value = f_deleteunfilledposition(ref dw_clicked_object, row, dw_unassigned, ref sqlca)
//					if(li_del_rtn_value = 1) then
//						bAutoRefresh = true
//					end if				
//				else
//					//****************
//					//**** CASE 4 ****
//					//****************
//					if((li_max_names > 0) and (row <= ll_num_avail_positions)) then
//						li_del_rtn_value = f_delete_filled_position(ref dw_clicked_object, row, dw_unassigned, ref sqlca)
//						if(li_del_rtn_value = 1) then
//							bAutoRefresh = true
//						end if
//					end if
//				end if	
//				if(bAutoRefresh = true) then
//					ls_refresh_grpids = "," + string(ll_clicked_grpid) + ","
//					sle_refresh_grpids.text = ls_refresh_grpids
//					TriggerEvent(pb_refresh, Clicked!)							
//				end if			
//			end if
//		else
//			//ls_empname <> "UNFILLED"
//			if(li_max_names < ll_num_avail_positions) then
//				li_drslt = MessageBox("Question","Do you want to replace the *** UNFILLED *** position with a employee?", QUESTION!, YESNO!, 1)
//				if(li_drslt = 1) then
//					//select employee to replace *** UNFILLED *** position
//					string ls_messageparm
//					ls_messageparm = string(ll_clicked_grpid)
//					OpenWithParm(w_add_user, ls_messageparm)
//					string ls_selected_username
//					ls_selected_username = Message.StringParm
//					if(f_len_ext(ls_selected_username) > 0) then
//						li_drslt = MessageBox("Notification","Do you want to add User " + ls_selected_username + " to group " + ls_hdrtext, QUESTION!, YESNO!)
//						if(li_drslt = 1) then					
//							//-------------------------------------------------------------
//							long ll_boards_specs_others_id //sns_board_specs_others
//							long ll_pos_id                 //sns_staffing_grps_positions2
//							long ll_pos_xref_id            //sns_pos_xref
//							long ll_pos_xref_mods_id       //sns_pos_xref_mods
//							long ll_emp_id                 //sns_employees
//							//-------------------------------------------------------------
//							long ll_emp_empno
//							string ls_emp_empname
//							string ls_positionid
//							string ls_sel_empno
//							long ll_pos_grpid
//							long ll_pos_xrefid
//							string ls_pos_addinfo
//							integer li_pos
//							long ll_pos2idshort
//							long ll_pos_addinfo
//							string ls_fm_jobcode
//							string ls_fm_jobtitle
//							string ls_fm_positionid
//							boolean b_skipadd
//							string ls_funddept
//							//-------------------------------------------------------------
//							ll_boards_specs_others_id = 0
//							ll_pos_id = 0
//							ll_pos_xref_id = 0
//							ll_pos_xref_mods_id = 0
//							ll_emp_id = 0
//							ll_emp_empno = 0
//							ls_emp_empname = ""
//							ls_positionid = ""
//							ls_sel_empno = ""
//							ll_pos_grpid = 0
//							ll_pos_xrefid = 0
//							ls_pos_addinfo = ""
//							li_pos = 0
//							ll_pos2idshort = 0
//							ll_pos_addinfo = 0
//							ls_fm_jobcode = ""
//							ls_fm_jobtitle = ""
//							ls_fm_positionid = ""
//							b_skipadd = false
//							ls_funddept = ""
//							//-------------------------------------------------------------
//							ls_sel_empno = f_extract_bracketed_item(ls_selected_username, "[", "]", true)
//							ls_pos_addinfo = ls_callnum
//							li_pos = pos(ls_callnum, "1J")
//							if(li_pos > 0) then
//								ls_pos_addinfo = trim(mid(ls_callnum, (li_pos + 2)))
//							else
//								ls_pos_addinfo = ""
//							end if
//							ll_emp_empno = f_stol(ls_sel_empno)
//							if(ll_emp_empno > 0) then
//								//
//								select job_code, title into :ls_fm_jobcode, :ls_fm_jobtitle from fm.io_employee where empno = :ll_emp_empno using sqlca;
//								//
//								select id, positionid into :ll_boards_specs_others_id, :ls_positionid from sns_board_specs_others where grpid = :ll_clicked_grpid and callnum = :ls_callnum using sqlca;
//								//
//								select id, empname into :ll_emp_id, :ls_emp_empname from sns_employees where empno = :ll_emp_empno using sqlca;
//								//
//								if((f_len_ext(ls_funddept) = 0) or (IsNull(ls_funddept) = true)) then
//									//
//									select to_char(fund) || '-' || to_char(dept) into :ls_funddept from fm.io_employee where empno = :ll_emp_empno using sqlca;
//									//
//								end if
//								if((f_len_ext(ls_positionid) = 0) or (IsNull(ls_positionid) = true)) then
//									//
//									select positionid into :ls_positionid from sns_staffing_grps_positions2 where assgnd_empno = :ll_emp_empno using sqlca;
//									//
//									if((f_len_ext(ls_positionid) = 0) or (IsNull(ls_positionid) = true)) then
//										//
//										select position_id into :ls_positionid from fm.io_employee where empno = :ll_emp_empno using sqlca;
//										//
//									end if
//								end if
//								ls_positionid = trim(upper(ls_positionid))
//								if(f_len_ext(ls_positionid) > 0) then
//									li_pos = pos(ls_positionid, "-")
//									if(li_pos > 0) then
//										ll_pos2idshort = f_stol(mid(ls_positionid, (li_pos + 1)))								
//									end if
//								else
//									b_skipadd = true
//									bAutoRefresh = false
//									MessageBox("Notification","Unable to add " + ls_emp_empname + " to group " + ls_hdrtext + ". Unable to determine POSITION ID#!")
//								end if
//								if(b_skipadd = false) then
//									if(f_len_ext(ls_positionid) > 0) then
//										//
//										select id, grpid, xrefid into :ll_pos_id, :ll_pos_grpid, :ll_pos_xrefid from sns_staffing_grps_positions2 where ltrim(rtrim(upper(positionid))) = :ls_positionid using sqlca;
//										//
//										select id into :ll_pos_xref_id from sns_pos_xref where pos2idshort = :ll_pos2idshort using sqlca;
//										//
//										select id into :ll_pos_xref_mods_id from sns_pos_xref_mods where ppos2idshort = :ll_pos2idshort using sqlca;
//										//
//									end if
//									//-------------------------------------------------------------
//									// sns_staffing_grps_positions2
//									//  -update grpid, callnum, addinfo, jobcode, jobtitle, assgnd_empno
//									// sns_pos_xref
//									//  -change grpid to the move to group grpid
//									//  -change spunitno to new callnum
//									// sns_pos_xref_mods
//									//  -change pgrpid to the move to group grpid
//									//  -change pspunitno to new callnum
//									// sns_employees
//									//  -update the grpid to move to group grpid
//									// sns_board_specs_others
//									//  -update empname
//									//  -       empno
//									//  -       positionid
//									//  - where callnum = selected callnum											
//									//-------------------------------------------------------------
//									integer li_num_update_errors
//									integer li_rtn_value
//									string ls_error
//									li_rtn_value = 0
//									li_num_update_errors = 0
//									if(ll_pos_id > 0) then
//										//sns_staffing_grps_positions2
//										//
//										update sns_staffing_grps_positions2 
//										set grpid = :ll_clicked_grpid, callnum = :ls_callnum, assgnd_empno = :ll_emp_empno, addinfo = :ls_pos_addinfo, jobcode = :ls_fm_jobcode, jobtitle = :ls_fm_jobtitle
//										where id = :ll_pos_id
//										using sqlca;
//										//
//										if(sqlca.sqlcode = -1) then
//											li_num_update_errors++
//										else
//											li_rtn_value = 1
//										end if
//										//sns_pos_xref
//										if(ll_pos_xref_id > 0) then
//											//
//											update sns_pos_xref
//											set pos2recid = :ll_pos_id, empno = :ll_emp_empno, pos2idshort = :ll_pos2idshort, spunitno = :ls_callnum, grpid = :ll_clicked_grpid, status = 'A', empname = :ls_emp_empname
//											where id = :ll_pos_xref_id
//											using sqlca;
//											//
//											if(sqlca.sqlcode = -1) then
//												li_num_update_errors++
//											end if
//											//
//											if(ll_pos_xref_mods_id > 0) then
//												//
//												update sns_pos_xref_mods
//												set ppos2recid = :ll_pos_id, pempno = :ll_emp_empno, ppos2idshort = :ll_pos2idshort, pspunitno = :ls_callnum, pgrpid = :ll_clicked_grpid
//												where id = :ll_pos_xref_mods_id
//												using sqlca;
//												//
//												if(sqlca.sqlcode = -1) then
//													li_num_update_errors++
//												end if
//											end if
//										end if
//									else
//										//insert into sns_staffing_grps_positions2, sns_pos_xref and sns_pos_xref_mods
//										li_rtn_value = f_insert_pos2_support_table_records(ll_clicked_grpid, ls_callnum, ll_emp_empno, ls_funddept, ls_pos_addinfo, &
//																	".", ls_positionid, ls_fm_jobcode, ls_fm_jobtitle, 0.0, true, &
//																	ref ls_error, ref sqlca)
//									end if
//									if((ll_emp_id > 0) and (li_rtn_value = 1)) then
//										long ll_super_empno
//										string ls_grps_resp
//										string ls_supervisor
//										long ll_grps_resp
//										//
//										select empno, empname into :ll_super_empno, :ls_supervisor from sns_board_specs_others where grpid = :ll_clicked_grpid and issuper = 1 using sqlca;
//										//
//										select root_grp_super_empno into :ll_grps_resp from sns_staffing_groups where id = :ll_clicked_grpid using sqlca;
//										//
//										ls_grps_resp = string(ll_grps_resp)
//										//
//										update sns_employees
//										set title = :ls_fm_jobtitle, jobcode = :ls_fm_jobcode, positionid = :ls_positionid, super_empno = :ll_super_empno, supervisor = :ls_supervisor, grps_resp =:ls_grps_resp, grpid = :ll_clicked_grpid
//										where empno = :ll_emp_empno
//										using sqlca;
//										//
//										if(sqlca.sqlcode = -1) then
//											li_num_update_errors++
//										end if									
//									end if
//									if(ll_boards_specs_others_id > 0) then
//										//
//										update sns_board_specs_others
//										set empname = :ls_emp_empname, empno = :ll_emp_empno, isunfilled = 0
//										where id = :ll_boards_specs_others_id
//										using sqlca;
//										//
//										if(sqlca.sqlcode = -1) then
//											li_num_update_errors++
//										end if	
//									end if
//									if(li_num_update_errors = 0) then
//										//
//										commit using sqlca;
//										//
//										bAutoRefresh = true
//										MessageBox("Notification","Successfully added " + ls_emp_empname + " to group " + ls_hdrtext)
//									else
//										//
//										rollback using sqlca;
//										//
//										MessageBox("Notification","Failed to add " + ls_emp_empname + " to group " + ls_hdrtext + " One or more errors occured [" + string(li_num_update_errors) + "].")
//										bAutoRefresh = false
//									end if
//								end if
//								if(bAutoRefresh = true) then
//									ls_refresh_grpids = "," + string(ll_clicked_grpid) + ","
//									sle_refresh_grpids.text = ls_refresh_grpids
//									TriggerEvent(pb_refresh, Clicked!)							
//								end if
//							end if //ll_emp_empno > 0
//						end if //li_rtn_result = 1
//					end if //f_len_ext(ls_selected_username) > 0)					
//				end if //li_drslt = 1
//			end if //li_max_names < ll_num_avail_positions
//		end if
//	end if
//end if
//
end event

event retrieverow;////===================
////### RETRIEVEROW ###
////===================
//string ls_empname
//long ll_assgnd_empno
//string ls_callnum
////=======================
//long ll_clicked_grpid
//ll_clicked_grpid = 1
////=======================
//datawindow dw_clicked_object
//dw_clicked_object = f_getDwobjectByGrpid(ll_clicked_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//if(IsNull(dw_clicked_object) = false) then
//	ll_assgnd_empno = dw_clicked_object.getitemnumber(row, 'sns_board_specs_others_empno')
//	ls_callnum = dw_clicked_object.getitemstring(row, 'sns_board_specs_others_callnum')
//	ls_empname = dw_clicked_object.getitemstring(row, 'sns_board_specs_others_empname')
//	if(IsNull(ls_callnum) = true) then
//		ls_callnum = ""
//	end if
//	if((ll_assgnd_empno = 0) and (f_len_ext(ls_empname) = 0) and (f_len_ext(ls_callnum) > 0)) then
//		dw_clicked_object.setitem(row, 'sns_board_specs_others_empname', '*** UNFILLED ***')
//	end if
//end if
//
///=======================
long ll_clicked_grpid
string ls_subgrpid
ll_clicked_grpid = 136
ls_subgrpid = "G2"
////=======================
datawindow dw_clicked_object
integer li_valid_object
datawindow dw_null
SetNull(dw_null)
dw_clicked_object = f_getDwDispJudObjectByGrpid_mod(ll_clicked_grpid, ls_subgrpid, dw_jud_chief, dw_jud_supr1, dw_null, dw_jud_group1, dw_jud_group2, dw_null, dw_null, dw_null, dw_null, dw_jud_admin, ref li_valid_object)
//dwobject    ll_grpid  ls_subgrpid
//dw_jud_group1 135         'G1'
//dw_jud_group2 136         'G2'
//dw_jud_admin  59          'A0'
//dw_jud_group3 137         'G3'
//dw_jud_group4 138         'G4'
//dw_jud_group5 139         'G5'
//dw_jud_group6 140         'G6'
//dw_jud_chief  118         'C0'
//dw_jud_supr1  135         'S1' 
//dw_jud_supr2  137         'S2'
integer li_dispbd
if(li_valid_object = 1) then
	if((ll_clicked_grpid = 135) or (ll_clicked_grpid = 136) or (ll_clicked_grpid = 59)) then
		string ls_grpteam
		ls_grpteam = dw_clicked_object.getitemstring(row, 'sns_staffing_groups_grpteam')
		dw_clicked_object.MODIFY("sns_staffing_groups_grpteam.Background.Color = 8454016") //15245824") 
		dw_clicked_object.MODIFY("sns_staffing_groups_grpteam.Color = 1447192") //16777215") 
	end if
	if(gb_show_all_birthdays = true) then
		li_dispbd = dw_clicked_object.getitemnumber(row, "sns_employees_dispbd")
		if(li_dispbd = 0) then
			integer li_oktoshowbd
			li_oktoshowbd = 0
			li_oktoshowbd = dw_clicked_object.getitemnumber(row, "sns_employees_oktoshowbd")
			if(li_oktoshowbd = 1) then
				dw_clicked_object.setitem(row, "sns_employees_dispbd", 4)
			end if	
		end if
	end if
end if
end event

type dw_jud_group1 from datawindow within w_judicial_services
integer x = 41
integer y = 964
integer width = 1454
integer height = 2940
integer taborder = 40
string dragicon = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFGRN.ICO"
string title = "none"
string dataobject = "dw_jud_groups"
boolean livescroll = true
borderstyle borderstyle = styleshadowbox!
end type

event clicked;//if(bIsDragging = false) then
//	string ls_dwo_name
//	string ls_hdrtext
//	long ll_grpid 
//	string ls_grpid	
//	long ll_empno
//	string ls_callnum
//	string ls_empname			
//	integer li_grow
//	integer li_gcol
//	string ls_parms
//	string ls_rtn_parms
//	long ll_row_count
//	integer li_num_rows
//	boolean bAutoRefresh
//	bAutoRefresh = false
//	boolean bOkToUpdate
//	bOkToUpdate = true	
//	string ls_refresh_grpids
//	//=======================
//	long ll_clicked_grpid
//	ll_clicked_grpid = 1
//	//=======================
//	datawindow dw_clicked_object
//	dw_clicked_object = f_getDwobjectByGrpid(ll_clicked_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//	if(IsNull(dw_clicked_object) = false) then
//		sle_drag_from_hdrtext.text = ""
//		sle_drag_from_object.text = ""
//		sle_drag_from_row.text = ""
//		sle_drag_from_grpid.text = ""
//		sle_drag_from_empno.text = ""
//		sle_drag_from_callnum.text = ""
//		sle_drag_from_empname.text = ""
//		if(row = 0) then
//			ls_hdrtext = dw_clicked_object.getitemstring(1, "grpteamid")
//		else
//			ls_hdrtext = dw_clicked_object.getitemstring(row, "grpteamid")
//		end if
//		string ls_hdrtext_short
//		integer li_hpos
//		li_hpos = pos(ls_hdrtext, "{")
//		if(li_hpos > 0) then
//			ls_hdrtext_short = trim(upper(mid(ls_hdrtext, 1, (li_hpos - 1))))
//		end if
//		ls_grpid = f_extract_bracketed_item(ls_hdrtext, "{","}", true)
//		ll_grpid = f_stol(ls_grpid)		
//		ls_dwo_name = trim(upper(dwo.name)) //B_INSERT_POSITION
//		sle_drag_from_row.text = string(row)
//		ll_row_count = dw_clicked_object.rowcount()	
//		li_grow = f_deterGrpidRowCol(ll_grpid, ll_row_count, ref li_gcol)
//		//
//		select numrows into :li_num_rows from sns_bd_others_layout_specs where grpid = :ll_grpid using sqlca;
//		//
//		ls_hdrtext_short = "/" + ls_hdrtext_short + "/"
//		if((row > 0) and (ls_dwo_name = "SNS_BOARD_SPECS_OTHERS_EMPNAME") and (pos(gs_not_allowed_to_dragdrop_hdrtexts, ls_hdrtext_short) = 0)) then
//			ll_empno = dw_clicked_object.getitemnumber(row, "sns_board_specs_others_empno")
//			if(ll_empno > 0) then
//				bIsDragging = true
//				sle_drag_from_object.text = upper(dwo.name)
//				sle_drag_from_hdrtext.text = ls_hdrtext
//				sle_drag_from_grpid.text = string(ll_grpid)
//				sle_drag_from_empno.text = string(ll_empno)
//				ls_callnum = dw_clicked_object.getitemstring(row, "sns_board_specs_others_callnum")
//				sle_drag_from_callnum.text = ls_callnum
//				ls_empname = dw_clicked_object.getitemstring(row, "sns_board_specs_others_empname")
//				sle_drag_from_empname.text = ls_empname
//				dw_clicked_object.Drag(Begin!)
//				dw_clicked_object.dragicon = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFGRN.ICO"
//				sle_icon_filenanme.text = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFGRN.ICO"
//			else
//				bAutoRefresh = false
//				ls_callnum = dw_clicked_object.getitemstring(row, "sns_board_specs_others_callnum")
//				sle_drag_from_callnum.text = ls_callnum
//				ls_empname = dw_clicked_object.getitemstring(row, "sns_board_specs_others_empname")
//				sle_drag_from_empname.text = ls_empname				
//				if(pos(ls_empname, "UNFILLED") > 0) then
//					integer li_drslt
//					integer li_max_names
//					long ll_num_avail_positions
//					li_drslt = MessageBox("Question","Are you sure you want to remove " + ls_empname + " from " + gs_crlf + ls_hdrtext + " with callnum " + ls_callnum + "?", QUESTION!, YESNO!, 1)
//					if(li_drslt = 1) then
//						integer li_del_rtn_value
//						li_del_rtn_value = 0
//						if(pos(ls_empname, "UNFILLED") > 0) and (ls_callnum = "TBD") then
//							//****************
//							//**** CASE 3 ****
//							//****************
//							li_del_rtn_value = f_deleteunfilledposition(ref dw_clicked_object, row, dw_unassigned, ref sqlca)
//							if(li_del_rtn_value = 1) then
//								bAutoRefresh = true
//							end if
//						elseif((pos(ls_empname, "UNFILLED") > 0) and (pos(ls_callnum, "1J") = 1)) then
//							//****************
//							//**** CASE 3 ****
//							//****************
//							li_del_rtn_value = f_deleteunfilledposition(ref dw_clicked_object, row, dw_unassigned, ref sqlca)
//							if(li_del_rtn_value = 1) then
//								bAutoRefresh = true
//							end if				
//						end if
//					end if
//				end if
//			end if //ll_empno > 0
//		elseif((row > 0) and (ls_dwo_name = "SNS_BOARD_SPECS_OTHERS_CALLNUM")) then
//			string ls_curr_calllnum
//			ls_curr_calllnum = dw_clicked_object.getitemstring(row, "sns_board_specs_others_callnum")
//			ls_empname = dw_clicked_object.getitemstring(row, "sns_board_specs_others_empname")
//			ll_empno = dw_clicked_object.getitemnumber(row, "sns_board_specs_others_empno")	
//			integer li_curr_orderby
//			li_curr_orderby = dw_clicked_object.getitemnumber(row, "sns_board_specs_others_orderby")
//			if(IsNull(li_curr_orderby) = true) then
//				li_curr_orderby = 0
//			end if
//			long ll_record_id
//			ll_record_id = dw_clicked_object.getitemnumber(row, "sns_board_specs_others_id")	
//			if((ll_empno > 0) and (ll_record_id > 0)) then
//				ls_parms = ls_curr_calllnum + "|" + string(ll_empno) + "|" + ls_empname + "|" + string(li_curr_orderby) + "|" + string(ll_record_id)
//				OpenWithParm(w_change_callnum, ls_parms)
//				ls_rtn_parms = Message.StringParm
//				if(pos(ls_rtn_parms, "ERROR") > 0) then
//					MessageBox("Notifcation","Call Number/Order by not changed. one or more errors occured! Call Administator with error. x4008")
//					bOkToUpdate = false
//				elseif(pos(ls_rtn_parms, "CANCEL") > 0) then
//					bOkToUpdate = false
//				end if
//				if(bOkToUpdate = true) then
//					dw_clicked_object.Retrieve(ll_clicked_grpid)
//					bAutoRefresh = true
//				end if
//			end if
//		else //row = 0
//			if(li_grow < li_num_rows) then
//				if(li_grow > ll_row_count) then 
//					if(ls_dwo_name = "B_INSERT_POSITION") then
//						gb_inserted_unfilled = false
//						//ll_grpid||li_grow||li_gcol||ls_hdrtext||ll_row_count
//						ls_parms = string(ll_grpid) + "|" + string(li_grow) + "|" + string(li_gcol) + "|" + ls_hdrtext + "|" + string(ll_row_count)
//						OpenWithParm(w_insert_position, ls_parms)
//						ls_rtn_parms = Message.StringParm
//						dw_clicked_object.Retrieve(ll_grpid)
//						gb_inserted_unfilled = true						
//						bAutoRefresh = true
//					end if					
//				else
//					if(ll_grpid > 0) then
//						string ls_funddept
//						string ls_groupname
//						//
//						select grpteam, funddept into :ls_groupname, :ls_funddept from sns_staffing_groups where id = :ll_grpid using sqlca;
//						//
//						string ls_row
//						string ls_col
//						ls_row = string(li_grow)
//						ls_col = string(li_gcol)
//						if(f_len_ext(ls_row) < 2) then
//							ls_row = f_lpad(ls_row, 2, "0")
//						end if
//						if(f_len_ext(ls_col) < 2) then
//							ls_col = f_lpad(ls_col, 2, "0")
//						end if
//						//insert unfilled position
//						//f_insert_unfilled_bd_specs(ls_groupname, ls_row, ls_col, ll_grpid, ls_empname, ll_empno, ls_callnum, 0, 1, 1)
//					else
//						MessageBox("Notification", "Cannot insert row. Max number postions already used.")
//					end if
//				end if
//			else
//				MessageBox("Notification", "Cannot insert row. Max number postions already used.")
//			end if
//		end if //row > 0
//		if(bAutoRefresh = true) then
//			ls_refresh_grpids = "," + string(ll_clicked_grpid) + ","
//			sle_refresh_grpids.text = ls_refresh_grpids
//			TriggerEvent(pb_refresh, Clicked!)							
//		end if
//	end if //IsNull dw_clicked_object check
//	
//end if //bIsDragging = true
//
end event

event doubleclicked;//string ls_dwo_name
//ls_dwo_name = dwo.name
//integer li_stop
////======================= 
//long ll_clicked_grpid
//ll_clicked_grpid = 1
////=======================
//boolean bAutoRefresh
//bAutoRefresh = true
//datawindow dw_clicked_object
//dw_clicked_object = f_getDwobjectByGrpid(ll_clicked_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//if(IsNull(dw_clicked_object) = false) then
//if(ls_dwo_name = "sns_board_specs_others_issuper") then  //old = sns_employees_super_lvl
//		integer li_super_lvl 
//		long ll_empno
//		ll_empno = dw_clicked_object.getitemnumber(row, 'sns_board_specs_others_empno') //old = sns_staffing_grps_positions2_assgnd_empno
//		li_super_lvl = dw_clicked_object.getitemnumber(row, 'sns_board_specs_others_issuper')
//		if(li_super_lvl = 1) then
//			dw_clicked_object.setitem(row, 'sns_board_specs_others_issuper', 0)
//			f_set_employees_super_lvl(0, ll_empno, ref sqlca)
//		else
//			dw_clicked_object.setitem(row, 'sns_board_specs_others_issuper', 1)
//			f_set_employees_super_lvl(1, ll_empno, ref sqlca)		
//		end if
//	else
//		if(ls_dwo_name = "datawindow") then
//			//=======================================================
//			//fm.io_employee
//			long ll_fm_empno
//			string ls_fm_empname
//			integer li_fm_fund
//			long ll_fm_dept
//			string ls_fm_email
//			string ls_fm_title
//			long ll_fm_super_empno
//			integer li_fm_fte_status
//			long ll_fm_jobcode
//			string ls_fm_positionid
//			ll_fm_empno = 0
//			ls_fm_empname = ""
//			li_fm_fund = 0
//			ll_fm_dept = 0
//			ls_fm_email = ""
//			ls_fm_title = ""
//			ll_fm_super_empno = 0
//			li_fm_fte_status = 0
//			ll_fm_jobcode = 0
//			ls_fm_positionid = ""
//			//sns_employees
//			long ll_emp_id
//			long ll_emp_empno
//			string ls_emp_empname
//			long ll_emp_grpid
//			integer li_emp_fund
//			long ll_emp_dept
//			string ls_emp_email
//			string ls_emp_title
//			long ll_emp_super_empno
//			decimal dec_emp_fte
//			string ls_emp_jobcode
//			string ls_emp_positionid
//			string ls_emp_depttitle
//			string ls_emp_jobtitle
//			string ls_emp_supervisor
//			string ls_emp_grps_resp     //KILLIAN-NANCY [13517]
//			ll_emp_id = 0
//			ll_emp_empno = 0
//			ls_emp_empname = ""
//			ll_emp_grpid  = 0
//			li_emp_fund = 0
//			ll_emp_dept = 0
//			ls_emp_email = ""
//			ls_emp_title = ""
//			ll_emp_super_empno = 0
//			dec_emp_fte = 0.0
//			ls_emp_jobcode = ""
//			ls_emp_positionid = ""
//			ls_emp_depttitle = ""
//			ls_emp_jobtitle = ""
//			ls_emp_supervisor = ""
//			ls_emp_grps_resp = ""
//			//sns_staffing_grps_positions2
//			long ll_pos_id
//			long ll_pos_assgnd_empno
//			long ll_pos_grpid
//			string ls_pos_callnum
//			string ls_pos_funddept
//			string ls_pos_addinfo
//			string ls_pos_jobtitle
//			string ls_pos_jobcode
//			string ls_pos_positionid
//			long ll_pos_xrefid		
//			ll_pos_id = 0
//			ll_pos_assgnd_empno = 0
//			ll_pos_grpid = 0
//			ls_pos_callnum = ""
//			ls_pos_funddept = ""
//			ls_pos_addinfo = ""
//			ls_pos_jobtitle = ""
//			ls_pos_jobcode = ""
//			ls_pos_positionid = ""
//			ll_pos_xrefid = 0		
//			//=======================================================
//			integer li_rtn_result		
//			//add employee
//			long ll_grpteamid_grpid
//			string ls_groupname
//			ls_groupname = dw_clicked_object.getitemstring(1, "grpteamid")
//			string ls_grpid
//			ls_grpid = f_extract_bracketed_item(ls_groupname, "{", "}", true)
//			ll_grpteamid_grpid = f_stol(ls_grpid)
//			long ll_to_grpid
//			ll_to_grpid = ll_clicked_grpid
//			if(ll_to_grpid > 0) then
//				string ls_messageparm
//				ls_messageparm = string(ll_clicked_grpid)
//				OpenWithParm(w_add_user, ls_messageparm)
//				string ls_selected_username
//				ls_selected_username = Message.StringParm
//				if(f_len_ext(ls_selected_username) > 0) then
//					li_rtn_result = MessageBox("Notification","Do you want to add User " + ls_selected_username + " to group " + ls_groupname, QUESTION!, YESNO!)
//					if(li_rtn_result = 1) then
//						long ll_add_user_empno
//						ll_add_user_empno = 0
//						string ls_selected_empno
//						ls_selected_empno = f_extract_bracketed_item(ls_selected_username, "[", "]", true)
//						ll_add_user_empno = f_stol(ls_selected_empno)
//						if(ll_add_user_empno > 0) then
//							string ls_selected_empname
//							int li_epos
//							li_epos = pos(ls_selected_username, "[")
//							if(li_epos > 0) then
//								ls_selected_empname = trim(mid(ls_selected_username, 1, (li_epos - 1)))
//							end if
//							//===================================
//							//*** INSERT INTO DRAG_TO GROUP ***
//							//===================================
//							string ls_to_callnum
//							integer li_num_updates
//							string ls_from_empname
//							long ll_from_bs_specs_others_exists_id
//							long ll_from_emp_exists_id
//							long ll_from_empno
//							string ls_from_positionid
//							string ls_sqlerrtext
//							string lsa_dd_errors[]
//							integer li_rtn_value
//							string ls_from_funddept
//							string ls_from_jobcode
//							string ls_from_jobtitle
//							string ls_error
//							string ls_to_positionid
//							integer li_commit_rtn_value
//							string ls_sql_error
//							long ll_xrefmods_ppos2recid
//							long ll_xref_exists_id
//							long ll_xrefmods_exists_id
//							long ll_emp_exists_id	
//							boolean bInsertNewUser
//							bInsertNewUser = false
//							string lsa_avail_callnums[]
//							integer li_num_avail_callnums
//							string ls_csql
//							//old code... ls_csql = "select callnum from sns_board_specs_others where grpid = " + string(ll_to_grpid) + " and empname is null and callnum is not null order by nrow, ncol"
//							ls_csql = "select callnum from sns_board_specs_others where grpid = " + string(ll_to_grpid) + " and instr(empname,'UNFILLED') > 0 and callnum is not null order by callnum"
//							li_num_avail_callnums = f_app_ds_populate_string_array_by_sql(ref lsa_avail_callnums, ls_csql, gi_pad_len, gs_delim, gb_compress, ref sqlca)
//							if(li_num_avail_callnums = 1) then
//								li_rtn_result = MessageBox("Notification","Only one available callnum position available [" + lsa_avail_callnums[1] + "]. Assign new user to that callnum?", QUESTION!, YESNO!)
//								if(li_rtn_result = 1) then
//									ls_to_callnum = lsa_avail_callnums[1]
//									bInsertNewUser = true
//								end if
//							elseif(li_num_avail_callnums > 1) then
//								integer li_cloop
//								string ls_callnums
//								for li_cloop = 1 to li_num_avail_callnums
//									ls_callnums += lsa_avail_callnums[li_cloop]
//									ls_callnums += ","
//								next
//								ls_callnums = f_trim_trailing_char(ls_callnums, ",")
//								string ls_selected_callnum
//								ls_selected_callnum = ""
//								ls_messageparm = ls_callnums
//								OpenWithParm(w_callnum_select, ls_messageparm)
//								ls_selected_callnum = Message.StringParm
//								if(f_len_ext(ls_selected_callnum) > 0) then
//									ls_to_callnum = ls_selected_callnum
//									bInsertNewUser = true							
//								end if
//							else
//								li_rtn_result = MessageBox("Notification","There are no available unfilled positions with call numbers. Add new user anyway?", QUESTION!, YESNO!)
//								if(li_rtn_result = 1) then
//									ls_to_callnum = "NEW"
//									bInsertNewUser = true
//								end if
//							end if
//							if(bInsertNewUser = true) then
//								string ls_selected_username_empno
//								ls_selected_username_empno = f_extract_bracketed_item(ls_selected_username, "[", "]", true)
//								ll_fm_empno = f_stol(ls_selected_username_empno)
//								if(ll_fm_empno > 0) then
//									//fm.io_employee
//									select empname, fund, dept, email, title, super_empno, fte_status, job_code, position_id into :ls_fm_empname,:li_fm_fund,:ll_fm_dept,:ls_fm_email,
//									:ls_fm_title, :ll_fm_super_empno, :li_fm_fte_status, :ll_fm_jobcode, :ls_fm_positionid
//									from fm.io_employee where empno = :ll_fm_empno
//									using sqlca;
//									//								
//									//sns_employees
//									select id, empno, empname, grpid, fund, dept, email, title, super_empno, fte, jobcode, positionid, depttitle, jobtitle, supervisor, grps_resp 
//									into :ll_emp_id, :ll_emp_empno, :ls_emp_empname, :ll_emp_grpid, :li_emp_fund, :ll_emp_dept, :ls_emp_email, :ls_emp_title, :ll_emp_super_empno, 
//									:dec_emp_fte, :ls_emp_jobcode, :ls_emp_positionid, :ls_emp_depttitle, :ls_emp_jobtitle, :ls_emp_supervisor, :ls_emp_grps_resp	
//									from sns_employees where empno = :ll_fm_empno
//									using sqlca;
//									//
//									//sns_staffing_grps_positions2
//									select id, assgnd_empno, grpid, callnum, funddept, addinfo, jobtitle, jobcode, positionid, xrefid 
//									into :ll_pos_id, :ll_pos_assgnd_empno, :ll_pos_grpid, :ls_pos_callnum, :ls_pos_funddept, :ls_pos_addinfo, :ls_pos_jobtitle, :ls_pos_jobcode,
//									:ls_pos_positionid, :ll_pos_xrefid
//									from sns_staffing_grps_positions2 where assgnd_empno = :ll_fm_empno
//									using sqlca;
//									
//									//       ls_fm_empname  ll_emp_id ll_pos_id
//									//       HOLMAN, CHLOE  316       46
//									//       -------------  --------- ---------
//									//CASE#1 CANNOT BE BLANK  > 0       >0      
//									//CASE#2 CANNOT BE BLANK  > 0       =0
//									//-----------------------------------------
//									//
//									if((f_len_ext(ls_fm_empname) > 0) and (ll_emp_id > 0) and (ll_pos_id > 0)) then
//										ls_pos_funddept = string(li_fm_fund) + "-" + string(ll_fm_dept)
//										//CASE#1
//										// 
//										integer li_num_avail_callnums_found
//										string lsa_avail_unused_callnums[]
//										li_num_avail_callnums_found = f_get_avail_group_callnums(ll_clicked_grpid, ref lsa_avail_unused_callnums, ref sqlca)
//										if(li_num_avail_callnums_found > 0) then
//											string ls_callnum_to_assign
//											ls_callnum_to_assign = ""
//											if(li_num_avail_callnums_found > 1) then
//												string ls_select_from_callnums
//												ls_select_from_callnums = f_create_string_from_array(lsa_avail_unused_callnums, ",")
//												ls_messageparm = ls_select_from_callnums
//												OpenWithParm(w_callnum_select, ls_messageparm)
//												ls_callnum_to_assign = Message.StringParm
//											else
//												ls_callnum_to_assign = lsa_avail_unused_callnums[1]
//											end if
//											if(f_len_ext(ls_callnum_to_assign) > 0) then
//												
//												li_rtn_result = MessageBox("Notification","Found available callnum " + ls_callnum_to_assign + ". Assign user to this callnum?", QUESTION!, YESNO!)
//												if(li_rtn_result = 1) then
//													ls_pos_addinfo = ls_callnum_to_assign
//													//update tables
//													// SNS_STAFFING_GRPS_POSTIIONS2
//													// SNS_POS_XREF
//													// SNS_POS_XREF_MODS
//													ls_pos_addinfo = f_replace_string_in_string(ls_pos_addinfo, "1J", "")
//													ls_pos_addinfo = trim(ls_pos_addinfo)
//													integer li_pos_rtn_value
//													string ls_pos_rtn_error
//													//if ll_pos_id = 0 then CASE2 will be supported by following function
//													//                 f_insert_pos2_support_table_records(ll_grpid, ls_callnum, ll_empno, ls_funddept, ls_addinfo, ls_vehinfo, ls_positionid, ls_jobcode, ls_jobtitle, dec_basepay, b_modify_positions2_table, ref ls_error, ref sqlca)
//													li_pos_rtn_value = f_insert_pos2_support_table_records(ll_clicked_grpid, ls_callnum_to_assign, ll_fm_empno, ls_pos_funddept, ls_pos_addinfo, ".", ls_fm_positionid, string(ll_fm_jobcode), ls_fm_title, 0.0, true, ls_pos_rtn_error, ref sqlca)
//													if(li_pos_rtn_value = 1) then
//														//update SNS_EMPLOYEES
//														string ls_fm_jobcode
//														ls_fm_jobcode = string(ls_fm_jobcode)
//														string ls_cost_center_descr
//														long ll_grp_super_empno
//														long ll_root_grp_super_empno
//														//
//														select grp_super_empno, root_grp_super_empno into :ll_grp_super_empno, :ll_root_grp_super_empno from sns_staffing_groups where id = :ll_clicked_grpid using sqlca;
//														//
//														select descr into :ls_cost_center_descr from sns_ucso_cost_centers where fund = :li_fm_fund and dept = :ll_fm_dept using sqlca;
//														//
//														select empname into :ls_emp_supervisor from sns_employees where empno = :ll_grp_super_empno using sqlca;
//														//
//														select empname into :ls_emp_grps_resp from sns_employees where empno = :ll_root_grp_super_empno using sqlca;
//														//
//														ls_emp_grps_resp = trim(ls_emp_grps_resp) + "     [" + string(ll_root_grp_super_empno) + "]"
//														//			
//														update sns_employees set grpid = :ll_clicked_grpid, fund = :li_fm_fund, dept = :ll_fm_dept, title = :ls_fm_title, jobcode = :ls_fm_jobcode,
//														positionid = trim(upper(:ls_fm_positionid)), depttitle = :ls_cost_center_descr, jobtitle = :ls_fm_title, supervisor = :ls_emp_supervisor,
//														super_empno = :ll_grp_super_empno, grps_resp = :ls_emp_grps_resp
//														where id = :ll_emp_id
//														using sqlca;
//														// 
//														if(sqlca.sqlcode <> -1) then
//															//
//															commit using sqlca;
//															//
//															//update tables
//															// sns_board_specs_others
//															// sns_bd_others_layout_specs														
//															
//															
//															
//														else
//															ls_sqlerrtext = sqlca.sqlerrtext
//															//
//															rollback using sqlca;
//															//
//															ls_sqlerrtext = "update to sns_board_specs_others error=" + ls_sqlerrtext
//															f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)													
//														end if
//													
//													
//													else
//														MessageBox("Notifications","Failed to update positions support tables.")
//													end if												
//												end if
//											else
//												MessageBox("Notification","Callnum must not be blank.")
//											end if
//										else
//											MessageBox("Notifications","All defined callnums are already assigned. You must unassign employee to free up a callnum. Then try again.");
//										end if
//									
//									end if
//									
//								end if
//							
//								string ls_to_addinfo
//								int li_apos
//								li_apos = pos(ls_to_callnum, "J")
//								if(li_apos > 0) then
//									ls_to_addinfo = trim(mid(ls_to_callnum, (li_apos + 1)))
//								else
//									ls_to_addinfo = ls_to_callnum
//								end if
//								//to add user empno must not exist in sns_staffing_grps_positions2 table
//								long ll_pos_assgnd_empno_exists_id
//								//
//								select id into :ll_pos_assgnd_empno_exists_id from sns_staffing_grps_positions2 where assgnd_empno = :ll_add_user_empno using sqlca;
//								//
//								li_rtn_result = 0
//								if(ll_pos_assgnd_empno_exists_id > 0) then
//									li_rtn_result = MessageBox("Notification","Employee " + ls_selected_empname + " already Exist/Assigned in the positions table. Move Anyway?", QUESTION!, YESNO!, 1)
//								end if
//								boolean bOkToMove
//								if(li_rtn_result = 0) then
//									bOkToMove = false
//								elseif(li_rtn_result = 1) then
//									bOkToMove = true
//								end if
//								if((ll_pos_assgnd_empno_exists_id = 0) or (bOkToMove = true)) then
//								
//									li_num_updates = 0
//									long ll_to_bs_specs_others_exists_id
//									ll_to_bs_specs_others_exists_id = 0
//									//determine next avail call num to add user to
//									//
//									select id into :ll_to_bs_specs_others_exists_id from sns_board_specs_others where callnum = :ls_to_callnum and  grpid = :ll_to_grpid using sqlca;
//									//
//									if((ll_to_bs_specs_others_exists_id > 0) and (ll_to_grpid > 0)) then
//										//
//										select callnum into :ls_to_callnum from sns_board_specs_others where id = :ll_to_bs_specs_others_exists_id using sqlca;
//										//
//										if(bOkToMove = false) then
//										
//											update sns_board_specs_others set empname = :ls_selected_empname, empno = :ll_add_user_empno, positionid = ''
//											where id = :ll_to_bs_specs_others_exists_id
//											using sqlca;
//											//
//											if(sqlca.sqlcode <> -1) then
//												//
//												commit using sqlca;
//												//
//												li_num_updates++
//											else
//												ls_sqlerrtext = sqlca.sqlerrtext
//												//
//												rollback using sqlca;
//												//
//												ls_sqlerrtext = "update to sns_board_specs_others error=" + ls_sqlerrtext
//												f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//											end if								
//											li_rtn_value = 0
//											//  0 = successful
//											// -1 = no action taken
//											// -2 = li_assgnd_empno_count > 0
//											// -3 = li_positionid_count > 0
//											// -4 = assgnd_empno not found in pos2
//											// -5 = ll_pos2idshort invalid
//											// -6 = tr_sqlca sqlcode = -1 sns_staffing_grps_positions2
//											// -7 = tr_sqlca sqlcode = -1 sns_pos_xref
//											// -8 = tr_sqlca sqlcode = -1 sns_pos_xref_mods
//											// -9 = tr_sqlca sqlcode = -1 sns_group_ids
//											//-10 = ll_pos2idshort <0 or > 90000 
//											
//											//ll_to_grpid = 3
//											//ls_to_callnum = 1j132
//											//ll_add_user_empno = 17545
//											//ls_from_funddept = 
//											//ls_to_addinfo =
//											//ls_from_positionid =
//											//ls_from_jobcode =
//											//ls_from_jobtitle =
//											
//											//
//											select to_char(fund) || '-' || to_char(dept), positionid, jobcode, jobtitle into :ls_from_funddept, :ls_from_positionid, :ls_from_jobcode, :ls_from_jobtitle
//											from sns_employees where empno = :ll_add_user_empno 
//											using sqlca;
//											//
//											if((IsNull(ls_from_funddept) = true) or (IsNull(ls_from_positionid) = true) or (IsNull(ls_from_jobcode) = true) or (IsNull(ls_from_jobtitle) = true)) then
//												//retrieve fm.io_employee data
//												//
//												select to_char(fund) || '-' || to_char(dept), position_id, job_code, title into :ls_from_funddept, :ls_from_positionid, :ls_from_jobcode, :ls_from_jobtitle
//												from fm.io_employee where empno = :ll_add_user_empno 
//												using sqlca;
//												//
//												if(IsNull(ls_from_funddept) = true) then
//													ls_from_funddept = ""
//												end if
//												if(IsNull(ls_from_jobcode) = true) then
//													ls_from_jobcode = ""
//												end if
//												if(IsNull(ls_from_jobtitle) = true) then
//													ls_from_jobtitle = ""
//												end if
//											end if
//											ls_from_positionid = trim(upper(ls_from_positionid))
//											ls_from_jobtitle = trim(upper(ls_from_jobtitle))
//											
//											li_stop = 0
//	
//											if((IsNull(ls_from_funddept) = false) and (IsNull(ls_from_positionid) = false) and (IsNull(ls_from_jobcode) = false) and (IsNull(ls_from_jobtitle) = false)) then
//	
//												li_rtn_value = f_insert_pos2_support_table_records(ll_to_grpid, ls_to_callnum, ll_add_user_empno, ls_from_funddept, ls_to_addinfo, &
//																													".", ls_from_positionid, ls_from_jobcode, ls_from_jobtitle, 0.0, true, &
//																													ref ls_error, ref sqlca)
//												if(li_rtn_value >= 1) then
//													if(ll_from_emp_exists_id > 0) then
//														//update sns_board_specs_others positionid
//														//
//														select positionid into :ls_to_positionid from sns_staffing_grps_positions2 where assgnd_empno = :ll_add_user_empno using sqlca;
//														//
//														update sns_board_specs_others set positionid = :ls_to_positionid where id = :ll_to_bs_specs_others_exists_id using sqlca;
//														//
//													
//														// - update sns_employees set positionid = "", title = "", jobcode = "", jobtitle = "", supervisor = 0, grps_resp = "", grpid = 0 where id = ll_from_emp_exists_id
//														update sns_employees set positionid = :ls_to_positionid, title = :ls_from_jobtitle, jobcode = :ls_from_jobcode, grpid = :ll_to_grpid
//														where id = :ll_add_user_empno
//														using sqlca;
//														//
//														if(sqlca.sqlcode <> -1) then
//															//
//															commit using sqlca;
//															//
//															li_num_updates++
//														else
//															ls_sqlerrtext = sqlca.sqlerrtext
//															//
//															rollback using sqlca;
//															//
//															ls_sqlerrtext = "update to sns_employees columns error=" + ls_sqlerrtext
//															f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//															bAutoRefresh = false
//														end if										
//														if((ll_to_grpid > 0) and (li_num_updates >= 2)) then
//															long ll_grps_resp
//															ll_grp_super_empno = 0
//															ll_grps_resp = 0
//															ll_grp_super_empno = 0
//															//
//															select grp_super_empno, root_grp_super_empno into :ll_grp_super_empno, :ll_grps_resp from sns_staffing_groups where id = :ll_to_grpid using sqlca;
//															//
//															update sns_employees set grps_resp = :ll_grps_resp, supervisor = :ll_grp_super_empno  where id = :ll_add_user_empno using sqlca;
//															//
//															if(sqlca.sqlcode <> -1) then
//																//
//																commit using sqlca;
//																//
//																li_num_updates++
//															else
//																ls_sqlerrtext = sqlca.sqlerrtext
//																//
//																rollback using sqlca;
//																//
//																ls_sqlerrtext = "update to sns_employees grps_resp,supervisor error=" + ls_sqlerrtext
//																f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//																bAutoRefresh = false
//															end if											
//														end if //ll_to_grpid > 0
//													end if//ll_from_emp_exists_id > 0
//												end if //li_rtn_value = 0
//											else
//												string ls_msg_text
//												ls_msg_text = "One or more Null Values. Cannot add new user."
//												if(ls_to_positionid = "") or (IsNull(ls_to_positionid) = true) then
//													ls_msg_text += " Positionid is blank!"
//												end if
//												bAutoRefresh = false
//												MessageBox("Notification",ls_msg_text)
//											end if //check for IsNull for funddept, positionid, jobcode, jobtitle
//										else
//											//bOkToMove = true
//											//move employee from positions2 grpid to the ll_clicked_grpid
//											// sns_staffing_grps_positions2
//											//  -change grpid to the move to grpid
//											//  -change callnum and addinfo to new callnum
//											// sns_pos_xref
//											//  -change grpid to the move to group grpid
//											//  -change spunitno to new callnum
//											// sns_pos_xref_mods
//											//  -change pgrpid to the move to group grpid
//											//  -change pspunitno to new callnum
//											// sns_employees
//											//  -update the grpid to move to group grpid
//											// sns_board_specs_others
//											//  -update empname
//											//  -       empno
//											//  -       positionid
//											//  - where callnum = selected callnum
//											//example: move CARLE-JOSEPH from SPECIAL VICTIMS UNIT TO EM2
//											//ll_add_user_empno = 16858
//											//ll_clicked_grpid = 9
//											//ls_to_callnum = "1J2550"
//											//ll_to_bs_specs_others_exists_id = 88
//											//ls_groupname = "EAGLE MOUNTAION 2 {9}"
//											//ls_selected_callnum = "1J2550"
//											//ls_selected_empname = "CARLE-JOSEPH"
//											//ls_selected_empno = 16858
//											//ll_pos_assgnd_empno_exists_id = 116
//											string ls_new_funddept
//											integer li_fund
//											long ll_dept
//											integer li_prev_fund
//											long ll_prev_dept
//											string ls_pos
//											if(ll_pos_assgnd_empno_exists_id > 0) then
//												//
//												select positionid,jobcode,jobtitle into :ls_pos_positionid, :ls_pos_jobcode, :ls_pos_jobtitle from sns_staffing_grps_positions2 where id = :ll_pos_assgnd_empno_exists_id using sqlca;
//												//
//												select funddept into :ls_new_funddept from sns_staffing_groups where id = :ll_clicked_grpid using sqlca;
//												//
//												int li_tpos
//												li_tpos = pos(ls_new_funddept, "-")
//												if(li_tpos > 0) then
//													li_fund = f_stoi(trim(mid(ls_new_funddept, 1, (li_tpos - 1))))
//													ll_dept = f_stol(trim(mid(ls_new_funddept, (li_tpos + 1))))
//												end if
//												ll_pos_xrefid = 0
//												ll_xrefmods_ppos2recid = 0
//												//
//												select xrefid into :ll_pos_xrefid from sns_staffing_grps_positions2 where id = :ll_pos_assgnd_empno_exists_id using sqlca;
//												//
//												if(ll_pos_xrefid > 0) then
//													ll_xrefmods_ppos2recid = ll_pos_assgnd_empno_exists_id
//													if(ll_xrefmods_ppos2recid > 0) then
//														//
//														select id into :ll_xrefmods_exists_id from sns_pos_xref_mods where ppos2recid = :ll_xrefmods_ppos2recid using sqlca;
//														//
//													end if
//												end if
//												//
//												select id into :ll_emp_exists_id from sns_employees where empno = :ll_add_user_empno using sqlca;
//												//
//												update sns_staffing_grps_positions2 set grpid = :ll_clicked_grpid, callnum = :ls_to_callnum, addinfo = :ls_to_addinfo, funddept = :ls_new_funddept where id = :ll_pos_assgnd_empno_exists_id using sqlca;
//												//
//												li_commit_rtn_value = f_commit_rollback_record(ref sqlca);
//												if(li_commit_rtn_value = 1) then
//													if(ll_pos_xrefid > 0) then
//														//
//														update sns_pos_xref set grpid = :ll_clicked_grpid, spunitno = :ls_to_callnum where id = :ll_pos_xrefid using sqlca;
//														//
//														li_commit_rtn_value = f_commit_rollback_record(ref sqlca);
//														if(li_commit_rtn_value = 1) then
//															//
//															if(ll_xrefmods_exists_id > 0) then
//																//
//																update sns_pos_xref_mods set pgrpid = :ll_clicked_grpid, pspunitno = :ls_to_callnum where id = :ll_xrefmods_exists_id using sqlca;
//																//
//																li_commit_rtn_value = f_commit_rollback_record(ref sqlca);
//																if(li_commit_rtn_value = 1) then
//																	//do nothing
//																else
//																	ls_sql_error = "Failed to update position xref mods table. Contact administrator x4008."
//																end if
//															end if
//														else
//															ls_sql_error = "Failed to update position xref table. Contact administrator x4008."
//														end if
//													
//													end if
//												else	
//													ls_sql_error = "Failed to update positions table. Contact administrator x4008."
//												end if
//												if(f_len_ext(ls_sql_error) = 0) then
//													if(ll_emp_exists_id > 0) then
//														//
//														update sns_employees set prevfund = fund, prevdept = dept where id = :ll_emp_exists_id using sqlca;
//														//
//														update sns_employees set grpid = :ll_clicked_grpid, fund = :li_fund, dept = :ll_dept, jobcode = :ls_pos_jobcode, jobtitle = :ls_pos_jobtitle
//														where id = :ll_emp_exists_id 
//														using sqlca;
//														//
//														li_commit_rtn_value = f_commit_rollback_record(ref sqlca);
//														if(li_commit_rtn_value = 1) then														
//															//do nothing
//														else
//															ls_sql_error = "Failed to update employees table. 	Contact administrator x4008."												
//														end if
//													end if
//												end if
//												if(f_len_ext(ls_sql_error) = 0) then
//													//
//													update sns_board_specs_others set empname = :ls_selected_empname, empno = :ll_add_user_empno, positionid = :ls_pos_positionid
//													where id = :ll_to_bs_specs_others_exists_id
//													using sqlca;
//													//
//													li_commit_rtn_value = f_commit_rollback_record(ref sqlca);
//													if(li_commit_rtn_value = 1) then
//														//do nothing
//													else
//														ls_sql_error = "Failed to update board specs table. Contact administrator x4008."												
//													end if
//												end if
//												if(f_len_ext(ls_sql_error) = 0) then
//													MessageBox("Notification", "Successfully moved employee " + ls_selected_empname + " to " + ls_groupname)
//												else
//													MessageBox("Notification",ls_sql_error,Exclamation!)
//												end if
//											end if
//										end if
//									else
//										//insert into tables
//										MessageBox("Notification","insert into table code not yet coded!")
//										
////										integer li_func_rtn_value
////										//collect to table variables
////										if(ll_add_user_empno > 0) then
////											long ll_pos_exists_id
////											long ll_pos_xrefid
////											long ll_pos_funddept
////											string ls_pos_funddept
////											string ls_pos_addinfo
////											string ls_pos_jobcode
////											string ls_pos_jobtitle
////											long ll_xrefmods_ppos2recid
////											long ll_xref_exists_id
////											long ll_xrefmods_exists_id
////											long ll_emp_exists_id
////											long ll_bs_specs_others_exists_id
////											//
////											select id, xrefid, funddept, addinfo, jobcode, jobtitle into :ll_pos_exists_id, :ll_pos_xrefid, :ls_pos_funddept, :ls_pos_addinfo, :ls_pos_jobcode, :ls_pos_jobtitle from sns_staffing_grps_positions2 where assgnd_empno = :ll_add_user_empno using sqlca;
////											//
////											if(ll_pos_exists_id > 0) then
////												ll_xrefmods_ppos2recid = ll_pos_exists_id
////											else
////												
////											end if
////											//
////											select id into :ll_xref_exists_id from sns_pos_xref where empno = :ll_add_user_empno using sqlca;
////											//
////											select id into :ll_xrefmods_exists_id from sns_pos_xref_mods where pempno = :ll_add_user_empno using sqlca;
////											//
////											select id into :ll_emp_exists_id from sns_employees where empno = :ll_add_user_empno using sqlca;
////											//
////											select id into :ll_bs_specs_others_exists_id from sns_board_specs_others where ltrim(rtrim(upper(empname))) = :ls_selected_empname and empno = :ll_add_user_empno using sqlca;
////											//	
////											if(ll_pos_exists_id = 0) then
////												//insert into sns_staffing_grps_positions2
////												//li_func_rtn_value = f_insert_pos2_support_table_records(
////												//ll_clicked_grpid, 
////												//ls_callnum, 
////												//ll_empno, 
////												//ls_funddept, 
////												//ls_addinfo, 
////												//ls_vehinfo, 
////												//ls_positionid, 
////												//ls_jobcode, 
////												//ls_jobtitle, 
////												//dec_basepay, 
////												//b_modify_positions2_table, 
////												//ref ls_error, ref sqlca)
////											end if
////											
////											
////											
////											
////											
////											
////											
////										end if
//										li_stop = 0
//									end if //ll_from_bs_specs_others_exists_id > 0											
//								else
//									MessageBox("Notification","Cannot add Employee " + ls_selected_empname + ". They already Exist/Assigned in the positions table in a different group.")
//								end if
//							else
//								//bInsertNewUser = false code block
//								bAutoRefresh = false
//								MessageBox("Notification","One or more callnum preset code block failed!")
//							end if //bInsertNewUser = true
//							if(bAutoRefresh = true) then
//								string ls_refresh_grpids
//								ls_refresh_grpids = "," + string(ll_clicked_grpid) + ","
//								sle_refresh_grpids.text = ls_refresh_grpids
//								TriggerEvent(pb_refresh, Clicked!)							
//							end if
//						end if //ll_add_user_empno > 0
//					end if
//				end if
//			end if //ll_to_grpid > 0
//		end if
//	end if 
//end if	
//
end event

event dragdrop;//if(bIsDragging = true) then
//	integer li_stop
//	sle_drag_drop_row.text = string(row)
//	//=======================
//	long ll_dragdrop_grpid
//	ll_dragdrop_grpid = 1
//	//=======================
//	datawindow dw_to_object
//	dw_to_object = f_getDwobjectByGrpid(ll_dragdrop_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//	datawindow dw_from_object
//	long ll_from_grpid
//	ll_from_grpid = f_stol(sle_drag_from_grpid.text)
//	if(ll_from_grpid > 0) then	
//		dw_from_object = f_getDwobjectByGrpid(ll_from_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//	end if
//	datawindow dw_unassigned_object
//	dw_unassigned_object = f_getDwobjectByGrpid(131, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//	if((IsValid(dw_from_object) = true) and (IsValid(dw_to_object) = true)) then
//		string ls_errors
//		string ls_drag_from_positionid
//		string ls_dwo_name
//		long ll_to_grpid
//		string ls_grpid		
//		string ls_empname
//		long ll_empno
//		string ls_callnum
//		long ll_row_count
//		long ll_num_avail_positions
//		integer li_to_grow
//		integer li_to_gcol	
//		string ls_from_hdrtext
//		string ls_from_empname
//		long ll_from_row
//		string ls_to_hdrtext
//		string ls_to_empname
//		long ll_to_row
//		string ls_mode
//		long ll_from_empno
//		long ll_to_empno
//		long ll_to_rowcount
//		string ls_from_text
//		long ll_from_pos_id
//		long ll_from_xrefid
//		string ls_from_positionid
//		long ll_to_pos_id
//		long ll_to_xrefid
//		string ls_to_positionid
//		string ls_jobcode
//		string ls_jobtitle
//		string ls_funddept
//		string ls_addinfo
//		string ls_vehnum
//		integer li_rtn_value
//		string ls_error
//		string ls_groupname
//		integer li_case_num
//		integer li_active
//		integer li_issuper
//		integer li_isunfilled
//		integer li_pos2idshort
//		string ls_status
//		long ll_pid
//		integer li_remins_rtn
//		string ls_row
//		string ls_col
//		string ls_icon_name
//		string ls_sqlerrtext
//		string ls_from_callnum
//		integer li_commit_status
//		integer li_num_dup_callnums
//		ls_errors = ""
//		ls_icon_name = sle_icon_filenanme.text 		
//		li_remins_rtn = 0
//		ll_pid = 0
//		//---------------------------------
//		ls_dwo_name = ""
//		ll_to_grpid = 0
//		ls_grpid = ""
//		ls_empname = ""
//		ll_empno = 0
//		ls_callnum = ""
//		ll_row_count = 0
//		ll_num_avail_positions = 0
//		li_to_grow = 0
//		li_to_gcol = 0
//		ls_row = ""
//		ls_col = ""
//		ls_from_callnum = ""
//		//---------------------------------
//		ls_from_callnum = sle_drag_from_callnum.text
//		ls_dwo_name = upper(dwo.name)
//		ls_drag_from_positionid = ""
//		ls_drag_from_positionid = sle_drag_from_positionid.text
//		string ls_hdrtext
//		if(row = 0) then
//			ls_hdrtext = dw_to_object.getitemstring(1, "grpteamid")	
//		else
//			ls_hdrtext = dw_to_object.getitemstring(row, "grpteamid")	
//		end if
//		ls_grpid = f_extract_bracketed_item(ls_hdrtext, "{","}", true)
//		ll_to_grpid = f_stol(ls_grpid)		
//		string ls_dragfrom_hdrtext
//		ls_dragfrom_hdrtext = sle_drag_from_hdrtext.text
//		sle_drag_drop_hdrtext.text = ls_hdrtext
//		sle_drag_drop_object.text = ls_dwo_name
//		sle_drag_drop_grpid.text = string(ll_to_grpid)
//		ll_row_count = dw_to_object.rowcount()			
//		sle_dragdrop_rowcount.text = string(ll_row_count)	
//		if(ll_to_grpid > 0) then
//			li_to_grow = f_deterGrpidRowCol(ll_to_grpid, ll_row_count, ref li_to_gcol)
//			//
//			select count(*) into :ll_num_avail_positions	from sns_board_specs_others where grpid = :ll_to_grpid using sqlca;
//			//
//			sle_num_avail_positions.text = string(ll_num_avail_positions)
//		end if		
//		sle_drag_drop_row.text = string(row)
//		sle_drag_drop_col.text = string(li_to_gcol)
////		if(ls_hdrtext = ls_dragfrom_hdrtext) then
////			if((ls_dragfrom_hdrtext = ls_hdrtext) and (ls_dwo_name = "DATAWINDOW") and (ll_dragdrop_grpid = ll_to_grpid) and (row = 0)) then
////				//just display info and cancel drag
////				sle_drag_drop_empname.text = "INSERT"
////				dw_to_object.Drag(Cancel!)
////				bIsDragging = false		
////				sle_is_dragging.text = string(bIsDragging)				
////			else
////				triggerevent(pb_cancel_dragdrop, Clicked!) //if same window as dragenter then cancel dragdrop
////			end if
////		else
//			ll_empno = 0
//			ll_to_grpid = 0	
//			//w_main.sle_drag_drop_hdrtext.text = ls_hdrtext
//			if(row > 0) then
//				ls_empname = dw_to_object.getitemstring(row, "sns_board_specs_others_empname")
//				sle_drag_drop_empname.text = ls_empname		
//				ls_callnum = dw_to_object.getitemstring(row, "sns_board_specs_others_callnum")
//				sle_drag_drop_callnum.text = ls_callnum				
//				ll_empno = dw_to_object.getitemnumber(row, "sns_board_specs_others_empno")
//				sle_drag_drop_empno.text = string(ll_empno)
//				if(ll_empno > 0) then
//				end if //ll_empno > 0
//			else
//				sle_drag_drop_empname.text = "INSERT"
//				sle_drag_drop_empno.text = string(ll_empno)
//			end if
//			dw_to_object.Drag(Cancel!)
//			bIsDragging = false	
//			//
//			ls_from_hdrtext = ""
//			ls_from_empname = ""
//			ll_from_row = 0
//			ls_to_hdrtext = ""
//			ls_to_empname = ""
//			ll_to_row = 0
//			ls_mode = ""
//			ll_from_empno = 0
//			ll_to_empno = 0
//			ll_to_rowcount = 0
//			ls_from_text = ""
//			//
//			ls_from_text = sle_drag_from_object.text
//			ls_from_hdrtext = sle_drag_from_hdrtext.text
//			ls_from_empname = sle_drag_from_empname.text
//			ll_from_row = f_stol(sle_drag_from_row.text)
//			ls_to_hdrtext = sle_drag_drop_hdrtext.text
//			ls_to_empname = sle_drag_drop_empname.text
//			ll_to_row = row
//			ll_from_grpid = f_stol(sle_drag_from_grpid.text)
//			ll_to_grpid = f_stol(sle_drag_drop_grpid.text)
//			ll_from_empno = f_stol(sle_drag_from_empno.text)
//			ll_to_empno = f_stol(sle_drag_drop_empno.text)
//			ll_to_rowcount = dw_to_object.rowcount()
//			//------------------- fix xrefids if needed --------------------------
//			ll_from_pos_id = 0
//			ll_from_xrefid = 0
//			ls_from_positionid = ""
//			ll_to_pos_id = 0
//			ll_to_xrefid = 0
//			ls_to_positionid = ""
//			//------------------------------
//			boolean bSkipInvalidDropCallnum
//			bSkipInvalidDropCallnum = false
//			if(ll_from_grpid = 131) then
//				if(ls_callnum <> ls_from_callnum) then
//					MessageBox("Notification","When dragging from the 'UNASSIGNED {131}' group and the call number is not blank, then it can only be dropped on a like '** UNFILLED **' call number. Try again please!", Exclamation!)
//					bSkipInvalidDropCallnum = true
//				end if
//			end if
//			//------------------------------
//			if(bSkipInvalidDropCallnum = false) then
//				//
//				select positionid into :ls_from_positionid from sns_staffing_grps_positions2 where assgnd_empno = :ll_from_empno using sqlca;
//				//
//				sle_drag_from_positionid.text = ls_from_positionid
//				//
//				select positionid into :ls_to_positionid from sns_staffing_grps_positions2 where assgnd_empno = :ll_to_empno using sqlca;
//				//
//				sle_drag_to_positionid.text = ls_to_positionid
//				if(f_len_ext(ls_from_positionid) >= 14) then
//					//
//					select id,xrefid into :ll_from_pos_id, :ll_from_xrefid from sns_staffing_grps_positions2 where ltrim(rtrim(upper(positionid))) = :ls_from_positionid using sqlca;
//					//
//				end if			
//				if(f_len_ext(ls_to_positionid) >= 14) then
//					//
//					select id,xrefid into :ll_to_pos_id, :ll_to_xrefid from sns_staffing_grps_positions2 where ltrim(rtrim(upper(positionid))) = :ls_to_positionid using sqlca;
//					//
//				end if
//				if(ll_from_xrefid = 0) then
//					ll_from_xrefid = f_fix_xrefid(ll_from_empno, ref sqlca)
//				end if
//				if(ll_to_xrefid = 0) then
//					ll_to_xrefid = f_fix_xrefid(ll_to_empno, ref sqlca)
//				end if
//				ls_jobcode = ""
//				ls_jobtitle = ""
//				ls_funddept = ""
//				ls_error = ""
//				if(ll_to_empno > 0) then
//					//
//					select job_code, title into :ls_jobcode, :ls_jobtitle from fm.io_employee using sqlca;
//					//
//				end if
//				//-------------------------------------------------------------------
//				ls_mode = f_deterDragDropMode(ll_to_row, ll_to_rowcount, ll_num_avail_positions, ll_from_grpid, ll_to_grpid, ll_from_empno, ll_to_empno, ls_from_empname, ls_to_empname, ls_from_hdrtext, ls_to_hdrtext)
//				sle_drag_drop_mode.text = ls_mode
//				if(f_len_ext(ls_mode) >= 4) then
//					ls_error = ""
//					ls_addinfo = "."
//					ls_vehnum = "."
//					ls_groupname = "PATROL"
//					li_case_num = 0				
//					li_active = 1
//					li_issuper = 0
//					li_isunfilled = 0
//					ls_col = string(li_to_gcol)
//					ls_row = string(li_to_grow)
//					long ll_fm_empno
//					string ls_fm_empname
//					string ls_fm_funddept
//					string ls_fm_title
//					long ll_fm_jobcode
//					string ls_fm_jobcode
//					string ls_fm_positionid
//					ll_fm_empno = 0
//					ls_fm_empname = ""
//					ls_fm_funddept = ""
//					ls_fm_title = ""
//					ll_fm_jobcode = 0
//					ls_fm_positionid = ""
//					if(ll_to_empno > 0) then
//						//
//						select empno, empname, fund || '-' || dept as funddept, title, job_code, position_id into :ll_fm_empno, :ls_fm_empname, :ls_fm_funddept, :ls_fm_title, :ll_fm_jobcode, :ls_fm_positionid
//						from fm.io_employee
//						where empno = 17117			
//						using sqlca;
//						//
//						if(ll_fm_jobcode > 0) then
//							ls_fm_funddept = string(ll_fm_jobcode)
//						end if
//					end if
//					//===========================
//					boolean bSuccessfulMove
//					boolean bSuccessfulRemove
//					boolean bSuccessfulInsert
//					string lsa_dd_errors[]				
//					//===========================
//	
//					string ls_from_funddept
//					string ls_from_addinfo
//					string ls_from_jobcode
//					string ls_from_jobtitle
//					integer li_num_deletes
//					integer li_num_updates		
//					integer li_inserted_status
//					ls_from_funddept = ""
//					ls_from_addinfo = ""
//					ls_from_jobcode = ""
//					ls_from_jobtitle = ""
//	
//					//
//					long ll_from_pos_exists_id
//					long ll_from_xref_exists_id
//					long ll_from_xrefmods_exists_id
//					long ll_from_emp_exists_id
//					long ll_from_xrefmods_ppos2recid
//					long ll_from_bs_specs_others_exists_id				
//					long ll_from_pos_xrefid
//					string ls_from_pos_funddept
//					string ls_from_pos_addinfo
//					string ls_from_pos_jobcode
//					string ls_from_pos_jobtitle
//					ll_from_pos_exists_id = 0              //used
//					ll_from_xref_exists_id = 0             
//					ll_from_xrefmods_exists_id = 0 
//					ll_from_emp_exists_id = 0 
//					ll_from_xrefmods_ppos2recid = 0        //used
//					ll_from_bs_specs_others_exists_id = 0 				
//					ll_from_pos_xrefid = 0                 //used
//					
//					ll_from_pos_xrefid = 0
//					ls_from_pos_funddept = ""              //used
//					ls_from_pos_addinfo = ""               //used
//					ls_from_pos_jobcode = ""               //used
//					ls_from_pos_jobtitle = ""              //used
//					//				
//					long ll_to_pos_exists_id
//					long ll_to_xref_exists_id
//					long ll_to_xrefmods_exists_id
//					long ll_to_emp_exists_id
//					long ll_to_xrefmods_ppos2recid
//					long ll_to_bs_specs_others_exists_id		
//					long ll_to_pos_xrefid
//					string ls_to_pos_funddept
//					string ls_to_pos_addinfo
//					string ls_to_pos_jobcode
//					string ls_to_pos_jobtitle
//					ll_to_pos_exists_id = 0                //used
//					ll_to_xref_exists_id = 0
//					ll_to_xrefmods_exists_id = 0
//					ll_to_emp_exists_id = 0
//					ll_to_xrefmods_ppos2recid = 0
//					ll_to_bs_specs_others_exists_id = 0
//					ll_to_pos_xrefid = 0                   //used
//					ls_to_pos_funddept = ""                //used
//					ls_to_pos_addinfo = ""                 //used
//					ls_to_pos_jobcode = ""                 //used
//					ls_to_pos_jobtitle = ""                //used
//					//collect from table variables
//					if(ll_from_empno > 0) then
//						//
//						select id, xrefid, funddept, addinfo, jobcode, jobtitle into :ll_from_pos_exists_id, :ll_from_pos_xrefid, :ls_from_pos_funddept, :ls_from_pos_addinfo, :ls_from_pos_jobcode, :ls_from_pos_jobtitle from sns_staffing_grps_positions2 where assgnd_empno = :ll_from_empno using sqlca;
//						//
//						if(ll_from_pos_exists_id > 0) then
//							ll_from_xrefmods_ppos2recid = ll_from_pos_exists_id
//						end if
//						select id into :ll_from_xref_exists_id from sns_pos_xref where empno = :ll_from_empno using sqlca;
//						//
//						select id into :ll_from_xrefmods_exists_id from sns_pos_xref_mods where pempno = :ll_from_empno using sqlca;
//						//
//						select id into :ll_from_emp_exists_id from sns_employees where empno = :ll_from_empno using sqlca;
//						//
//						select id into :ll_from_bs_specs_others_exists_id from sns_board_specs_others where ltrim(rtrim(upper(empname))) = :ls_from_empname and empno = :ll_from_empno using sqlca;
//						//
//					end if
//					if((ll_from_pos_exists_id = 0) and (ll_from_pos_xrefid = 0) and (ll_from_bs_specs_others_exists_id = 0)) then
//						if(f_len_ext(ls_from_positionid) > 0) then
//							//
//							select id, xrefid into :ll_from_pos_exists_id, :ll_from_pos_xrefid from sns_staffing_grps_positions2 where ltrim(rtrim(upper(positionid))) = :ls_from_positionid using sqlca;
//							//
//							if(ll_from_pos_exists_id > 0) then
//								ll_from_xrefmods_ppos2recid = ll_from_pos_exists_id
//								//
//								select id into :ll_from_xrefmods_exists_id from sns_pos_xref_mods where ppos2recid = :ll_from_pos_exists_id using sqlca;
//								//
//							end if
//							if((ll_from_xref_exists_id = 0) and (ll_from_pos_xrefid > 0)) then
//								//
//								select id into :ll_from_xref_exists_id from sns_pos_xref where id = :ll_from_pos_xrefid using sqlca;
//							end if
//						end if
//						if((ll_from_grpid > 0) and (f_len_ext(ls_callnum) > 0)) then
//							//
//							select id into :ll_from_bs_specs_others_exists_id from sns_board_specs_others where grpid = :ll_from_grpid and callnum = :ls_from_callnum using sqlca;
//							//
//						end if
//					end if					
//					
//					//collect to table variables
//					if(ll_to_empno > 0) then
//						//
//						select id, xrefid, funddept, addinfo, jobcode, jobtitle into :ll_to_pos_exists_id, :ll_to_pos_xrefid, :ls_to_pos_funddept, :ls_to_pos_addinfo, :ls_to_pos_jobcode, :ls_to_pos_jobtitle from sns_staffing_grps_positions2 where assgnd_empno = :ll_to_empno using sqlca;
//						//
//						if(ll_to_pos_exists_id > 0) then
//							ll_to_xrefmods_ppos2recid = ll_to_pos_exists_id
//						end if
//						select id into :ll_to_xref_exists_id from sns_pos_xref where empno = :ll_to_empno using sqlca;
//						//
//						select id into :ll_to_xrefmods_exists_id from sns_pos_xref_mods where pempno = :ll_to_empno using sqlca;
//						//
//						select id into :ll_to_emp_exists_id from sns_employees where empno = :ll_to_empno using sqlca;
//						//
//						select id into :ll_to_bs_specs_others_exists_id from sns_board_specs_others where ltrim(rtrim(upper(empname))) = :ls_to_empname and empno = :ll_to_empno using sqlca;
//						//			
//					end if	
//					if((ll_to_pos_exists_id = 0) and (ll_to_pos_xrefid = 0) and (ll_to_bs_specs_others_exists_id = 0)) then
//						if(f_len_ext(ls_to_positionid) > 0) then
//							//
//							select id, xrefid into :ll_to_pos_exists_id, :ll_to_pos_xrefid from sns_staffing_grps_positions2 where ltrim(rtrim(upper(positionid))) = :ls_to_positionid using sqlca;
//							//
//							if(ll_to_pos_exists_id > 0) then
//								ll_to_xrefmods_ppos2recid = ll_to_pos_exists_id
//								//
//								select id into :ll_to_xrefmods_exists_id from sns_pos_xref_mods where ppos2recid = :ll_to_pos_exists_id using sqlca;
//								//
//							end if
//							if((ll_to_xref_exists_id = 0) and (ll_to_pos_xrefid > 0)) then
//								//
//								select id into :ll_to_xref_exists_id from sns_pos_xref where id = :ll_to_pos_xrefid using sqlca;
//							end if
//						end if
//						if((ll_dragdrop_grpid > 0) and (f_len_ext(ls_callnum) > 0)) then
//							//
//							select id into :ll_to_bs_specs_others_exists_id from sns_board_specs_others where grpid = :ll_dragdrop_grpid and callnum = :ls_callnum using sqlca;
//							//
//						end if
//					end if
//					li_num_dup_callnums = 0
//					//
//					select count(*) into :li_num_dup_callnums from sns_board_specs_others where callnum = :ls_callnum using sqlca;
//					//
//					if(li_num_dup_callnums > 0) then
//						MessageBox("Notification","Call number " + ls_callnum + " Is already assigned!", Exclamation!)
//						return
//					end if
//					
//					//                                     ls_from_hdrtext      ls_from_text       ll_from_grpid       ls_from_empname         ll_from_row   ls_mode      ls_to_hdrtext       ls_dwo_name         ll_to_grpid        ls_to_empname       ll_to_row        numavailpositions     dropgrouprowcount from_empno
//					//li_case_num = f_determine_case_num(ls_drag_from_header, ls_drag_from_text, ll_drag_from_grpid, ls_drag_from_empname, li_drag_from_row, ls_mode, ls_drag_drop_header, ls_drag_drop_text, ll_drag_drop_grpid, ls_drag_drop_empname, li_drag_drop_row, li_num_avail_rows, li_drop_to_rowcount, ll_from_empno)
//					li_case_num = f_determine_case_num(ls_from_hdrtext, ls_from_text, ll_from_grpid, ls_from_empname, ll_from_row, ls_mode, ls_to_hdrtext, ls_dwo_name, ll_to_grpid, ls_to_empname, ll_to_row, ll_num_avail_positions, ll_row_count, ls_icon_name, ll_from_empno)
//					sle_case_num.text = string(li_case_num)				
//					//###############
//					//### CASE# 9 ###
//					//###############
//					if(li_case_num = 9) then
//						//-------------------------------------------------------------------------
//						//MOVE DRAG_FROM_EMPNAME TO *** UNFILLED *** POSTION WITHIN SAME GROUP
//						//example GABBITAS-KONNER MOVE FROM 1J2534 TO 1J2532 (UNFILLED)
//						//ll_from_pos_exists_id	1678
//						//ll_from_pos_xrefid	366
//						//ll_from_xrefmods_ppos2recid	1678
//						//ll_from_xref_exists_id	366
//						//ll_from_xrefmods_exists_id	366
//						//ll_from_emp_exists_id	1215
//						//ll_from_bs_specs_others_exists_id	74
//						//ll_to_pos_exists_id	638
//						//ll_to_pos_xrefid	212
//						//ll_to_xrefmods_ppos2recid	638
//						//ll_to_xref_exists_id	212
//						//ll_to_xrefmods_exists_id	212
//						//ll_to_emp_exists_id	0 (unfilled postion han not empno)
//						//ll_to_bs_specs_others_exists_id	80
//						//-------------------------------------------------------------------------
//						//ll_dragdrop_grpid	8
//						//ll_from_grpid	8
//						//ll_from_empno	19633
//						//li_drag_drop_row	3
//						//li_drag_from_row	5
//						//li_drop_to_rowcount	10
//						//li_num_avail_rows	12
//						//ls_callnum	1J2532
//						//ls_from_callnum	1J2534
//						//li_super_lvl	
//						//ls_from_positionid	00512
//						//ls_to_positionid	00066
//   					//-------------------------------------------------------------------------
//						//swap records callnum in sns_staffing_grps_positions2 and sns_pos_xref and sns_pos_xref_mods between from -> to   to -> from
//						if((ll_from_pos_exists_id > 0) and (ll_to_pos_exists_id > 0)) then
//							//--- drag from updates ---
//							//
//							update sns_staffing_grps_positions2 set callnum = :ls_callnum where id = :ll_from_pos_exists_id using sqlca;
//							//
//							li_commit_status = f_commit_rollback_record(ref sqlca)
//							if((ll_from_pos_xrefid > 0) and (li_commit_status = 1)) then
//								//
//								update sns_pos_xref set spunitno = :ls_callnum where id = :ll_from_pos_xrefid using sqlca;
//								//
//								li_commit_status = f_commit_rollback_record(ref sqlca)
//								if((ll_from_xrefmods_exists_id > 0) and (li_commit_status = 1)) then
//									//
//									update sns_pos_xref_mods set pspunitno = :ls_callnum where id = :ll_from_xrefmods_exists_id using sqlca;
//									//
//									f_commit_rollback_record(ref sqlca)
//								end if
//							end if
//							//--- drag to updates ---
//							//
//							update sns_staffing_grps_positions2 set callnum = :ls_from_callnum where id = :ll_to_pos_exists_id using sqlca;
//							//
//							li_commit_status = f_commit_rollback_record(ref sqlca)
//							if((ll_to_pos_xrefid > 0) and (li_commit_status = 1)) then
//								//
//								update sns_pos_xref set spunitno = :ls_from_callnum where id = :ll_to_pos_xrefid using sqlca;
//								//
//								li_commit_status = f_commit_rollback_record(ref sqlca)
//								if((ll_to_xrefmods_exists_id > 0) and (li_commit_status = 1)) then
//									//
//									update sns_pos_xref_mods set pspunitno = :ls_from_callnum where id = :ll_to_xrefmods_exists_id using sqlca;
//									//
//									f_commit_rollback_record(ref sqlca)
//								end if
//							end if
//						end if						
//						//swap records callnums in sns_board_specs_others between from and to  from -> to   to -> from
//						if((ll_from_bs_specs_others_exists_id > 0) and (ll_to_bs_specs_others_exists_id > 0)) then
//							//
//							update sns_board_specs_others set callnum = :ls_from_callnum where id = :ll_to_bs_specs_others_exists_id using sqlca;
//							//
//							f_commit_rollback_record(ref sqlca)
//							//
//							update sns_board_specs_others set callnum = :ls_callnum where id = :ll_from_bs_specs_others_exists_id using sqlca;
//							//
//							f_commit_rollback_record(ref sqlca)							
//						end if
//					end if
//					//###############
//					//### CASE# 6 ###
//					//###############
//					if(li_case_num = 6) then
//						li_isunfilled = 1
//						//-sle_drag_from_hdrtext <> sle_drag_drop_hdrtext
//						//-sle_drag_from_object = 'SNS_BOARD_SPECS_OTHERS_EMPLOYEE'
//						//-sle_drag_from_row between 1 and 12
//						//-sle_drag_from_empno > 0
//						//-sle_drag_from_grpid > 0
//						//-mode = 'EMPTY'
//						//-sle_drag_drop_object = 'DATAWINDOW'
//						//-sle_drag_drop_grpid > 0 and <> sle_drom_from_grpid
//						//-sle_drag_drop_empname = 'INSERT'
//						//-sle_dragdrop_rowcount > 0 and <= sle_num_avail_positions
//						//INSERT INTO DRAG_TO_GROUP
//						//REMOVE FROM DRAG_FROM_GROUP
//						//
//						li_stop = 0
//						bSuccessfulMove = false
//						bSuccessfulRemove = false
//						bSuccessfulInsert = false					
//	
//						//===================================
//						//*** REMOVE FROM DRAG_FROM GROUP ***
//						//===================================
//						//bSuccessfulRemove = f_remove_from_dragfrom_group(ll_from_pos_exists_id, ll_from_bs_specs_others_exists_id, ll_from_xref_exists_id, ll_from_xrefmods_exists_id, ll_from_emp_exists_id, ref lsa_dd_errors, ref li_num_deletes, ref li_num_updates, ref sqlca)
//						
//						if((ll_from_pos_exists_id > 0) and (ll_from_bs_specs_others_exists_id > 0)) then
//	
//							li_num_deletes = 0
//							li_num_updates = 0
//							// - delete from sns_staffing_grps_positions2 where id = ll_from_pos_exists_id
//							delete from sns_staffing_grps_positions2 where id = :ll_from_pos_exists_id using sqlca;
//							//
//							if(sqlca.sqlcode <> -1) then
//								//
//								commit using sqlca;
//								//
//								li_num_deletes++
//							else
//								ls_sqlerrtext = sqlca.sqlerrtext
//								//
//								rollback using sqlca;
//								//
//								ls_sqlerrtext = "delete from sns_staffing_grps_positions2 error=" + ls_sqlerrtext
//								f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//							end if
//							// - delete from sns_pos_xref where id = ll_from_xref_exists_id
//							if(ll_from_xref_exists_id > 0) then
//								//
//								delete from sns_pos_xref where id = :ll_from_xref_exists_id using sqlca;
//								//
//								if(sqlca.sqlcode <> -1) then
//									//
//									commit using sqlca;
//									//
//									li_num_deletes++
//								else
//									ls_sqlerrtext = sqlca.sqlerrtext
//									//
//									rollback using sqlca;
//									//
//									ls_sqlerrtext = "delete from sns_pos_xref error=" + ls_sqlerrtext
//									f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//								end if
//							end if
//							// - delete from sns_pos_xref_mods where id = ll_from_xrefmods_exists_id
//							if(ll_from_xrefmods_exists_id > 0) then
//								//
//								delete from sns_pos_xref_mods where id = :ll_from_xrefmods_exists_id using sqlca;
//								//
//								if(sqlca.sqlcode <> -1) then
//									//
//									commit using sqlca;
//									//
//									li_num_deletes++
//								else
//									ls_sqlerrtext = sqlca.sqlerrtext
//									//
//									rollback using sqlca;
//									//
//									ls_sqlerrtext = "delete from sns_pos_xref_mods error=" + ls_sqlerrtext
//									f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//								end if							
//							end if
//							// - update sns_employees set positionid = "", title = "", jobcode = "", jobtitle = "", supervisor = 0, grps_resp = "", grpid = 0 where id = ll_from_emp_exists_id
//							if(ll_from_emp_exists_id > 0) then
//								//''
//								update sns_employees set positionid = '', title = '', jobcode = '', jobtitle = '', supervisor = '', grps_resp = '', grpid = 0	
//								where id = :ll_from_emp_exists_id 
//								using sqlca;
//								//
//								if(sqlca.sqlcode <> -1) then
//									//
//									commit using sqlca;
//									//
//									li_num_updates++
//								else
//									ls_sqlerrtext = sqlca.sqlerrtext
//									//
//									rollback using sqlca;
//									//
//									ls_sqlerrtext = "update sns_employees error=" + ls_sqlerrtext
//									f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//								end if								
//							end if
//							// - update sns_board_specs_others set empname = "", empno = 0, positionid = "" where id = ll_from_bs_specs_others_exists_id
//							if(ll_from_bs_specs_others_exists_id > 0) then
//								//
//								update sns_board_specs_others set empname = '', empno = 0, positionid = ''
//								where id = :ll_from_bs_specs_others_exists_id
//								using sqlca;
//								//
//								if(sqlca.sqlcode <> -1) then
//									//
//									commit using sqlca;
//									//
//									li_num_updates++
//								else
//									ls_sqlerrtext = sqlca.sqlerrtext
//									//
//									rollback using sqlca;
//									//
//									ls_sqlerrtext = "update sns_board_specs_others error=" + ls_sqlerrtext
//									f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//								end if								
//							end if
//							if((li_num_deletes > 0) and (li_num_updates = 2) and (UpperBound(lsa_dd_errors) = 0)) then
//								bSuccessfulRemove = true
//							end if
//						end if
//						if(bSuccessfulRemove = true) then
//							//===================================
//							//*** INSERT INTO DRAG_TO GROUP ***
//							//===================================
//	//						li_inserted_status = 0
//	//						li_inserted_status = f_insert_into_dragto_group(ll_from_bs_specs_others_exists_id, ll_from_emp_exists_id, ls_from_empname, ll_from_empno, ls_from_positionid, &
//	//																						ll_to_grpid, ls_from_funddept, ls_from_jobtitle,ls_from_jobcode, ls_to_positionid, ref li_num_updates, &
//	//																						ref lsa_dd_errors, ref sqlca)
//	
//							// update sns_board_specs_others
//	
//							string ls_to_callnum
//							li_num_updates = 0
//							if(ll_from_bs_specs_others_exists_id > 0) then
//								//
//								select callnum into :ls_to_callnum from sns_board_specs_others where id = :ll_from_bs_specs_others_exists_id using sqlca;
//								//
//								update sns_board_specs_others set empname = :ls_from_empname, empno = :ll_from_empno, positionid = :ls_from_positionid
//								where id = :ll_from_bs_specs_others_exists_id
//								using sqlca;
//								//
//								if(sqlca.sqlcode <> -1) then
//									//
//									commit using sqlca;
//									//
//									li_num_updates++
//								else
//									ls_sqlerrtext = sqlca.sqlerrtext
//									//
//									rollback using sqlca;
//									//
//									ls_sqlerrtext = "update to sns_board_specs_others error=" + ls_sqlerrtext
//									f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//								end if								
//								li_rtn_value = 0
//								string ls_to_addinfo
//								ls_to_addinfo = f_replace_string_in_string(ls_to_callnum, "1J", " ")
//								ls_to_addinfo = f_compress_string(ls_to_addinfo, " ")
//								//  0 = successful
//								// -1 = no action taken
//								// -2 = li_assgnd_empno_count > 0
//								// -3 = li_positionid_count > 0
//								// -4 = assgnd_empno not found in pos2
//								// -5 = ll_pos2idshort invalid
//								// -6 = tr_sqlca sqlcode = -1 sns_staffing_grps_positions2
//								// -7 = tr_sqlca sqlcode = -1 sns_pos_xref
//								// -8 = tr_sqlca sqlcode = -1 sns_pos_xref_mods
//								// -9 = tr_sqlca sqlcode = -1 sns_group_ids
//								//-10 = ll_pos2idshort <0 or > 90000 
//								li_rtn_value = f_insert_pos2_support_table_records(ll_to_grpid, ls_to_callnum, ll_from_empno, ls_from_funddept, ls_to_addinfo, ".", ls_from_positionid, ls_from_jobcode, ls_from_jobtitle, 0.0, true, ref ls_error, ref sqlca)
//								if(li_rtn_value >= 1) then
//									if(ll_from_emp_exists_id > 0) then
//										// - update sns_employees set positionid = "", title = "", jobcode = "", jobtitle = "", supervisor = 0, grps_resp = "", grpid = 0 where id = ll_from_emp_exists_id
//										update sns_employees set positionid = :ls_to_positionid, title = :ls_from_jobtitle, jobcode = :ls_from_jobcode, grpid = :ll_to_grpid
//										where id = :ll_from_emp_exists_id
//										using sqlca;
//										//
//										if(sqlca.sqlcode <> -1) then
//											//
//											commit using sqlca;
//											//
//											li_num_updates++
//										else
//											ls_sqlerrtext = sqlca.sqlerrtext
//											//
//											rollback using sqlca;
//											//
//											ls_sqlerrtext = "update to sns_employees columns error=" + ls_sqlerrtext
//											f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//										end if										
//										if((ll_to_grpid > 0) and (li_num_updates >= 2)) then
//											long ll_grps_resp
//											long ll_grp_super_empno
//											ll_grps_resp = 0
//											ll_grp_super_empno = 0
//											//
//											select grp_super_empno, root_grp_super_empno into :ll_grp_super_empno, :ll_grps_resp from sns_staffing_groups where id = :ll_to_grpid using sqlca;
//											//
//											update sns_employees set grps_resp = :ll_grps_resp, supervisor = :ll_grp_super_empno where id = :ll_from_emp_exists_id using sqlca;
//											//
//											if(sqlca.sqlcode <> -1) then
//												//
//												commit using sqlca;
//												//
//												li_num_updates++
//											else
//												ls_sqlerrtext = sqlca.sqlerrtext
//												//
//												rollback using sqlca;
//												//
//												ls_sqlerrtext = "update to sns_employees grps_resp,supervisor error=" + ls_sqlerrtext
//												f_add_item_to_string_array_ext(ref lsa_dd_errors, ls_sqlerrtext, false)
//											end if											
//										end if //ll_to_grpid > 0
//									end if//ll_from_emp_exists_id > 0
//								end if //li_rtn_value = 0
//							end if //ll_from_bs_specs_others_exists_id > 0						
//						end if //bSuccessfulRemove = true
//					end if //li_case_num = 6
//					//###############
//					//### CASE# 8 ###
//					//###############
//					if(li_case_num = 8) then
//						li_isunfilled = 0
//						//===================================
//						//*** REMOVE FROM DRAG_FROM GROUP ***
//						//===================================
//						bSuccessfulRemove = false
//						li_rtn_value = 0
//						// 1 = successful backup
//						//-1 = invalid li_case_num or ls_from_hdrtext or ls_to_hdrtext
//						//-2 = insert failed
//						//-3 = remove previous backup failed
//						li_rtn_value = f_backup_board_specs_tables(li_case_num, ls_from_hdrtext, ls_to_hdrtext, ll_from_pos_exists_id, ll_from_bs_specs_others_exists_id, ll_from_xref_exists_id, ll_from_xrefmods_exists_id, ll_from_emp_exists_id, ref sqlca)
//						if(li_rtn_value = 1) then
//							bSuccessfulRemove = f_remove_from_dragfrom_group(ll_from_pos_exists_id, ll_from_bs_specs_others_exists_id, ll_from_xref_exists_id, ll_from_xrefmods_exists_id, ll_from_emp_exists_id, ref lsa_dd_errors, ref li_num_deletes, ref li_num_updates, ref sqlca)
//							if(bSuccessfulRemove = true) then
//								string lsa_parms[]
//								f_allocate_string_array(39, ref lsa_parms)
//								lsa_parms[1] = string(ll_from_bs_specs_others_exists_id)
//								lsa_parms[2] = string(ll_from_emp_exists_id)
//								lsa_parms[3] = string(ll_from_pos_exists_id)
//								lsa_parms[4] = string(ll_from_pos_xrefid)
//								lsa_parms[5] = string(ll_from_xref_exists_id)
//								lsa_parms[6] = ls_empname
//								lsa_parms[7] = string(ll_from_empno)
//								lsa_parms[8] = ls_from_positionid
//								lsa_parms[9] = ls_from_funddept
//								lsa_parms[10] = ls_from_jobtitle
//								lsa_parms[11] = ls_from_jobcode
//								lsa_parms[12] = string(ll_from_grpid)
//								lsa_parms[13] = string(ll_from_row)
//								lsa_parms[14] = ls_from_pos_addinfo
//								lsa_parms[15] = ls_from_pos_funddept
//								lsa_parms[16] = ls_from_pos_jobcode
//								lsa_parms[17] = ls_from_pos_jobtitle
//								lsa_parms[18] = string(ll_to_grpid)
//								lsa_parms[19] = ls_to_positionid
//								lsa_parms[20] = string(ll_to_row)
//								lsa_parms[21] = string(ll_to_rowcount)
//								lsa_parms[22] = ls_to_empname
//								lsa_parms[23] = ls_callnum
//								lsa_parms[24] = ls_dragfrom_hdrtext
//								lsa_parms[25] = ls_empname
//								lsa_parms[26] = ls_hdrtext
//								lsa_parms[27] = ls_mode
//								lsa_parms[28] = ls_row
//								lsa_parms[29] = ""
//								lsa_parms[30] = ""
//								lsa_parms[31] = ""
//								lsa_parms[32] = ""
//								lsa_parms[33] = ""
//								lsa_parms[34] = ""
//								lsa_parms[35] = ""
//								lsa_parms[36] = ""
//								lsa_parms[37] = ""
//								lsa_parms[38] = ""
//								lsa_parms[39] = ""
//								//===================================
//								//*** INSERT INTO DRAG_TO GROUP ***
//								//===================================
//								li_inserted_status = 0
//								li_inserted_status = f_insert_into_dragto_group(li_case_num, lsa_parms, ref li_num_updates, ref lsa_dd_errors, ref sqlca)					
//							else
//								li_rtn_value = 0		
//								ls_errors = ""
//								li_rtn_value = f_restore_board_specs_backup_tables(li_case_num, ls_from_hdrtext, ls_to_hdrtext, ll_from_pos_exists_id, ll_from_bs_specs_others_exists_id, ll_from_xref_exists_id, ll_from_xrefmods_exists_id, ll_from_emp_exists_id, ref ls_errors, ref sqlca)
//								MessageBox("Notification","Drag-Drop inserts failed. Restore completed. Please Call administrator at x4008.");
//							end if
//						else
//							MessageBox("Notification","Failed to backup board specs (f_backup_board_specs_tables). return value= " + string(li_rtn_value) + ". Please Call administrator at x4008.")
//						end if
//					end if
//					//###############
//					//### CASE# 2 ###
//					//###############
//					if(li_case_num = 2) then
//					
//					end if
//					if(ll_to_grpid = ll_dragdrop_grpid) then
//						sle_refresh_grpids.text = string(ll_dragdrop_grpid)
//					else
//						string ls_refresh_grpids
//						ls_refresh_grpids = string(ll_dragdrop_grpid) + "," + string(ll_from_grpid)
//					end if
//					TriggerEvent(pb_refresh, Clicked!)	
//				end if
//				sle_is_dragging.text = string(bIsDragging)
//			end if
//		//end if
//	end if	
//end if
end event

event dragwithin;////==================
////### DRAGWITHIN ###
////==================
////dragwithin
//if(bIsDragging = true) then
//	sle_is_dragging.text = string(bIsDragging)
//	sle_dragwithin_row.text = ""
//	sle_dragwithin_header.text = ""
//	sle_dragwithin_text.text = ""
//	sle_dragwithin_empno.text = ""
//	string ls_hdrtext
//	long ll_empno
//	string ls_dwoname	
//	ls_dwoname = trim(upper(dwo.name))
//	
//	//=======================
//	long ll_clicked_grpid
//	ll_clicked_grpid = 1
//	//=======================
//	datawindow dw_clicked_object
//	dw_clicked_object = f_getDwobjectByGrpid(ll_clicked_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//	if(IsNull(dw_clicked_object) = false) then
//		ls_hdrtext = ""
//		ll_empno = 0	
//		string ls_empname
//		string ls_callnum
//		ls_hdrtext = trim(upper(dw_clicked_object.getitemstring(row, "grpteamid")))
//		ll_empno = 0
//		ls_empname = ""
//		sle_drag_drop_empname.text = ls_empname
//		//ls_callnum = dw_c.getitemstring(row, "sns_board_specs_others_callnum")
//		//ll_empno = dw_c.getitemnumber(row, "sns_board_specs_others_empno")
//		if(row > 0) then
//			ll_empno = dw_clicked_object.getitemnumber(row, "sns_board_specs_others_empno")
//			ls_empname = dw_clicked_object.getitemstring(row, "sns_board_specs_others_empname")	
//			sle_dragwithin_row.text = string(row)
//			sle_dragwithin_header.text = ls_hdrtext
//			sle_dragwithin_text.text = ls_dwoname
//			sle_dragwithin_empno.text = string(ll_empno)
//			if(sle_drag_from_hdrtext.text <> ls_hdrtext) then
//				//dragicon logic
//				if(pos(ls_dwoname, "sns_board_specs_others_empname") > 0) then
//					if(ll_empno > 0) then
//						this.dragicon = "UserObject5!"
//						sle_icon_filenanme.text = "UserObject5!"
//					else
//						this.dragicon = "StopSign!"
//						sle_icon_filenanme.text = "StopSign1!"
//					end if
//				elseif(pos(ls_dwoname, "DATAWINDOW") > 0) then
//					//if(ll_empno > 0) then
//						//this.dragicon = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFDROP.ICO"
//						//sle_icon_filenanme.text = "Drop!"
//					//else
//						this.dragicon = "StopSign!"
//						sle_icon_filenanme.text = "StopSign2!"			
//					//end if
//				else
//					//this.dragicon = "StopSign!"
//					//sle_icon_filenanme.text = "StopSign3!"			
//					this.dragicon = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFREPLACE.ICO"
//					sle_icon_filenanme.text = "Replace!"
//				end if
//			else
//				this.dragicon = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFGRN.ICO"
//				sle_icon_filenanme.text = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFGRN.ICO"
//			end if
//		else
//			this.dragicon = "\\ucfs1\apps\pix\ucso_staffing\UCSOSTAFFINSERT.ICO"
//			sle_icon_filenanme.text = "Insert!"
//			sle_dragwithin_row.text = string(row)
//			sle_dragwithin_header.text = ls_hdrtext
//			sle_dragwithin_text.text = ls_dwoname
//			sle_dragwithin_empno.text = string(ll_empno)
//		end if
//	end if
//end if
end event

event rbuttondown;////===================
////### RBUTTONDOWN ###
////===================
//string ls_dwo_name
//ls_dwo_name = dwo.name
//boolean bAutoRefresh
////=======================
//long ll_clicked_grpid
//ll_clicked_grpid = 1
////=======================
//datawindow dw_clicked_object
//dw_clicked_object = f_getDwobjectByGrpid(ll_clicked_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//if(IsNull(dw_clicked_object) = false) then
//	string ls_empname
//	string ls_callnum
//	string ls_hdrtext
//	string ls_refresh_grpids
//	if(row = 0) then
//		ls_hdrtext = dw_clicked_object.getitemstring(1, "grpteamid")	
//	else
//		ls_hdrtext = dw_clicked_object.getitemstring(row, "grpteamid")	
//	end if
//	string ls_grpid
//	long ll_grpid
//	ls_grpid = f_extract_bracketed_item(ls_hdrtext, "{","}", true)
//	ll_grpid = f_stol(ls_grpid)
//	long ll_num_avail_positions
//	ll_num_avail_positions = 0
//	if((row > 0) and (ll_grpid > 0)) then
//		ls_empname = dw_clicked_object.getitemstring(row, "sns_board_specs_others_empname")
//		ls_callnum = dw_clicked_object.getitemstring(row, "sns_board_specs_others_callnum")
//		//
//		select count(*) into :ll_num_avail_positions	from sns_board_specs_others where grpid = :ll_grpid using sqlca;
//		//
//		long ll_loop
//		string ls_loopdata
//		integer li_max_names
//		li_max_names = 0
//		for ll_loop = 1 to ll_num_avail_positions
//			ls_loopdata = dw_clicked_object.getitemstring(ll_loop, "sns_board_specs_others_empname")
//			if((pos(ls_loopdata, "UNFILLED") = 0) and (f_len_ext(ls_loopdata) > 0)) then
//				li_max_names++			
//			end if
//		next
//		//
//		integer li_drslt 
//		if(pos(ls_empname, "UNFILLED") = 0) then
//			li_drslt = MessageBox("Question","Are you sure you want to remove " + ls_empname + " from " + gs_crlf + ls_hdrtext + " with callnum " + ls_callnum + "?", QUESTION!, YESNO!, 1)
//			if(li_drslt = 1) then
//				integer li_del_rtn_value
//				li_del_rtn_value = 0
//				if(pos(ls_empname, "UNFILLED") > 0) and (ls_callnum = "TBD") then
//					//****************
//					//**** CASE 3 ****
//					//****************
//					li_del_rtn_value = f_deleteunfilledposition(ref dw_clicked_object, row, dw_unassigned, ref sqlca)
//					if(li_del_rtn_value = 1) then
//						bAutoRefresh = true
//					end if
//				elseif((pos(ls_empname, "UNFILLED") > 0) and (pos(ls_callnum, "1J") = 1)) then
//					//****************
//					//**** CASE 3 ****
//					//****************
//					li_del_rtn_value = f_deleteunfilledposition(ref dw_clicked_object, row, dw_unassigned, ref sqlca)
//					if(li_del_rtn_value = 1) then
//						bAutoRefresh = true
//					end if				
//				else
//					//****************
//					//**** CASE 4 ****
//					//****************
//					if((li_max_names > 0) and (row <= ll_num_avail_positions)) then
//						li_del_rtn_value = f_delete_filled_position(ref dw_clicked_object, row, dw_unassigned, ref sqlca)
//						if(li_del_rtn_value = 1) then
//							bAutoRefresh = true
//						end if
//					end if
//				end if	
//				if(bAutoRefresh = true) then
//					ls_refresh_grpids = "," + string(ll_clicked_grpid) + ","
//					sle_refresh_grpids.text = ls_refresh_grpids
//					TriggerEvent(pb_refresh, Clicked!)							
//				end if			
//			end if
//		else
//			//ls_empname <> "UNFILLED"
//			if(li_max_names < ll_num_avail_positions) then
//				li_drslt = MessageBox("Question","Do you want to replace the *** UNFILLED *** position with a employee?", QUESTION!, YESNO!, 1)
//				if(li_drslt = 1) then
//					//select employee to replace *** UNFILLED *** position
//					string ls_messageparm
//					ls_messageparm = string(ll_clicked_grpid)
//					OpenWithParm(w_add_user, ls_messageparm)
//					string ls_selected_username
//					ls_selected_username = Message.StringParm
//					if(f_len_ext(ls_selected_username) > 0) then
//						li_drslt = MessageBox("Notification","Do you want to add User " + ls_selected_username + " to group " + ls_hdrtext, QUESTION!, YESNO!)
//						if(li_drslt = 1) then					
//							//-------------------------------------------------------------
//							long ll_boards_specs_others_id //sns_board_specs_others
//							long ll_pos_id                 //sns_staffing_grps_positions2
//							long ll_pos_xref_id            //sns_pos_xref
//							long ll_pos_xref_mods_id       //sns_pos_xref_mods
//							long ll_emp_id                 //sns_employees
//							//-------------------------------------------------------------
//							long ll_emp_empno
//							string ls_emp_empname
//							string ls_positionid
//							string ls_sel_empno
//							long ll_pos_grpid
//							long ll_pos_xrefid
//							string ls_pos_addinfo
//							integer li_pos
//							long ll_pos2idshort
//							long ll_pos_addinfo
//							string ls_fm_jobcode
//							string ls_fm_jobtitle
//							string ls_fm_positionid
//							boolean b_skipadd
//							string ls_funddept
//							//-------------------------------------------------------------
//							ll_boards_specs_others_id = 0
//							ll_pos_id = 0
//							ll_pos_xref_id = 0
//							ll_pos_xref_mods_id = 0
//							ll_emp_id = 0
//							ll_emp_empno = 0
//							ls_emp_empname = ""
//							ls_positionid = ""
//							ls_sel_empno = ""
//							ll_pos_grpid = 0
//							ll_pos_xrefid = 0
//							ls_pos_addinfo = ""
//							li_pos = 0
//							ll_pos2idshort = 0
//							ll_pos_addinfo = 0
//							ls_fm_jobcode = ""
//							ls_fm_jobtitle = ""
//							ls_fm_positionid = ""
//							b_skipadd = false
//							ls_funddept = ""
//							//-------------------------------------------------------------
//							ls_sel_empno = f_extract_bracketed_item(ls_selected_username, "[", "]", true)
//							ls_pos_addinfo = ls_callnum
//							li_pos = pos(ls_callnum, "1J")
//							if(li_pos > 0) then
//								ls_pos_addinfo = trim(mid(ls_callnum, (li_pos + 2)))
//							else
//								ls_pos_addinfo = ""
//							end if
//							ll_emp_empno = f_stol(ls_sel_empno)
//							if(ll_emp_empno > 0) then
//								//
//								select job_code, title into :ls_fm_jobcode, :ls_fm_jobtitle from fm.io_employee where empno = :ll_emp_empno using sqlca;
//								//
//								select id, positionid into :ll_boards_specs_others_id, :ls_positionid from sns_board_specs_others where grpid = :ll_clicked_grpid and callnum = :ls_callnum using sqlca;
//								//
//								select id, empname into :ll_emp_id, :ls_emp_empname from sns_employees where empno = :ll_emp_empno using sqlca;
//								//
//								if((f_len_ext(ls_funddept) = 0) or (IsNull(ls_funddept) = true)) then
//									//
//									select to_char(fund) || '-' || to_char(dept) into :ls_funddept from fm.io_employee where empno = :ll_emp_empno using sqlca;
//									//
//								end if
//								if((f_len_ext(ls_positionid) = 0) or (IsNull(ls_positionid) = true)) then
//									//
//									select positionid into :ls_positionid from sns_staffing_grps_positions2 where assgnd_empno = :ll_emp_empno using sqlca;
//									//
//									if((f_len_ext(ls_positionid) = 0) or (IsNull(ls_positionid) = true)) then
//										//
//										select position_id into :ls_positionid from fm.io_employee where empno = :ll_emp_empno using sqlca;
//										//
//									end if
//								end if
//								ls_positionid = trim(upper(ls_positionid))
//								if(f_len_ext(ls_positionid) > 0) then
//									li_pos = pos(ls_positionid, "-")
//									if(li_pos > 0) then
//										ll_pos2idshort = f_stol(mid(ls_positionid, (li_pos + 1)))								
//									end if
//								else
//									b_skipadd = true
//									bAutoRefresh = false
//									MessageBox("Notification","Unable to add " + ls_emp_empname + " to group " + ls_hdrtext + ". Unable to determine POSITION ID#!")
//								end if
//								if(b_skipadd = false) then
//									if(f_len_ext(ls_positionid) > 0) then
//										//
//										select id, grpid, xrefid into :ll_pos_id, :ll_pos_grpid, :ll_pos_xrefid from sns_staffing_grps_positions2 where ltrim(rtrim(upper(positionid))) = :ls_positionid using sqlca;
//										//
//										select id into :ll_pos_xref_id from sns_pos_xref where pos2idshort = :ll_pos2idshort using sqlca;
//										//
//										select id into :ll_pos_xref_mods_id from sns_pos_xref_mods where ppos2idshort = :ll_pos2idshort using sqlca;
//										//
//									end if
//									//-------------------------------------------------------------
//									// sns_staffing_grps_positions2
//									//  -update grpid, callnum, addinfo, jobcode, jobtitle, assgnd_empno
//									// sns_pos_xref
//									//  -change grpid to the move to group grpid
//									//  -change spunitno to new callnum
//									// sns_pos_xref_mods
//									//  -change pgrpid to the move to group grpid
//									//  -change pspunitno to new callnum
//									// sns_employees
//									//  -update the grpid to move to group grpid
//									// sns_board_specs_others
//									//  -update empname
//									//  -       empno
//									//  -       positionid
//									//  - where callnum = selected callnum											
//									//-------------------------------------------------------------
//									integer li_num_update_errors
//									integer li_rtn_value
//									string ls_error
//									li_rtn_value = 0
//									li_num_update_errors = 0
//									if(ll_pos_id > 0) then
//										//sns_staffing_grps_positions2
//										//
//										update sns_staffing_grps_positions2 
//										set grpid = :ll_clicked_grpid, callnum = :ls_callnum, assgnd_empno = :ll_emp_empno, addinfo = :ls_pos_addinfo, jobcode = :ls_fm_jobcode, jobtitle = :ls_fm_jobtitle
//										where id = :ll_pos_id
//										using sqlca;
//										//
//										if(sqlca.sqlcode = -1) then
//											li_num_update_errors++
//										else
//											li_rtn_value = 1
//										end if
//										//sns_pos_xref
//										if(ll_pos_xref_id > 0) then
//											//
//											update sns_pos_xref
//											set pos2recid = :ll_pos_id, empno = :ll_emp_empno, pos2idshort = :ll_pos2idshort, spunitno = :ls_callnum, grpid = :ll_clicked_grpid, status = 'A', empname = :ls_emp_empname
//											where id = :ll_pos_xref_id
//											using sqlca;
//											//
//											if(sqlca.sqlcode = -1) then
//												li_num_update_errors++
//											end if
//											//
//											if(ll_pos_xref_mods_id > 0) then
//												//
//												update sns_pos_xref_mods
//												set ppos2recid = :ll_pos_id, pempno = :ll_emp_empno, ppos2idshort = :ll_pos2idshort, pspunitno = :ls_callnum, pgrpid = :ll_clicked_grpid
//												where id = :ll_pos_xref_mods_id
//												using sqlca;
//												//
//												if(sqlca.sqlcode = -1) then
//													li_num_update_errors++
//												end if
//											end if
//										end if
//									else
//										//insert into sns_staffing_grps_positions2, sns_pos_xref and sns_pos_xref_mods
//										li_rtn_value = f_insert_pos2_support_table_records(ll_clicked_grpid, ls_callnum, ll_emp_empno, ls_funddept, ls_pos_addinfo, &
//																	".", ls_positionid, ls_fm_jobcode, ls_fm_jobtitle, 0.0, true, &
//																	ref ls_error, ref sqlca)
//									end if
//									if((ll_emp_id > 0) and (li_rtn_value = 1)) then
//										long ll_super_empno
//										string ls_grps_resp
//										string ls_supervisor
//										long ll_grps_resp
//										//
//										select empno, empname into :ll_super_empno, :ls_supervisor from sns_board_specs_others where grpid = :ll_clicked_grpid and issuper = 1 using sqlca;
//										//
//										select root_grp_super_empno into :ll_grps_resp from sns_staffing_groups where id = :ll_clicked_grpid using sqlca;
//										//
//										ls_grps_resp = string(ll_grps_resp)
//										//
//										update sns_employees
//										set title = :ls_fm_jobtitle, jobcode = :ls_fm_jobcode, positionid = :ls_positionid, super_empno = :ll_super_empno, supervisor = :ls_supervisor, grps_resp =:ls_grps_resp, grpid = :ll_clicked_grpid
//										where empno = :ll_emp_empno
//										using sqlca;
//										//
//										if(sqlca.sqlcode = -1) then
//											li_num_update_errors++
//										end if									
//									end if
//									if(ll_boards_specs_others_id > 0) then
//										//
//										update sns_board_specs_others
//										set empname = :ls_emp_empname, empno = :ll_emp_empno, isunfilled = 0
//										where id = :ll_boards_specs_others_id
//										using sqlca;
//										//
//										if(sqlca.sqlcode = -1) then
//											li_num_update_errors++
//										end if	
//									end if
//									if(li_num_update_errors = 0) then
//										//
//										commit using sqlca;
//										//
//										bAutoRefresh = true
//										MessageBox("Notification","Successfully added " + ls_emp_empname + " to group " + ls_hdrtext)
//									else
//										//
//										rollback using sqlca;
//										//
//										MessageBox("Notification","Failed to add " + ls_emp_empname + " to group " + ls_hdrtext + " One or more errors occured [" + string(li_num_update_errors) + "].")
//										bAutoRefresh = false
//									end if
//								end if
//								if(bAutoRefresh = true) then
//									ls_refresh_grpids = "," + string(ll_clicked_grpid) + ","
//									sle_refresh_grpids.text = ls_refresh_grpids
//									TriggerEvent(pb_refresh, Clicked!)							
//								end if
//							end if //ll_emp_empno > 0
//						end if //li_rtn_result = 1
//					end if //f_len_ext(ls_selected_username) > 0)					
//				end if //li_drslt = 1
//			end if //li_max_names < ll_num_avail_positions
//		end if
//	end if
//end if
//
end event

event retrieveend;///=======================
long ll_clicked_grpid
string ls_subgrpid
ll_clicked_grpid = 135
ls_subgrpid = "G1"
////=======================
datawindow dw_clicked_object
datawindow dw_null
integer li_valid_object
SetNull(dw_null)
dw_clicked_object = f_getDwDispJudObjectByGrpid_mod(ll_clicked_grpid, ls_subgrpid, dw_jud_chief, dw_jud_supr1, dw_null, dw_jud_group1, dw_jud_group2, dw_null, dw_null, dw_null, dw_null, dw_jud_admin, ref li_valid_object)
//dwobject    ll_grpid  ls_subgrpid
//dw_jud_group1 135         'G1'
//dw_jud_group2 136         'G2'
//dw_jud_admin  59          'A0'
//dw_jud_group3 137         'G3'
//dw_jud_group4 138         'G4'
//dw_jud_group5 139         'G5'
//dw_jud_group6 140         'G6'
//dw_jud_chief  118         'C0'
//dw_jud_supr1  135         'S1' 
//dw_jud_supr2  137         'S2'
integer li_stop
integer ndisplaybd
string ls_modify
if(IsNull(dw_clicked_object) = false) then
	long ll_rowcount
	ll_rowcount = rowcount
	if(ll_rowcount > 0) then
		long ll_row
		string ls_birthday
		string ls_empname
		integer li_dispbd
		string ls_dobshort
		for ll_row = 1 to ll_rowcount
			ls_birthday = dw_clicked_object.getitemstring(ll_row, "BIRTHDAY")
			ls_empname = dw_clicked_object.getitemstring(ll_row, "sns_employees_empname")
			li_dispbd = dw_clicked_object.getitemnumber(ll_row, "sns_employees_dispbd")
			ls_dobshort = dw_clicked_object.getitemstring(ll_row, "sns_employees_dobshort")
			if(li_dispbd > 0) then
				ls_modify = "sns_employees_dobshort" + ".Visible = 0"
				//dw_jud_group1.Modify(ls_modify)
				//dw_jud_group1.Object.sns_employees_dobshort.Visble = 0 //<=== does not work
			else
				ls_modify = "sns_employees_dobshort" + ".Visible = 1"
				dw_jud_group1.Modify(ls_modify)
			end if
			if(f_len_ext(ls_birthday) > 0) then
				//nrtnvalue = 0 do not display birthday
				//          = 1 birthday within 7 days
				//          = 2 birthday past 7days
				//          = 3 on birthday				
				//ndisplaybd = f_displayEmployeeBirthday(gi_bd_span_from, gi_bd_span_to, ls_birthday)
				//if(ndisplaybd > 0) then
				//	ls_modify = "birthday" + ".Visible = true"
				//	dw_clicked_object.Modify(ls_modify)
					//dw_jud_group1.Object.BIRTHDAY.Visible = true
				//else
				//	ls_modify = "birthday" + ".Visible = false"
				//	dw_clicked_object.Modify(ls_modify)
					//dw_jud_group1.Object.BIRTHDAY.Visible = false
					
				//end if
			end if
		next
	end if
end if



end event

event retrieverow;////===================
////### RETRIEVEROW ###
////===================
//string ls_empname
//long ll_assgnd_empno
//string ls_callnum
////=======================
//long ll_clicked_grpid
//ll_clicked_grpid = 1
////=======================
//datawindow dw_clicked_object
//dw_clicked_object = f_getDwobjectByGrpid(ll_clicked_grpid, dw_a, dw_b, dw_c, dw_d, dw_rec1, dw_rec2, dw_em1, dw_em2, dw_emsro, dw_vine, dw_smcont, dw_fto, dw_team_resvrs, dw_unfilled, dw_unassigned, dw_supervisors, dw_admin)
//if(IsNull(dw_clicked_object) = false) then
//	ll_assgnd_empno = dw_clicked_object.getitemnumber(row, 'sns_board_specs_others_empno')
//	ls_callnum = dw_clicked_object.getitemstring(row, 'sns_board_specs_others_callnum')
//	ls_empname = dw_clicked_object.getitemstring(row, 'sns_board_specs_others_empname')
//	if(IsNull(ls_callnum) = true) then
//		ls_callnum = ""
//	end if
//	if((ll_assgnd_empno = 0) and (f_len_ext(ls_empname) = 0) and (f_len_ext(ls_callnum) > 0)) then
//		dw_clicked_object.setitem(row, 'sns_board_specs_others_empname', '*** UNFILLED ***')
//	end if
//end if
//

///=======================
long ll_clicked_grpid
string ls_subgrpid
ll_clicked_grpid = 135
ls_subgrpid = "G1"
////=======================
datawindow dw_clicked_object
integer li_valid_object
datawindow dw_null
SetNull(dw_null)
dw_clicked_object = f_getDwDispJudObjectByGrpid_mod(ll_clicked_grpid, ls_subgrpid, dw_jud_chief, dw_jud_supr1, dw_null, dw_jud_group1, dw_jud_group2, dw_null, dw_null, dw_null, dw_null, dw_jud_admin, ref li_valid_object)
//dwobject    ll_grpid  ls_subgrpid
//dw_jud_group1 135         'G1'
//dw_jud_group2 136         'G2'
//dw_jud_admin  59          'A0'
//dw_jud_group3 137         'G3'
//dw_jud_group4 138         'G4'
//dw_jud_group5 139         'G5'
//dw_jud_group6 140         'G6'
//dw_jud_chief  118         'C0'
//dw_jud_supr1  135         'S1' 
//dw_jud_supr2  137         'S2'
integer li_dispbd
long ll_empno
if(li_valid_object = 1) then
	if((ll_clicked_grpid = 135) or (ll_clicked_grpid = 136) or (ll_clicked_grpid = 59)) then
		string ls_grpteam
		ls_grpteam = dw_clicked_object.getitemstring(row, 'sns_staffing_groups_grpteam')
		dw_clicked_object.MODIFY("sns_staffing_groups_grpteam.Background.Color = 8454016") //15245824") 
		dw_clicked_object.MODIFY("sns_staffing_groups_grpteam.Color = 1447192") //16777215") 
	end if
	if(gb_show_all_birthdays = true) then
		li_dispbd = dw_clicked_object.getitemnumber(row, "sns_employees_dispbd")
		if(li_dispbd = 0) then
			integer li_oktoshowbd
			li_oktoshowbd = 0
			li_oktoshowbd = dw_clicked_object.getitemnumber(row, "sns_employees_oktoshowbd")
			if(li_oktoshowbd = 1) then
				dw_clicked_object.setitem(row, "sns_employees_dispbd", 4)
			end if			
		end if
	end if
end if

//integer li_dispbd
//if(li_valid_object = 1) then
//	if((ll_clicked_grpid = 135) or (ll_clicked_grpid = 136) or (ll_clicked_grpid = 59)) then
//		string ls_grpteam
//		ls_grpteam = dw_clicked_object.getitemstring(row, 'sns_staffing_groups_grpteam')
//		dw_clicked_object.MODIFY("sns_staffing_groups_grpteam.Background.Color = 8454016") //15245824") 
//		dw_clicked_object.MODIFY("sns_staffing_groups_grpteam.Color = 1447192") //16777215")  blue=16711680
//	end if
//	//0 = wht=0
//	//1 = cyan=16776960
//	//2 = red=255
//	//3 = grn=65280
//	//4 = blue=16711680	
//	if(gb_show_all_birthdays = true) then
////		choose case li_dispbd
////			case 0
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Background.Color = 0")
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Color = 16777215")
////			case 1
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Background.Color = 16776960")
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Color = 16777215")			
////			case 2
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Background.Color = 255")
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Color = 0")			
////			case 3
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Background.Color = 65280")
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Color = 16777215")				
////			case 4
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Background.Color = 16711680")
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Color = 0")				
////			case else
////			  //do nothing
////		end choose
////		//if(li_dispbd = 0) then
////		//	dw_clicked_object.setitem(row, "sns_employees_dispbd", 1)
////		//end if
////	else
////		//if(li_dispbd = 0) then
////		//	dw_clicked_object.setitem(row, "sns_employees_dispbd", 1)
////		//end if
////		li_dispbd = dw_clicked_object.getitemnumber(row, "sns_employees_dispbd")
////		choose case li_dispbd
////			case 0
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Background.Color = 0")
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Color = 16777215")
////			case 1
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Background.Color = 16776960")
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Color = 16777215")			
////			case 2
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Background.Color = 255")
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Color = 0")			
////			case 3
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Background.Color = 65280")
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Color = 16777215")				
////			case 4
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Background.Color = 16711680")
////				dw_clicked_object.MODIFY("sns_employees_dobshort.Color = 0")				
////			case else
////			  //do nothing
////		end choose
//	end if
//end if
//
end event

type dw_jud_supr1 from datawindow within w_judicial_services
integer x = 1349
integer y = 412
integer width = 1824
integer height = 340
integer taborder = 30
string title = "none"
string dataobject = "dw_jud_supervisors"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event doubleclicked;////change supervisor
//long ll_row 
//ll_row = row
//string ls_dwoname
//ls_dwoname = dwo.name
//if(ls_dwoname = "sns_employees_empname") then
//	//select lieutenant
//	string ls_messageparm
//	ls_messageparm = "116,64"
//	OpenWithParm(w_add_lt, ls_messageparm)
//	string ls_selected_username
//	ls_selected_username = Message.StringParm //ie: WILLES-DOUGLAS      [14480]
//	if(f_len_ext(ls_selected_username) > 0) then
//		string ls_empno 
//		ls_empno = f_extract_bracketed_item(ls_selected_username, "[", "]", true)
//		long ll_empno
//		ll_empno = f_stol(ls_empno)
//		if(ll_empno > 0) then
//			string ls_callnum
//			string ls_empname
//			integer li_pos
//			li_pos = pos(ls_selected_username, "[")
//			if(li_pos > 0) then
//				ls_empname = trim(mid(ls_selected_username, 1, (li_pos - 1)))
//			end if
//			ls_callnum = ""
//			//
//			select callnum into :ls_callnum from sns_staffing_grps_positions2 where assgnd_empno = :ll_empno using sqlca;
//			//
//			if(IsNull(ls_callnum) = true) then
//				ls_callnum = ""
//			end if
//			dw_lt_teamabcd.setitem(ll_row, "sns_employees_empname", ls_empname)
//			dw_lt_teamabcd.setitem(ll_row, "sns_staffing_grps_positions2_callnum", ls_callnum)
//			//
//			update sns_bd_others_layout_specs
//			set assgnd_lt = :ll_empno
//			where grpid in (1,2,3,4)
//			using sqlca;
//			//
//			if(sqlca.sqlcode <> -1) then
//				//
//				commit using sqlca;
//				//
//				dw_lt_teamabcd.Retrieve(1)
//			else
//				//
//				rollback using sqlca;
//				//
//			end if
//		end if
//	end if			
//end if
//
end event

event retrieverow;/////=======================
//long ll_clicked_grpid
//string ls_subgrpid
//ll_clicked_grpid = 135
//ls_subgrpid = "S1"
//////=======================
//datawindow dw_clicked_object
//dw_clicked_object = f_getDwDispJudObjectByGrpid(ll_clicked_grpid, ls_subgrpid, dw_jud_chief, dw_jud_supr1, dw_jud_supr2, dw_jud_group1, dw_jud_group2, dw_jud_group3, dw_jud_group4, dw_jud_group5, dw_jud_group6, dw_jud_admin)
////dwobject    ll_grpid  ls_subgrpid
////dw_jud_group1 135         'G1'
////dw_jud_group2 136         'G2'
////dw_jud_admin  59          'A0'
////dw_jud_group3 137         'G3'
////dw_jud_group4 138         'G4'
////dw_jud_group5 139         'G5'
////dw_jud_group6 140         'G6'
////dw_jud_chief  118         'C0'
////dw_jud_supr1  135         'S1' 
////dw_jud_supr2  137         'S2'
//if(IsNull(dw_clicked_object) = false) then
//	string ls_grpteam
//	//ls_grpteam = dw_clicked_object.getitemstring(row, 'sns_staffing_groups_grpteam')
//	//dw_clicked_object.MODIFY("dw_jud_supr1.Background.color =250") 
//	dw_clicked_object.Modify("DataWindow.Color='15245824'")
//end if
//
///=======================
long ll_clicked_grpid
string ls_subgrpid
ll_clicked_grpid = 117
ls_subgrpid = "S1"
////=======================
datawindow dw_clicked_object
integer li_valid_object
datawindow dw_null
SetNull(dw_null)
dw_clicked_object = f_getDwDispJudObjectByGrpid_mod(ll_clicked_grpid, ls_subgrpid, dw_jud_chief, dw_jud_supr1, dw_null, dw_jud_group1, dw_jud_group2, dw_null, dw_null, dw_null, dw_null, dw_jud_admin, ref li_valid_object)
//dwobject    ll_grpid  ls_subgrpid
//dw_jud_group1 135         'G1'
//dw_jud_group2 136         'G2'
//dw_jud_admin  59          'A0'
//dw_jud_group3 137         'G3'
//dw_jud_group4 138         'G4'
//dw_jud_group5 139         'G5'
//dw_jud_group6 140         'G6'
//dw_jud_chief  118         'C0'
//dw_jud_supr1  135         'S1' 
//dw_jud_supr2  137         'S2'
integer li_dispbd
if(li_valid_object = 1) then
//	string ls_grpteam
//	ls_grpteam = dw_clicked_object.getitemstring(row, 'sns_staffing_groups_grpteam')
//	dw_clicked_object.MODIFY("sns_staffing_groups_grpteam.Background.Color = 8454016") //15245824") 
//	dw_clicked_object.MODIFY("sns_staffing_groups_grpteam.Color = 1447192") //16777215") 
	if(gb_show_all_birthdays = true) then
		li_dispbd = dw_clicked_object.getitemnumber(row, "sns_employees_dispbd")
		if(li_dispbd = 0) then
			integer li_oktoshowbd 
			li_oktoshowbd = 0
			li_oktoshowbd = dw_clicked_object.getitemnumber(row, "sns_employees_oktoshowbd")
			if(li_oktoshowbd = 1) then
				dw_clicked_object.setitem(row, "sns_employees_dispbd", 1)
			end if
		end if
	end if
end if

end event

type dw_jud_chief from datawindow within w_judicial_services
integer x = 1358
integer y = 28
integer width = 1824
integer height = 340
integer taborder = 20
string title = "none"
string dataobject = "dw_jud_chief_lt"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event doubleclicked;////change supervisor
//long ll_row 
//ll_row = row
//string ls_dwoname
//ls_dwoname = dwo.name
//if(ls_dwoname = "sns_employees_empname") then
//	//select lieutenant
//	string ls_messageparm
//	ls_messageparm = "116,64"
//	OpenWithParm(w_add_lt, ls_messageparm)
//	string ls_selected_username
//	ls_selected_username = Message.StringParm //ie: WILLES-DOUGLAS      [14480]
//	if(f_len_ext(ls_selected_username) > 0) then
//		string ls_empno 
//		ls_empno = f_extract_bracketed_item(ls_selected_username, "[", "]", true)
//		long ll_empno
//		ll_empno = f_stol(ls_empno)
//		if(ll_empno > 0) then
//			string ls_callnum
//			string ls_empname
//			integer li_pos
//			li_pos = pos(ls_selected_username, "[")
//			if(li_pos > 0) then
//				ls_empname = trim(mid(ls_selected_username, 1, (li_pos - 1)))
//			end if
//			ls_callnum = ""
//			//
//			select callnum into :ls_callnum from sns_staffing_grps_positions2 where assgnd_empno = :ll_empno using sqlca;
//			//
//			if(IsNull(ls_callnum) = true) then
//				ls_callnum = ""
//			end if
//			dw_lt_teamabcd.setitem(ll_row, "sns_employees_empname", ls_empname)
//			dw_lt_teamabcd.setitem(ll_row, "sns_staffing_grps_positions2_callnum", ls_callnum)
//			//
//			update sns_bd_others_layout_specs
//			set assgnd_lt = :ll_empno
//			where grpid in (1,2,3,4)
//			using sqlca;
//			//
//			if(sqlca.sqlcode <> -1) then
//				//
//				commit using sqlca;
//				//
//				dw_lt_teamabcd.Retrieve(1)
//			else
//				//
//				rollback using sqlca;
//				//
//			end if
//		end if
//	end if			
//end if
//
end event

event retrieverow;///=======================
long ll_clicked_grpid
string ls_subgrpid
ll_clicked_grpid = 118
ls_subgrpid = "C0"
////=======================
datawindow dw_clicked_object
integer li_valid_object
datawindow dw_null
SetNull(dw_null)
dw_clicked_object = f_getDwDispJudObjectByGrpid_mod(ll_clicked_grpid, ls_subgrpid, dw_jud_chief, dw_jud_supr1, dw_null, dw_jud_group1, dw_jud_group2, dw_null, dw_null, dw_null, dw_null, dw_jud_admin, ref li_valid_object)
//dwobject    ll_grpid  ls_subgrpid
//dw_jud_group1 135         'G1'
//dw_jud_group2 136         'G2'
//dw_jud_admin  59          'A0'
//dw_jud_group3 137         'G3'
//dw_jud_group4 138         'G4'
//dw_jud_group5 139         'G5'
//dw_jud_group6 140         'G6'
//dw_jud_chief  118         'C0'
//dw_jud_supr1  135         'S1' 
//dw_jud_supr2  137         'S2'
integer li_dispbd
if(li_valid_object = 1) then
//	string ls_grpteam
//	ls_grpteam = dw_clicked_object.getitemstring(row, 'sns_staffing_groups_grpteam')
//	dw_clicked_object.MODIFY("sns_staffing_groups_grpteam.Background.Color = 8454016") //15245824") 
//	dw_clicked_object.MODIFY("sns_staffing_groups_grpteam.Color = 1447192") //16777215") 
	if(gb_show_all_birthdays = true) then
		li_dispbd = dw_clicked_object.getitemnumber(row, "sns_employees_dispbd")
		if(li_dispbd = 0) then
			integer li_oktoshowbd
			li_oktoshowbd = 0
			li_oktoshowbd = dw_clicked_object.getitemnumber(row, "sns_employees_oktoshowbd")
			if(li_oktoshowbd = 1) then
				dw_clicked_object.setitem(row, "sns_employees_dispbd", 1)
			end if
		end if
	end if
end if

end event

type st_1 from statictext within w_judicial_services
integer x = 14
integer y = 20
integer width = 1129
integer height = 84
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16711680
long backcolor = 553648127
string text = "Judicial Support Assignments"
boolean focusrectangle = false
end type

type pb_2 from picturebutton within w_judicial_services
integer y = 104
integer width = 251
integer height = 100
integer taborder = 20
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "CLOSE"
boolean originalsize = true
long textcolor = 16777215
long backcolor = 255
end type

event clicked;close(w_judicial_services)
end event

type pb_1 from picturebutton within w_judicial_services
integer x = 23
integer y = 264
integer width = 1225
integer height = 328
integer taborder = 10
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "\\ucfs1\apps\pix\ucso_staffing\staffingiconnew.png"
end type

