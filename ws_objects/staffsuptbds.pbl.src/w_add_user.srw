$PBExportHeader$w_add_user.srw
forward
global type w_add_user from window
end type
type sle_grpid from singlelineedit within w_add_user
end type
type sle_filtered_count from singlelineedit within w_add_user
end type
type sle_selected_employee from singlelineedit within w_add_user
end type
type sle_lastname_filter from singlelineedit within w_add_user
end type
type st_2 from statictext within w_add_user
end type
type pb_close from picturebutton within w_add_user
end type
type dw_add_emp_list from datawindow within w_add_user
end type
type sle_lookup_lastusername from singlelineedit within w_add_user
end type
type st_1 from statictext within w_add_user
end type
end forward

global type w_add_user from window
integer width = 1353
integer height = 1500
boolean titlebar = true
string title = "Add User Name To Staffing"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 65535
string icon = "AppIcon!"
boolean center = true
sle_grpid sle_grpid
sle_filtered_count sle_filtered_count
sle_selected_employee sle_selected_employee
sle_lastname_filter sle_lastname_filter
st_2 st_2
pb_close pb_close
dw_add_emp_list dw_add_emp_list
sle_lookup_lastusername sle_lookup_lastusername
st_1 st_1
end type
global w_add_user w_add_user

on w_add_user.create
this.sle_grpid=create sle_grpid
this.sle_filtered_count=create sle_filtered_count
this.sle_selected_employee=create sle_selected_employee
this.sle_lastname_filter=create sle_lastname_filter
this.st_2=create st_2
this.pb_close=create pb_close
this.dw_add_emp_list=create dw_add_emp_list
this.sle_lookup_lastusername=create sle_lookup_lastusername
this.st_1=create st_1
this.Control[]={this.sle_grpid,&
this.sle_filtered_count,&
this.sle_selected_employee,&
this.sle_lastname_filter,&
this.st_2,&
this.pb_close,&
this.dw_add_emp_list,&
this.sle_lookup_lastusername,&
this.st_1}
end on

on w_add_user.destroy
destroy(this.sle_grpid)
destroy(this.sle_filtered_count)
destroy(this.sle_selected_employee)
destroy(this.sle_lastname_filter)
destroy(this.st_2)
destroy(this.pb_close)
destroy(this.dw_add_emp_list)
destroy(this.sle_lookup_lastusername)
destroy(this.st_1)
end on

event open;string ls_messageparm
ls_messageparm = Message.StringParm
if(f_len_ext(ls_messageparm) > 0) then
	sle_grpid.text = ls_messageparm
	dw_add_emp_list.settransobject(sqlca)
	dw_add_emp_list.retrieve()
else
	CloseWithReturn(w_add_user, "")
end if




end event

type sle_grpid from singlelineedit within w_add_user
integer x = 41
integer y = 1316
integer width = 206
integer height = 92
integer taborder = 50
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long backcolor = 12632256
string text = "0"
borderstyle borderstyle = stylelowered!
end type

type sle_filtered_count from singlelineedit within w_add_user
integer x = 1029
integer y = 136
integer width = 133
integer height = 92
integer taborder = 40
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 12639424
string text = "0"
borderstyle borderstyle = stylelowered!
end type

type sle_selected_employee from singlelineedit within w_add_user
integer x = 187
integer y = 1168
integer width = 1001
integer height = 92
integer taborder = 40
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long backcolor = 12632256
borderstyle borderstyle = stylelowered!
end type

type sle_lastname_filter from singlelineedit within w_add_user
integer x = 183
integer y = 1056
integer width = 1006
integer height = 92
integer taborder = 40
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long backcolor = 12632256
borderstyle borderstyle = stylelowered!
end type

type st_2 from statictext within w_add_user
integer x = 178
integer y = 856
integer width = 1006
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16711680
long backcolor = 553648127
string text = "~'Double click on username to add~'"
alignment alignment = center!
boolean focusrectangle = false
end type

type pb_close from picturebutton within w_add_user
integer x = 535
integer y = 916
integer width = 256
integer height = 104
integer taborder = 30
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Cancel"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 255
end type

event clicked;CloseWithReturn(w_add_user, "")
end event

type dw_add_emp_list from datawindow within w_add_user
integer x = 32
integer y = 240
integer width = 1280
integer height = 608
integer taborder = 20
string dataobject = "dw_employees_list_edit"
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

event doubleclicked;string ls_dwo_name
ls_dwo_name = upper(dwo.name)
if(ls_dwo_name = 'COMPUTE_0001') then
	string ls_lastname
	string ls_firstname
	string ls_mi
	string ls_empname
	string ls_empno
	long ll_empno
	ls_empname = dw_add_emp_list.getitemstring(row, 'COMPUTE_0001') //THOMAS-PHILIP       {100-42110}
	if(len(ls_empname) > 0) then
		ls_empno = f_extract_bracketed_item(ls_empname, "[", "]", true)
		ll_empno = long(ls_empno)
		integer li_pos
		li_pos = pos(ls_empname, "{")
		if(li_pos > 0) then
			ls_empname = trim(upper(mid(ls_empname, 1, (li_pos - 1))))
		end if
		if(len(ls_empname) > 0) then
			f_extract_firstlastmi(ls_empname, ref ls_firstname, ref ls_lastname, ref ls_mi)
			if(len(ls_lastname) > 0) then
				CloseWithReturn(w_add_user, ls_empname)
			end if
	   end if
	end if
end if
end event

type sle_lookup_lastusername from singlelineedit within w_add_user
event ue_lname_lookfor pbm_enchange
integer x = 160
integer y = 136
integer width = 859
integer height = 92
integer taborder = 10
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 12639424
textcase textcase = upper!
borderstyle borderstyle = stylelowered!
end type

event ue_lname_lookfor;string ls_text
string ls_lastname
string ls_compute_0001
dw_add_emp_list.selectrow(0, false)
dw_add_emp_list.visible = true
dw_add_emp_list.selectrow(0, false)
ls_lastname = sle_lookup_lastusername.Text
ls_compute_0001 = dw_add_emp_list.getitemstring(1, 'compute_0001') //ie: BATES-ALEX      [17341] {272-42201}
ls_text = f_filter_dw(ref dw_add_emp_list, ls_lastname)
dw_add_emp_list.setfilter(ls_text)
dw_add_emp_list.filter()

sle_lastname_filter.Text = ls_text
sle_filtered_count.Text = string(dw_add_emp_list.RowCount())
end event

type st_1 from statictext within w_add_user
integer x = 178
integer y = 52
integer width = 983
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16711680
long backcolor = 553648127
string text = "Enter Users Lastname to Add:"
boolean focusrectangle = false
end type

