<%@ Language=VBScript %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft FrontPage 5.0">
</HEAD>
<BODY>

<P>&nbsp;</P>

</BODY>
</HTML>
<%
dim name,tid
name=Request.Form("passname")
t=Request.Form("id")
set cn=server.CreateObject("adodb.connection")
cn.Open="DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("rail.mdb")
set rssel=server.CreateObject("adodb.recordset")
rssel.Open "select seat from passenger where pname='"&name&"' and tid='"&t&"'",cn
if not rssel.EOF then
s1 =rssel(0)
set rsup=server.CreateObject("adodb.recordset")
rsup.Open "select seats from traindetails",cn
s=rsup(0)
s=s-s1
rsup.Close
rsup.open "update traindetails set seats='"& s &"' where tid='"&t&"'",cn

set rsdel=server.CreateObject("adodb.recordset")
rsdel.Open "delete from passenger where pname='"&name&"' and tid='"&t&"'",cn
Response.Write("Ur seats have been cancelled")
Response.write ("<br><br><a href=railopt.asp>Back</a>")
else
Response.Write "Name Not Available"
Response.write ("<br><br><a href=railopt.asp>Back</a>")
end if


%>