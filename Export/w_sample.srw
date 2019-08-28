$PBExportHeader$w_sample.srw
forward
global type w_sample from window
end type
type dw_1 from datawindow within w_sample
end type
type sle_1 from singlelineedit within w_sample
end type
type st_1 from statictext within w_sample
end type
type cb_1 from commandbutton within w_sample
end type
end forward

global type w_sample from window
integer width = 1266
integer height = 844
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_1 dw_1
sle_1 sle_1
st_1 st_1
cb_1 cb_1
end type
global w_sample w_sample

on w_sample.create
this.dw_1=create dw_1
this.sle_1=create sle_1
this.st_1=create st_1
this.cb_1=create cb_1
this.Control[]={this.dw_1,&
this.sle_1,&
this.st_1,&
this.cb_1}
end on

on w_sample.destroy
destroy(this.dw_1)
destroy(this.sle_1)
destroy(this.st_1)
destroy(this.cb_1)
end on

type dw_1 from datawindow within w_sample
integer x = 73
integer y = 256
integer width = 1070
integer height = 420
integer taborder = 20
string title = "none"
string dataobject = "d_sample_list"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type sle_1 from singlelineedit within w_sample
integer x = 471
integer y = 80
integer width = 320
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

type st_1 from statictext within w_sample
integer x = 96
integer y = 80
integer width = 320
integer height = 112
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Test Dw"
boolean focusrectangle = false
end type

type cb_1 from commandbutton within w_sample
integer x = 827
integer y = 80
integer width = 320
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Add"
end type

event clicked;int li_row
if sle_1.text <> "" then
	li_row = dw_1.insertrow( 0)
	dw_1.setitem( li_row, 1, sle_1.text)
end if
end event

