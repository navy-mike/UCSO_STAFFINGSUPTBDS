$PBExportHeader$w_pat_invest.srw
forward
global type w_pat_invest from window
end type
type st_1 from statictext within w_pat_invest
end type
end forward

global type w_pat_invest from window
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
st_1 st_1
end type
global w_pat_invest w_pat_invest

on w_pat_invest.create
this.st_1=create st_1
this.Control[]={this.st_1}
end on

on w_pat_invest.destroy
destroy(this.st_1)
end on

type st_1 from statictext within w_pat_invest
integer x = 210
integer y = 72
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
string text = "w_pat_investigations"
boolean focusrectangle = false
end type

