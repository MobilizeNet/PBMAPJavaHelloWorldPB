$PBExportHeader$sample.sra
$PBExportComments$Generated Application Object
forward
global type sample from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type sample from application
string appname = "sample"
end type
global sample sample

on sample.create
appname="sample"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on sample.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open(w_sample)
end event

