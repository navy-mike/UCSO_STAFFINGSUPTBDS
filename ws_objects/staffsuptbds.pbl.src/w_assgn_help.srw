$PBExportHeader$w_assgn_help.srw
forward
global type w_assgn_help from window
end type
type pb_1 from picturebutton within w_assgn_help
end type
type p_1 from picture within w_assgn_help
end type
type st_1 from statictext within w_assgn_help
end type
end forward

global type w_assgn_help from window
integer width = 2853
integer height = 1452
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
pb_1 pb_1
p_1 p_1
st_1 st_1
end type
global w_assgn_help w_assgn_help

on w_assgn_help.create
this.pb_1=create pb_1
this.p_1=create p_1
this.st_1=create st_1
this.Control[]={this.pb_1,&
this.p_1,&
this.st_1}
end on

on w_assgn_help.destroy
destroy(this.pb_1)
destroy(this.p_1)
destroy(this.st_1)
end on

type pb_1 from picturebutton within w_assgn_help
integer x = 1253
integer y = 16
integer width = 283
integer height = 88
integer taborder = 10
integer textsize = -8
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

event clicked;close(w_assgn_help)
end event

type p_1 from picture within w_assgn_help
integer x = 41
integer y = 120
integer width = 2747
integer height = 1160
string picturename = "\\ucfs1\apps\pix\ucso_staffing\assignments_help.png"
boolean focusrectangle = false
end type

type st_1 from statictext within w_assgn_help
integer x = 69
integer y = 24
integer width = 686
integer height = 84
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33488896
long backcolor = 67108864
string text = "Assignments Help"
boolean focusrectangle = false
end type

