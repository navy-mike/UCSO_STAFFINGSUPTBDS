$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type st_2 from statictext within w_main
end type
type pb_15 from picturebutton within w_main
end type
type pb_test from picturebutton within w_main
end type
type st_copyright from statictext within w_main
end type
type pb_1 from picturebutton within w_main
end type
type pb_13 from picturebutton within w_main
end type
type pb_12 from picturebutton within w_main
end type
type pb_11 from picturebutton within w_main
end type
type pb_10 from picturebutton within w_main
end type
type pb_9 from picturebutton within w_main
end type
type pb_8 from picturebutton within w_main
end type
type pb_7 from picturebutton within w_main
end type
type pb_6 from picturebutton within w_main
end type
type pb_5 from picturebutton within w_main
end type
type pb_4 from picturebutton within w_main
end type
type pb_3 from picturebutton within w_main
end type
type pb_2 from picturebutton within w_main
end type
type pb_patrol from picturebutton within w_main
end type
type ln_1 from line within w_main
end type
type ln_2 from line within w_main
end type
type ln_3 from line within w_main
end type
type ln_4 from line within w_main
end type
type ln_5 from line within w_main
end type
type ln_6 from line within w_main
end type
type ln_7 from line within w_main
end type
type ln_8 from line within w_main
end type
type ln_9 from line within w_main
end type
type ln_10 from line within w_main
end type
type ln_12 from line within w_main
end type
type ln_13 from line within w_main
end type
type ln_11 from line within w_main
end type
type st_1 from statictext within w_main
end type
type pb_14 from picturebutton within w_main
end type
end forward

global type w_main from window
integer width = 2702
integer height = 2308
boolean titlebar = true
string title = "Staffing Boards"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_2 st_2
pb_15 pb_15
pb_test pb_test
st_copyright st_copyright
pb_1 pb_1
pb_13 pb_13
pb_12 pb_12
pb_11 pb_11
pb_10 pb_10
pb_9 pb_9
pb_8 pb_8
pb_7 pb_7
pb_6 pb_6
pb_5 pb_5
pb_4 pb_4
pb_3 pb_3
pb_2 pb_2
pb_patrol pb_patrol
ln_1 ln_1
ln_2 ln_2
ln_3 ln_3
ln_4 ln_4
ln_5 ln_5
ln_6 ln_6
ln_7 ln_7
ln_8 ln_8
ln_9 ln_9
ln_10 ln_10
ln_12 ln_12
ln_13 ln_13
ln_11 ln_11
st_1 st_1
pb_14 pb_14
end type
global w_main w_main

on w_main.create
this.st_2=create st_2
this.pb_15=create pb_15
this.pb_test=create pb_test
this.st_copyright=create st_copyright
this.pb_1=create pb_1
this.pb_13=create pb_13
this.pb_12=create pb_12
this.pb_11=create pb_11
this.pb_10=create pb_10
this.pb_9=create pb_9
this.pb_8=create pb_8
this.pb_7=create pb_7
this.pb_6=create pb_6
this.pb_5=create pb_5
this.pb_4=create pb_4
this.pb_3=create pb_3
this.pb_2=create pb_2
this.pb_patrol=create pb_patrol
this.ln_1=create ln_1
this.ln_2=create ln_2
this.ln_3=create ln_3
this.ln_4=create ln_4
this.ln_5=create ln_5
this.ln_6=create ln_6
this.ln_7=create ln_7
this.ln_8=create ln_8
this.ln_9=create ln_9
this.ln_10=create ln_10
this.ln_12=create ln_12
this.ln_13=create ln_13
this.ln_11=create ln_11
this.st_1=create st_1
this.pb_14=create pb_14
this.Control[]={this.st_2,&
this.pb_15,&
this.pb_test,&
this.st_copyright,&
this.pb_1,&
this.pb_13,&
this.pb_12,&
this.pb_11,&
this.pb_10,&
this.pb_9,&
this.pb_8,&
this.pb_7,&
this.pb_6,&
this.pb_5,&
this.pb_4,&
this.pb_3,&
this.pb_2,&
this.pb_patrol,&
this.ln_1,&
this.ln_2,&
this.ln_3,&
this.ln_4,&
this.ln_5,&
this.ln_6,&
this.ln_7,&
this.ln_8,&
this.ln_9,&
this.ln_10,&
this.ln_12,&
this.ln_13,&
this.ln_11,&
this.st_1,&
this.pb_14}
end on

on w_main.destroy
destroy(this.st_2)
destroy(this.pb_15)
destroy(this.pb_test)
destroy(this.st_copyright)
destroy(this.pb_1)
destroy(this.pb_13)
destroy(this.pb_12)
destroy(this.pb_11)
destroy(this.pb_10)
destroy(this.pb_9)
destroy(this.pb_8)
destroy(this.pb_7)
destroy(this.pb_6)
destroy(this.pb_5)
destroy(this.pb_4)
destroy(this.pb_3)
destroy(this.pb_2)
destroy(this.pb_patrol)
destroy(this.ln_1)
destroy(this.ln_2)
destroy(this.ln_3)
destroy(this.ln_4)
destroy(this.ln_5)
destroy(this.ln_6)
destroy(this.ln_7)
destroy(this.ln_8)
destroy(this.ln_9)
destroy(this.ln_10)
destroy(this.ln_12)
destroy(this.ln_13)
destroy(this.ln_11)
destroy(this.st_1)
destroy(this.pb_14)
end on

event open;st_copyright.Text = f_get_copyright(ref st_copyright)
if(gs_winuser <> "MIKEJ") then
	pb_10.enabled = false
	pb_test.visible = false
end if
end event

type st_2 from statictext within w_main
integer x = 2336
integer y = 2116
integer width = 279
integer height = 56
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tw Cen MT Condensed"
long textcolor = 255
long backcolor = 553648127
string text = "03/14/2024 09:45"
boolean focusrectangle = false
end type

type pb_15 from picturebutton within w_main
integer x = 407
integer y = 1404
integer width = 645
integer height = 104
integer taborder = 40
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Patrol-EM"
boolean originalsize = true
string powertiptext = "Eagle Mountain Assignments"
end type

event clicked;open(w_pat_eagle_mtn)
end event

type pb_test from picturebutton within w_main
integer x = 5
integer y = 2092
integer width = 123
integer height = 92
integer taborder = 50
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "test"
boolean originalsize = true
alignment htextalign = left!
end type

event clicked;//integer li_num_found
//long ll_grpid
//ll_grpid = 11
//string lsa_avail_callnums[]
//li_num_found = f_get_avail_group_callnums(ll_grpid, ref lsa_avail_callnums, ref sqlca)
//if(li_num_found > 0) then
//end if
if(gs_winuser = "MIKEJ") then
	open(w_testing)
end if
end event

type st_copyright from statictext within w_main
integer x = 434
integer y = 2116
integer width = 1861
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 12632256
string text = "Copyright CCCCCC 2021-2023 UtahCounty.gov [DDDDDD] {UUUUUU}"
alignment alignment = center!
boolean focusrectangle = false
end type

event doubleclicked;if(gs_winuser = "MIKEJ") then
	open(w_devel_supt)
end if
end event

type pb_1 from picturebutton within w_main
integer x = 224
integer y = 32
integer width = 2208
integer height = 328
integer taborder = 50
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "\\ucfs1\apps\pix\ucso_staffing\staffingiconnew.png"
end type

type pb_13 from picturebutton within w_main
integer x = 421
integer y = 1808
integer width = 498
integer height = 224
integer taborder = 40
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Volunteers"
boolean originalsize = true
vtextalign vtextalign = vcenter!
end type

type pb_12 from picturebutton within w_main
integer x = 411
integer y = 1556
integer width = 498
integer height = 224
integer taborder = 40
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Investigations"
boolean originalsize = true
vtextalign vtextalign = vcenter!
end type

type pb_11 from picturebutton within w_main
integer x = 407
integer y = 1308
integer width = 649
integer height = 104
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Patrol Assignments"
boolean originalsize = true
string powertiptext = "Patrol Assignments"
end type

event clicked;open(w_pat_assmts)
end event

type pb_10 from picturebutton within w_main
integer x = 407
integer y = 1052
integer width = 503
integer height = 224
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Admin"
boolean originalsize = true
vtextalign vtextalign = vcenter!
string powertiptext = "Patrol Assignments Changes"
end type

event clicked;open(w_admin)

end event

type pb_9 from picturebutton within w_main
integer x = 1353
integer y = 1324
integer width = 539
integer height = 224
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Judicial Services"
boolean originalsize = true
vtextalign vtextalign = vcenter!
end type

event clicked;open(w_judicial_services)
end event

type pb_8 from picturebutton within w_main
integer x = 1349
integer y = 1072
integer width = 549
integer height = 224
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Judicial Deputies"
boolean originalsize = true
vtextalign vtextalign = vcenter!
end type

event clicked;open(w_judicial_deputies)
end event

type pb_7 from picturebutton within w_main
integer x = 2094
integer y = 1804
integer width = 503
integer height = 224
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "ECS Team"
boolean originalsize = true
end type

type pb_6 from picturebutton within w_main
integer x = 2094
integer y = 1552
integer width = 498
integer height = 224
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "TERT"
boolean originalsize = true
end type

type pb_5 from picturebutton within w_main
integer x = 2094
integer y = 1300
integer width = 498
integer height = 224
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Mounted Posse"
boolean originalsize = true
end type

type pb_4 from picturebutton within w_main
integer x = 2094
integer y = 1048
integer width = 498
integer height = 224
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Search & Rescue"
boolean originalsize = true
end type

type pb_3 from picturebutton within w_main
integer x = 1710
integer y = 580
integer width = 558
integer height = 380
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean originalsize = true
string picturename = "\\ucfs1\apps\pix\ucso_staffing\sbadge_emerg_svcs.png"
end type

type pb_2 from picturebutton within w_main
integer x = 1010
integer y = 576
integer width = 562
integer height = 408
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean originalsize = true
string picturename = "\\ucfs1\apps\pix\ucso_staffing\sbadge_judicial_new.png"
string powertiptext = "Judicial Assignments Board"
end type

event clicked;open(w_judicial)
end event

type pb_patrol from picturebutton within w_main
integer x = 23
integer y = 568
integer width = 558
integer height = 408
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean originalsize = true
string picturename = "\\ucfs1\apps\pix\ucso_staffing\sbadge_patrol.png"
string powertiptext = "Chief Deputy Board"
end type

event clicked;open(w_pat_chief_deputy)
end event

type ln_1 from line within w_main
long linecolor = 33554432
integer linethickness = 11
integer beginx = 1979
integer beginy = 960
integer endx = 1979
integer endy = 1916
end type

type ln_2 from line within w_main
long linecolor = 33554432
integer linethickness = 11
integer beginx = 1984
integer beginy = 1912
integer endx = 2094
integer endy = 1912
end type

type ln_3 from line within w_main
long linecolor = 33554432
integer linethickness = 11
integer beginx = 1979
integer beginy = 1668
integer endx = 2103
integer endy = 1668
end type

type ln_4 from line within w_main
long linecolor = 33554432
integer linethickness = 11
integer beginx = 1979
integer beginy = 1408
integer endx = 2103
integer endy = 1408
end type

type ln_5 from line within w_main
long linecolor = 33554432
integer linethickness = 11
integer beginx = 1979
integer beginy = 1160
integer endx = 2103
integer endy = 1160
end type

type ln_6 from line within w_main
long linecolor = 33554432
integer linethickness = 11
integer beginx = 1207
integer beginy = 1192
integer endx = 1330
integer endy = 1192
end type

type ln_7 from line within w_main
long linecolor = 33554432
integer linethickness = 11
integer beginx = 1202
integer beginy = 1420
integer endx = 1326
integer endy = 1420
end type

type ln_8 from line within w_main
long linecolor = 33554432
integer linethickness = 11
integer beginx = 1198
integer beginy = 980
integer endx = 1198
integer endy = 1428
end type

type ln_9 from line within w_main
long linecolor = 33554432
integer linethickness = 11
integer beginx = 293
integer beginy = 1176
integer endx = 416
integer endy = 1176
end type

type ln_10 from line within w_main
long linecolor = 33554432
integer linethickness = 11
integer beginx = 288
integer beginy = 1404
integer endx = 411
integer endy = 1404
end type

type ln_12 from line within w_main
long linecolor = 33554432
integer linethickness = 11
integer beginx = 293
integer beginy = 1656
integer endx = 416
integer endy = 1656
end type

type ln_13 from line within w_main
long linecolor = 33554432
integer linethickness = 11
integer beginx = 302
integer beginy = 1908
integer endx = 425
integer endy = 1908
end type

type ln_11 from line within w_main
long linecolor = 33554432
integer linethickness = 11
integer beginx = 293
integer beginy = 976
integer endx = 293
integer endy = 1912
end type

type st_1 from statictext within w_main
integer x = 855
integer y = 420
integer width = 891
integer height = 88
boolean bringtotop = true
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16777215
long backcolor = 33488896
string text = "STAFFING BOARDS"
alignment alignment = center!
boolean focusrectangle = false
end type

type pb_14 from picturebutton within w_main
integer x = 9
integer y = 36
integer width = 192
integer height = 92
integer taborder = 10
boolean bringtotop = true
integer textsize = -8
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Close"
boolean originalsize = true
long textcolor = 16777215
long backcolor = 255
end type

event clicked;close(w_main)
end event

