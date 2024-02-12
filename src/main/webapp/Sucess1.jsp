<% 
String m=(String)session.getAttribute("Success");
String n=(String)request.getAttribute("sun");
if(m!=null)
{
 %>
 <div class="alert alert-success alert-dismissible fade show" role="role">
    <strong><%=m %></strong>
    <button type="button" class="close" data-dismiss="alert" aria-lable="Close">
       <span aria-hidden="true">&times;</span>
    </button>
 </div>
 
 <%
	session.removeAttribute("Success");
   
}
%>
<% 

if(n!=null)
{
%>
   <div class="alert alert-success alert-dismissible fade show" role="role">
    <strong><%=n %></strong>
    <button type="button" class="close" data-dismiss="alert" aria-lable="Close">
       <span aria-hidden="true">&times;</span>
    </button>
 </div>
<%	
	request.removeAttribute("sun");
}
%>