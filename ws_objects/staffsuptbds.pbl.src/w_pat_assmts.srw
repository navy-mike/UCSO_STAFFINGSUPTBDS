$PBExportHeader$w_pat_assmts.srw
forward
global type w_pat_assmts from window
end type
type pb_14 from picturebutton within w_pat_assmts
end type
type st_1 from statictext within w_pat_assmts
end type
end forward

global type w_pat_assmts from window
integer width = 4754
integer height = 2200
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
pb_14 pb_14
st_1 st_1
end type
global w_pat_assmts w_pat_assmts

on w_pat_assmts.create
this.pb_14=create pb_14
this.st_1=create st_1
this.Control[]={this.pb_14,&
this.st_1}
end on

on w_pat_assmts.destroy
destroy(this.pb_14)
destroy(this.st_1)
end on

type pb_14 from picturebutton within w_pat_assmts
integer x = 4430
integer y = 16
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

event clicked;close(w_pat_assmts)
end event

type st_1 from statictext within w_pat_assmts
integer x = 50
integer y = 24
integer width = 512
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Patrol Assignments"
boolean focusrectangle = false
end type

