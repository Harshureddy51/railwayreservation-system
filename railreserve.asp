<%@ Language=VBScript %>
<%
dim id
id=Request.Form("rad")
%>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
</HEAD>
<BODY>
<form name=railreserve action=reserved.asp method=post>

<center><h3><U>RESERVATION FORM</U></h3></center>
<P align=left><FONT size=3>PLEASE FILL THIS FORM IN ORDER TO 
RESERVE YOUR SEATS</FONT></P>
<P align=left><FONT size=3>PASSENGER NAME&nbsp;&nbsp;&nbsp; 
:&nbsp;<INPUT id=text1 name=passname></FONT></P>
<P align=left><FONT size=3>NUMBER OF 
SEATS&nbsp;&nbsp;&nbsp;:&nbsp; <INPUT id=text2 name=seats></FONT></P>
<P align=left><FONT size=3>TRAIN 
ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
:&nbsp; <INPUT id=text3 name=trainid value=<%=id%>></FONT></P>
<P align=left><FONT 
size=1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<INPUT id=submit1 type=submit value=Submit name=submit1></FONT></P>
</BODY>
</HTML>
