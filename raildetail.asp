<%@ Language=VBScript %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft FrontPage 5.0">
</HEAD>
<form name=raildetail action=trainavail.asp method=post>

<BODY>
<%
dim cn,rs
set cn=server.CreateObject("adodb.connection")
cn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("rail.mdb")
set rs=server.CreateObject("ADODB.recordset")
rs.Open "select tname,Source,Destination from traindetails",cn
if not rs.EOF then
%>
<P>
<TABLE borderColor=indianred cellSpacing=1 cellPadding=1 width="75%" border=1 align=center>
    <TR>
    <TD>
      <P align=center>TRAIN NAME</P> </TD>
    <TD>
      <P align=center>SOURCE</P></TD>
    <TD>
      <P align=center>DESTINATION</P></TD>
    <%while not rs.EOF%>
    <tr>
    <td>
      <P align=center><%=rs(0)%>&nbsp;</P></td>
    <td>
      <P align=center><%=rs(1)%>&nbsp;</P></td>
    <td>
      <P align=center><%=rs(2)%>&nbsp;</P></td>
    <%rs.MoveNext
    wend
    end if
    %>    
    </tr></TABLE></P>
<P>&nbsp;</P>
<P><FONT size=2>ENTER THE DETAILS</FONT></P>
<P><FONT size=2>ENTER THE 
SOURCE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;<INPUT 
id=text1 name=src style="LEFT: 164px; TOP: 158px"></FONT></P>
<P><FONT size=2>ENTER THE DESTINATION :&nbsp;<INPUT id=text2 name=dest ></FONT></P>
<P><FONT 
size=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp; 
<INPUT id=submit1 type=submit value="VIEW THE TRAINS" name=submit1></FONT></P>
</BODY>
</form>
</HTML>