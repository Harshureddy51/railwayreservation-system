<%@ Language=VBScript %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft FrontPage 5.0">
</HEAD>
<BODY>
<form name=trainavail action=railreserve.asp method=post>
<P align=center>&nbsp;<U>TRAIN DETAILS&nbsp;</U></P>

<P align=center>
<%
dim cn1,rs1,src,dest
src=Request.Form("src")
response.write(src)
Response.Write(" To ")

dest=Request.Form("dest")
response.write(dest)
Response.Write "<br><br>"

set cn1=server.CreateObject("adodb.connection")
cn1.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("rail.mdb")
set rs1=server.CreateObject("adodb.recordset")
rs1.Open "select * from traindetails where Source='" &src& "' and Destination='" &dest& "'",cn1
if not rs1.EOF then
%>
<TABLE borderColor=indianred cellSpacing=1 cellPadding=1 width="75%" border=1>
  <TR>
    <th>TRAIN NAME</th>
    <th>TIME</th>
    <th>SELECT THE TRAIN</th></TR>
    <%
    while not rs1.EOF
    %>
    <tr>
    <td><%response.write(rs1(0))%>&nbsp;</td>
     <td><%response.write(rs1(6))%>&nbsp;</td>
       <td><input type=radio name=rad value=<%response.write(rs1(3))%>><%response.write(rs1(3))%></td>
    </tr>
    <%rs1.MoveNext
    wend
    end if
    %>
    </TABLE></P>
<P align=center><INPUT id=submit1 type=submit value=Submit name=submit1></P>
<P align=center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P>
</BODY>
</form>
</HTML>