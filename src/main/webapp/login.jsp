<%-- 
    Document   : login
    Created on : Oct 31, 2024, 3:18:14 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--nhung noi dung header.jsp-->
<jsp:include page="shared/header.jsp" />
<!--nhung noi dung nav.jsp-->
<jsp:include page="shared/nav.jsp" />
<div>
    <form action="LoginServlet" method="POST">
        <h2>Login System</h2>
        <div>
            <label>User name</label>
            <input type="text" name="username" required="" class="form-control">
        </div>
        <div>
            <label>Password</label>
            <input type="password" name="password" required="" class="form-control">
        </div>
        <div class="mt-2">
            <button type="submit" class="btn btn-primary">Login</button>
        </div>
        <%
            if(request.getAttribute("error")!=null){
        %>
        <div class="text-danger mb-3">
            <%=request.getAttribute("error")%>
        </div>
        <%
            }
        %>
    </form>
</div>

<!--nhung noi dung footer.jsp-->
<jsp:include page="shared/footer.jsp" />   
