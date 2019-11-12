<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<select onchange="fun()" id="country">
		<option selected hidden>select country</option>
		<option>IND</option>
		<option>CANADA</option>
		<option>USA</option>
	</select>

	<select id="state">
		   <option selected hidden>select state</option>

	</select>

	<script type="text/javascript">
		function fun() {

			var htp = new XMLHttpRequest();

			htp.onreadystatechange = function() {

				if (htp.readyState == 4) {
					var country = document.getElementById("country");
					var state = document.getElementById("state"); 
					state.innerHTML = "";
					
					//alert(htp.responseText);
					var json = JSON.parse(htp.responseText);

					for (var i = 0; i < json.length; i++) {
						var data = json[i]
						var option = document.createElement("option");
						var cname = country.value;
						var n = data.country;
						if (cname.localeCompare(n) == 0)
						{
							option.text = data.state;
							option.value = data.state;
							state.appendChild(option);
						}
					}

				}
			}
			//var country=document.getElementById("country");
			htp.open("get", "json.jsp", true);
			htp.send();

		}
	</script>
</body>
</html>