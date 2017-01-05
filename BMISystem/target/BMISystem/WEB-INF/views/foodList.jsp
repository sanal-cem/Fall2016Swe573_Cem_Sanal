<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
    <head>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<link rel="stylesheet" 
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
        <script type="text/javascript">
        $(document).ready(function() {
            bind()
        })

        function bind() {
            $("#search_button").click(function(){
                var keyword = $("#search_box").val()
                show_list(keyword)
            })
        }
        function show_list(keyword) {
            $.ajax({
                url: "/foodList/" + keyword,
                type: "POST",
                dataType: "json"
            }).done(function(res){
                render_list(res)
                console.log("completed")
            })
            console.log("show_list sonu")
        }

        function render_list(data) {
            var template = "<li></li>";
            var container = $("#results");
            container.html("")
            for (var i = data.length - 1; i >= 0; i--) {
                var food = data[i];
                var template = "<li>" + food.name + "</li>";
                container.append(template);
            };
        }
        </script>
    </head>
    <body>
  	<div class="container">
	        <ul id="results"></ul>
		</div>
</body>
</html>
