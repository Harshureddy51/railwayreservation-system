<%@ Language=VBScript %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft FrontPage 5.0">
</HEAD>
<BODY>

<P align=center><FONT size=4><U>CONFIRMATION OF RESERVATION</U></FONT></P>
<P align=center>&nbsp;</P>
<%dim seats,cls,name
t=Request.Form("trainid")
name=Request.Form("passname")
cls=Request.Form("cls")
seats1=Request.Form("seats")
set cn2=server.CreateObject("adodb.connection")
cn2.open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("rail.mdb")
set rs2=server.CreateObject("adodb.recordset")
rs2.Open "select * from traindetails",cn2
if(seats1+rs2("seats")>rs2("max"))then
Response.Write("Seats not Available. Please try again later...")
Response.write ("<br><br><a href=railopt.asp>Back</a>")
else
set cn3=server.CreateObject("adodb.connection")
cn3.Open="DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("rail.mdb")
set rs3=server.CreateObject("adodb.recordset")
rs3.open "update traindetails set seats=seats+'"&seats1&"'where tid='"&t&"'",cn3

set cn4=server.CreateObject("adodb.connection")
cn4.Open="DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("rail.mdb")
set rs4=server.CreateObject("adodb.recordset")
rs4.Open "insert into passenger(pname,tid,seat)values('"&name&"','"&t&"','"&seats1&"')",cn4
Response.Write("Ur seats have been reserved")
Response.write ("<br><br><a href=railopt.asp>Back</a>")

end if
%>
</BODY>
</HTML>