<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>

<script>
    var page="foredeleteOrder";
    $.post(
        page,
        {"oid":deleteOrderid},
        function (result) {
            if("success"==result){
                $("table.orderListItemTable[oid="+deleteOrderid+"]").hide();
            }
            else{
                location.href="login.jsp";
            }
        }
    );
</script>