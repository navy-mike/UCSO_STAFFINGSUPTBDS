$PBExportHeader$w_testing.srw
forward
global type w_testing from window
end type
type st_5 from statictext within w_testing
end type
type pb_calc from picturebutton within w_testing
end type
type st_4 from statictext within w_testing
end type
type sle_start_mmdd from singlelineedit within w_testing
end type
type lb_cycle_dates from listbox within w_testing
end type
type pb_set_size from picturebutton within w_testing
end type
type st_3 from statictext within w_testing
end type
type st_2 from statictext within w_testing
end type
type st_1 from statictext within w_testing
end type
type sle_height from singlelineedit within w_testing
end type
type sle_width from singlelineedit within w_testing
end type
type pb_close from picturebutton within w_testing
end type
type r_1 from rectangle within w_testing
end type
type r_2 from rectangle within w_testing
end type
type r_3 from rectangle within w_testing
end type
type r_4 from rectangle within w_testing
end type
end forward

global type w_testing from window
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
st_5 st_5
pb_calc pb_calc
st_4 st_4
sle_start_mmdd sle_start_mmdd
lb_cycle_dates lb_cycle_dates
pb_set_size pb_set_size
st_3 st_3
st_2 st_2
st_1 st_1
sle_height sle_height
sle_width sle_width
pb_close pb_close
r_1 r_1
r_2 r_2
r_3 r_3
r_4 r_4
end type
global w_testing w_testing

type variables
long hWnd
boolean bIsOpening
end variables

on w_testing.create
this.st_5=create st_5
this.pb_calc=create pb_calc
this.st_4=create st_4
this.sle_start_mmdd=create sle_start_mmdd
this.lb_cycle_dates=create lb_cycle_dates
this.pb_set_size=create pb_set_size
this.st_3=create st_3
this.st_2=create st_2
this.st_1=create st_1
this.sle_height=create sle_height
this.sle_width=create sle_width
this.pb_close=create pb_close
this.r_1=create r_1
this.r_2=create r_2
this.r_3=create r_3
this.r_4=create r_4
this.Control[]={this.st_5,&
this.pb_calc,&
this.st_4,&
this.sle_start_mmdd,&
this.lb_cycle_dates,&
this.pb_set_size,&
this.st_3,&
this.st_2,&
this.st_1,&
this.sle_height,&
this.sle_width,&
this.pb_close,&
this.r_1,&
this.r_2,&
this.r_3,&
this.r_4}
end on

on w_testing.destroy
destroy(this.st_5)
destroy(this.pb_calc)
destroy(this.st_4)
destroy(this.sle_start_mmdd)
destroy(this.lb_cycle_dates)
destroy(this.pb_set_size)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.sle_height)
destroy(this.sle_width)
destroy(this.pb_close)
destroy(this.r_1)
destroy(this.r_2)
destroy(this.r_3)
destroy(this.r_4)
end on

event resize;//if(bIsOpening = false) then
//	bIsOpening = true
//	unsignedlong ulsizetype
//	ulsizetype = 0
//	integer li_width
//	integer li_height
//	li_width = 4800
//	li_height = 2200
//	if(ulsizetype = 0) then
//		w_testing.SetRedraw(false)
//		w_testing.Resize(5000, 3000)
//		w_testing.SetRedraw(true)
//		w_testing.Show()
//	end if
//
//end if
w_testing.Center = true

end event

event open;bIsOpening = true
hWnd = Handle(w_testing)
if(hWnd > 0) then
end if
end event

type st_5 from statictext within w_testing
integer x = 503
integer y = 120
integer width = 261
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "mm/dd"
alignment alignment = center!
boolean focusrectangle = false
end type

type pb_calc from picturebutton within w_testing
integer x = 800
integer y = 208
integer width = 197
integer height = 100
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Calc"
boolean originalsize = true
alignment htextalign = Center!
end type

event clicked;string ls_birthday
integer li_nrtnvalue
li_nrtnvalue = 0
integer li_to_span
integer li_from_span
li_to_span = 7
li_from_span = 7
integer li_loop_month
integer li_loop_day
li_loop_month = 2
li_loop_day = 14
date dt_relative_bd_start
string ls_birthday_start
ls_birthday_start = f_lpad(string(li_loop_month), 2, "0")
ls_birthday_start += "/"
ls_birthday_start += f_lpad(string(li_loop_day), 2, "0")
ls_birthday_start += "/2024"
date dt_relative
dt_relative_bd_start = date(ls_birthday_start)
dt_relative = RelativeDate(dt_relative_bd_start, 0)

	decimal dec_bd_jd_value
	decimal dec_from_jd_value
	decimal dec_to_jd_value
	decimal dec_curr_jd_value
	integer li_bd_month
	integer li_bd_day
	integer li_bd_year
	datetime dt_curr_datetime
	string ls_curr_datetime
	string ls_curr_date
	integer li_curr_month
	integer li_curr_day
	integer li_curr_year
	string ls_full_birthday
	int li_pos
	string lsa_parseoutdata[]
	integer li_num_parse_items	


integer li_loop
integer li_loop_year
for li_loop = 0 to 20
   dt_relative = RelativeDate(dt_relative_bd_start, li_loop)
	ls_curr_date = string(dt_relative) // 2/14/2024
	
	li_num_parse_items = f_parseoutstring_ext(ls_birthday, "/", ref lsa_parseoutdata)
	if(li_num_parse_items >= 3) then
		li_loop_month = f_stoi(lsa_parseoutdata[1])
		li_loop_day = f_stoi(lsa_parseoutdata[2])
		li_loop_year = f_stoi(lsa_parseoutdata[3])
		ls_birthday = f_lpad(string(li_loop_month), 2, "0")
		ls_birthday += "/"
		ls_birthday += f_lpad(string(li_loop_day), 2, "0")
	
	end if

	//ls_birthday = "02/29"
	
	li_pos = pos(ls_birthday, "/")
	if(li_pos > 1) then
		li_bd_month = f_stoi(mid(ls_birthday, 1, (li_pos - 1)))
		li_bd_day = f_stoi(mid(ls_birthday, (li_pos + 1)))
		ls_curr_datetime = ""
		dt_curr_datetime = f_get_system_datetime(ls_curr_datetime)
		ls_curr_datetime = string(dt_curr_datetime) //ie: 2/21/2024 12:11:00
		li_pos = pos(ls_curr_datetime, " ")
		if(li_pos > 0) then
			ls_curr_date = trim(mid(ls_curr_datetime, 1, (li_pos - 1)))
			li_num_parse_items = f_parseoutstring_ext(ls_curr_date, "/", ref lsa_parseoutdata)
			if(li_num_parse_items = 3) then
				string ls_year
				ls_year = trim(lsa_parseoutdata[3])
				li_curr_year = f_stoi(ls_year)
				li_bd_year = li_curr_year
				li_curr_month = f_stoi(lsa_parseoutdata[1])
				li_curr_day = f_stoi(lsa_parseoutdata[2])
				if(li_bd_month = 12) then
					if((li_to_span + li_bd_day) > 31) then
						li_bd_year = (li_curr_year + 1)
					end if
				end if
				ls_full_birthday = string(li_bd_month) + "/" + string(li_bd_day) + "/" + string(li_bd_year)
				datetime dt_full_birthday
				dt_full_birthday = datetime(ls_full_birthday)
				dec_bd_jd_value = f_get_julian_date_value(dt_full_birthday) //ie: 1077667200  2/22/2024 07:18:00 note: only use mm/dd/yyyy for julian birthday
				if(dec_bd_jd_value > 0) then
					ls_curr_date = ls_curr_date + " 00:00:00"
					dt_curr_datetime = datetime(ls_curr_date)
					dec_curr_jd_value = f_get_julian_date_value(dt_curr_datetime)
					long ll_num_days_to_bd
					ll_num_days_to_bd = ((dec_bd_jd_value - dec_curr_jd_value) / 86400)
					if((ll_num_days_to_bd >= (-1 * gi_bd_span_from)) and (ll_num_days_to_bd <= (gi_bd_span_to))) then
						decimal dec_bd_jd_span_from
						decimal dec_bd_jd_span_to
						dec_bd_jd_span_from = (dec_bd_jd_value - gi_bd_span_from)
						dec_bd_jd_span_to = (dec_bd_jd_value + gi_bd_span_to)
						if((dec_bd_jd_span_from  <= dec_bd_jd_value) and (dec_bd_jd_span_to >= dec_bd_jd_value)) then
							decimal bd_jd_withing
							decimal bd_jd_past
							decimal bd_jd_birthday
							//nrtnvalue = 0 do not display birthday
							//          = 1 birthday within 7 days
							//          = 2 birthday past 7 days
							//          = 3 on birthday
							if(dec_curr_jd_value = dec_bd_jd_value) then
								li_nrtnvalue = 3
							elseif(dec_bd_jd_span_from < dec_bd_jd_value) then
								li_nrtnvalue = 2								
								elseif(dec_bd_jd_value < dec_bd_jd_span_to) then
								li_nrtnvalue = 1
							end if
						end if
					end if
				end if
			end if
		end if
	end if

next

//string ls_start_date
//ls_start_date = sle_start_mmdd.text
//string ls_curr_datetime
//ls_curr_datetime = ""
//datetime dt_curr_datetime
//dt_curr_datetime = f_get_system_datetime(ls_curr_datetime)
//ls_curr_datetime = string(dt_curr_datetime)
//string lsa_parseoutdata[]
//integer li_num_parse_items
//integer li_pos
//li_pos = pos(ls_curr_datetime, " ")
//if(li_pos > 0) then
//	lb_cycle_dates.reset()
//	decimal dec_birthday_jd
//	datetime dt_birthday
//	dt_birthday= datetime('02/22/2024')
//	dec_birthday_jd = f_get_julian_date_value(dt_birthday)
//	decimal dec_curr_jd
//	ls_curr_datetime = trim(mid(ls_curr_datetime, 1, (li_pos -1)))
//	li_num_parse_items = f_parseoutstring_ext(ls_curr_datetime, "/", ref lsa_parseoutdata)
//	if(li_num_parse_items >= 3) then
//		string ls_year
//		ls_year = lsa_parseoutdata[3]
//		ls_start_date = ls_start_date + "/" + ls_year
//		dt_curr_datetime = datetime(ls_curr_datetime)
//		dec_curr_jd = f_get_julian_date_value(dt_curr_datetime)
//		datetime dt_loop_datetime
//		dt_loop_datetime = datetime(ls_start_date)
//		decimal dec_loop_jd
//		decimal dec_bd_jd_span_from
//		decimal dec_bd_jd_span_to
//		date dt_start_loopdate
//		dt_start_loopdate = date(ls_start_date)
//		integer li_dloop
//		date dt_relative_date
//		datetime ldt_relative_date
//		
//		string ls_relative_date
//		string ls_lbtext
//		for li_dloop = 1 to 20
//			ls_lbtext = ""
//			dt_relative_date = RelativeDate(dt_start_loopdate, li_dloop)
//			ldt_relative_date = datetime(dt_relative_date)
//			dec_loop_jd = f_get_julian_date_value(ldt_relative_date)
//		   dec_bd_jd_span_from = (dec_curr_jd - gi_bd_span_from)
//			dec_bd_jd_span_to = (dec_curr_jd + gi_bd_span_to)
//
//			ls_relative_date = string(dt_relative_date)
//			
//			ls_lbtext += f_lpad(ls_curr_datetime, 10, "_")
//			ls_lbtext += gs_tab
//			ls_lbtext += string(dec_curr_jd)
//			ls_lbtext += gs_tab			
//			ls_lbtext +=  f_lpad(ls_relative_date, 10, "_")
//			ls_lbtext += gs_tab			
//			ls_lbtext += string(dec_loop_jd)
//			
//			
//			
//			
//			
//			
//			lb_cycle_dates.additem(ls_lbtext)
//		next
//		
//		if(dec_curr_jd > 0) then
//			dec_loop_jd = f_get_julian_date_value(dt_loop_datetime)
//			
//		
//		end if
//	
//	
//	
//	
//	end if
//	
//	
//
//end if
//
end event

type st_4 from statictext within w_testing
integer x = 59
integer y = 228
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Start MM/DD"
alignment alignment = Right!
boolean focusrectangle = false
end type

type sle_start_mmdd from singlelineedit within w_testing
integer x = 485
integer y = 204
integer width = 283
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type lb_cycle_dates from listbox within w_testing
integer x = 14
integer y = 340
integer width = 4046
integer height = 1512
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean sorted = false
borderstyle borderstyle = stylelowered!
end type

type pb_set_size from picturebutton within w_testing
integer x = 4142
integer y = 1256
integer width = 507
integer height = 108
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Set Window Size"
boolean originalsize = true
end type

event clicked;string ls_width
string ls_height
ls_width = sle_width.text
ls_height = sle_height.text
long ll_width
long ll_height
ll_width = f_stol(ls_width)
ll_height = f_stol(ls_height)
if(ll_width > ll_height) then
	w_testing.Resize(ll_width, ll_height)
else
	w_testing.Resize(5000, 3000)
end if

//long hWnd
//hWnd = FindWindow(0, "
//
//bIsOpening = false
//Parent.TriggerEvent( Resize!)


end event

type st_3 from statictext within w_testing
integer x = 4347
integer y = 1168
integer width = 82
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "X"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_2 from statictext within w_testing
integer x = 4434
integer y = 1060
integer width = 229
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "height"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_1 from statictext within w_testing
integer x = 4101
integer y = 1060
integer width = 251
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "width"
alignment alignment = center!
boolean focusrectangle = false
end type

type sle_height from singlelineedit within w_testing
integer x = 4430
integer y = 1140
integer width = 242
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type sle_width from singlelineedit within w_testing
integer x = 4105
integer y = 1140
integer width = 242
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type pb_close from picturebutton within w_testing
integer x = 4197
integer y = 912
integer width = 402
integer height = 108
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Close"
boolean originalsize = true
end type

event clicked;close(w_testing)
end event

type r_1 from rectangle within w_testing
long linecolor = 33554432
integer linethickness = 4
long fillcolor = 65280
integer y = 1916
integer width = 329
integer height = 176
end type

type r_2 from rectangle within w_testing
long linecolor = 33554432
integer linethickness = 4
long fillcolor = 65280
integer x = 4389
integer y = 1916
integer width = 329
integer height = 176
end type

type r_3 from rectangle within w_testing
long linecolor = 33554432
integer linethickness = 4
long fillcolor = 65280
integer x = 4384
integer width = 329
integer height = 176
end type

type r_4 from rectangle within w_testing
long linecolor = 33554432
integer linethickness = 4
long fillcolor = 65280
integer width = 329
integer height = 176
end type

