<% 
String mge=(String)session.getAttribute("message");
if(mge!=null)
{
 %>
 
 <div class="alert alert-warning alert-dismissible fade show" role="role">
    <strong><%=mge %></strong>
    <button type="button" class="close" data-dismiss="alert" aria-lable="Close">
       <span aria-hidden="true">&times;</span>
    </button>
 </div>
 
 <%
	session.removeAttribute("message");
}
%>