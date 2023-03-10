<%
    session.invalidate();
%>
<script type="text/javascript">
    function perback()
    {
        window.history.forward()
    }
    setTimeout("perback()",0)
    window.onload=function()
    {
        
    }

</script>
<%
response.sendRedirect("index.html");
%>