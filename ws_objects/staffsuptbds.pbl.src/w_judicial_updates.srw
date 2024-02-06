$PBExportHeader$w_judicial_updates.srw
forward
global type w_judicial_updates from window
end type
type st_1 from statictext within w_judicial_updates
end type
type pb_close from picturebutton within w_judicial_updates
end type
end forward

global type w_judicial_updates from window
integer width = 4754
integer height = 2200
boolean titlebar = true
string title = "Judicial"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_1 st_1
pb_close pb_close
end type
global w_judicial_updates w_judicial_updates

on w_judicial_updates.create
this.st_1=create st_1
this.pb_close=create pb_close
this.Control[]={this.st_1,&
this.pb_close}
end on

on w_judicial_updates.destroy
destroy(this.st_1)
destroy(this.pb_close)
end on

type st_1 from statictext within w_judicial_updates
integer x = 197
integer y = 28
integer width = 1198
integer height = 84
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16711680
long backcolor = 553648127
string text = "Judicial Assignments Updates"
boolean focusrectangle = false
end type

type pb_close from picturebutton within w_judicial_updates
integer x = 27
integer y = 24
integer width = 114
integer height = 100
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "X"
boolean originalsize = true
alignment htextalign = Center!
end type

