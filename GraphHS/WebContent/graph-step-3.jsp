<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="graphing.arrayList.*, java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>GraphHS</title>
</head>

<body>
    <!--navbar-->
    <nav class="navbar navbar-dark bg-primary py-1">
        <div class="container-fluid py-1">
            <a href="index.jsp" class="navbar-brand px-4 py-2 h1 fs-2">GraphHS</a>
            <div class="d-flex flex-row-reverse px-3">
                <div class="px-3">
                    <a href="graph-step-1.jsp" class="text-white text-decoration-none">Try It</a>
                </div>
                <div class="px-3">
                    <a href="index.jsp" class="text-white text-decoration-none">Home</a>
                </div>
            </div>
        </div>
    </nav>

	<div class="row">
        <div class="col-2"></div>
        <div class="py-3 col-8">
            <div class="card border-0">
                <div class="card-body">
                	You picked equation
                	
                	<% 
                	String eqnChoice = request.getParameter("eqn-choice");
                	out.println(eqnChoice);
                	%>.
                	
                    See your graph below!
                </div>
            </div>
        </div>
        <div class="col-2"></div>
    </div>
    
    <div class="row">
        <div class="col-2"></div>
        <div id="calculator" class="col-8" style="width: 600px; height: 400px;"></div>
        <div class="col-2"></div>
    </div>
    
	<script src="https://www.desmos.com/api/v1.5/calculator.js?apiKey=dcb31709b452b1cf9dc26972add0fda6"></script>
	<script>
		var elt = document.getElementById('calculator');
		var eqn = "<%out.print(eqnChoice);%>";
	  	var calculator = Desmos.GraphingCalculator(elt);
	  	calculator.setExpression({ id: 'graph1', latex: eqn });
	</script>
</body>
</html>