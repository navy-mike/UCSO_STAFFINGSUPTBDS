$PBExportHeader$w_processing.srw
forward
global type w_processing from window
end type
type st_1 from statictext within w_processing
end type
type pb_1 from picturebutton within w_processing
end type
end forward

global type w_processing from window
integer width = 315
integer height = 280
boolean border = false
windowtype windowtype = popup!
long backcolor = 67108864
string icon = "AppIcon!"
boolean clientedge = true
boolean center = true
st_1 st_1
pb_1 pb_1
end type
global w_processing w_processing

on w_processing.create
this.st_1=create st_1
this.pb_1=create pb_1
this.Control[]={this.st_1,&
this.pb_1}
end on

on w_processing.destroy
destroy(this.st_1)
destroy(this.pb_1)
end on

type st_1 from statictext within w_processing
integer x = 23
integer y = 208
integer width = 247
integer height = 64
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tw Cen MT Condensed"
long textcolor = 33554432
long backcolor = 67108864
string text = "Processing..."
boolean focusrectangle = false
end type

type pb_1 from picturebutton within w_processing
integer x = 9
integer width = 274
integer height = 204
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "\\ucfs1\apps\pix\ucso_staffing\Fidget-spinner.gif"
alignment htextalign = left!
end type

event clicked;close(w_processing)
end event

