<%
dim a
a=Request.Form("rad")
if a="detail" then
Response.Redirect "raildetail.asp"
end if

if a="cancel" then
Response.Redirect "railcancel.asp"
end if
%>
