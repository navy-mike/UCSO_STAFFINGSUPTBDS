$PBExportHeader$w_callnum_select.srw
forward
global type w_callnum_select from window
end type
type lb_callnums from listbox within w_callnum_select
end type
type pb_close from picturebutton within w_callnum_select
end type
type st_2 from statictext within w_callnum_select
end type
type st_1 from statictext within w_callnum_select
end type
end forward

global type w_callnum_select from window
integer width = 882
integer height = 852
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 65535
string icon = "AppIcon!"
boolean center = true
lb_callnums lb_callnums
pb_close pb_close
st_2 st_2
st_1 st_1
end type
global w_callnum_select w_callnum_select

on w_callnum_select.create
this.lb_callnums=create lb_callnums
this.pb_close=create pb_close
this.st_2=create st_2
this.st_1=create st_1
this.Control[]={this.lb_callnums,&
this.pb_close,&
this.st_2,&
this.st_1}
end on

on w_callnum_select.destroy
destroy(this.lb_callnums)
destroy(this.pb_close)
destroy(this.st_2)
destroy(this.st_1)
end on

event open;string ls_messageparm
ls_messageparm = Message.StringParm
if(f_len_ext(ls_messageparm) > 0) then
	string lsa_callnums[]
	integer li_num_callnums
	li_num_callnums = f_parseoutstring_ext(ls_messageparm, ",", ref lsa_callnums)
	if(li_num_callnums > 0) then
		lb_callnums.reset()
		integer li_loop
		string ls_loopdata
		for li_loop = 1 to li_num_callnums
			ls_loopdata = lsa_callnums[li_loop]
			lb_callnums.addItem(ls_loopdata)
		next
	end if
end if
end event

type lb_callnums from listbox within w_callnum_select
integer x = 187
integer y = 136
integer width = 480
integer height = 420
integer taborder = 10
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

event doubleclicked;integer li_index
li_index = index
if(li_index > 0) then
	string ls_callnum
	ls_callnum = lb_callnums.Text(li_index)
	CloseWithReturn(w_callnum_select, ls_callnum)
else
	CloseWithReturn(w_callnum_select, "")
end if
end event

type pb_close from picturebutton within w_callnum_select
integer x = 306
integer y = 632
integer width = 256
integer height = 104
integer taborder = 10
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Cancel"
boolean originalsize = true
alignment htextalign = Center!
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 255
end type

event clicked;CloseWithReturn(w_callnum_select, "")
end event

type st_2 from statictext within w_callnum_select
integer y = 564
integer width = 869
integer height = 64
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16711680
long backcolor = 553648127
string text = "~'Double click on callnum to use~'"
alignment alignment = Center!
boolean focusrectangle = false
end type

type st_1 from statictext within w_callnum_select
integer x = 91
integer y = 44
integer width = 690
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16711680
long backcolor = 553648127
string text = "Select CallNum to use:"
boolean focusrectangle = false
end type

