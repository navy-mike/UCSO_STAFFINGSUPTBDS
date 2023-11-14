$PBExportHeader$w_pat_admin.srw
forward
global type w_pat_admin from window
end type
type pb_pat_ass_updating from picturebutton within w_pat_admin
end type
type st_1 from statictext within w_pat_admin
end type
end forward

global type w_pat_admin from window
integer width = 1170
integer height = 748
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
pb_pat_ass_updating pb_pat_ass_updating
st_1 st_1
end type
global w_pat_admin w_pat_admin

on w_pat_admin.create
this.pb_pat_ass_updating=create pb_pat_ass_updating
this.st_1=create st_1
this.Control[]={this.pb_pat_ass_updating,&
this.st_1}
end on

on w_pat_admin.destroy
destroy(this.pb_pat_ass_updating)
destroy(this.st_1)
end on

type pb_pat_ass_updating from picturebutton within w_pat_admin
integer x = 46
integer y = 144
integer width = 942
integer height = 100
integer taborder = 10
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Patrol Assignments Updating"
boolean originalsize = true
long backcolor = 25231232
end type

event clicked;open(w_pat_assmts_updates)
end event

type st_1 from statictext within w_pat_admin
integer x = 50
integer y = 32
integer width = 558
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Patrol Administration"
boolean focusrectangle = false
end type

