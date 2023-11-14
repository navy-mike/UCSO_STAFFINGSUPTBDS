$PBExportHeader$w_patrol_director.srw
forward
global type w_patrol_director from window
end type
type pb_14 from picturebutton within w_patrol_director
end type
end forward

global type w_patrol_director from window
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
end type
global w_patrol_director w_patrol_director

on w_patrol_director.create
this.pb_14=create pb_14
this.Control[]={this.pb_14}
end on

on w_patrol_director.destroy
destroy(this.pb_14)
end on

type pb_14 from picturebutton within w_patrol_director
integer x = 14
integer y = 16
integer width = 119
integer height = 92
integer taborder = 10
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "X"
boolean originalsize = true
long textcolor = 16777215
long backcolor = 255
end type

event clicked;close(w_pat_assmts_updates)
end event

