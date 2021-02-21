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

    <!--step 2 card-->
    <div class="row">
        <div class="col-2"></div>
        <div class="py-3 col-8">
            <div class="card border-0">
                <div class="card-body">
                	You entered equations:
                	
                	<%
                		TextboxReadEqns eqns = new TextboxReadEqns();
                		String eqn = request.getParameter("equation");
                		ArrayList<String> equationList = eqns.readEqns(eqn);
                		for(int i=0; i<=equationList.size()-1; i++) {
                			out.println("<p>" + String.valueOf(i+1) + ": " + equationList.get(i) + "</p>");
                		}
                	%>
                    <form action="graph-step-3.jsp" class="form-inline">
                        <label class="my-1 mr-2" for="inlineFormCustomSelectPref">
                            <span class="fw-bold">Step 2:</span> Enter the equation you want to graph.
                        </label>
                        <input type="text" name ="eqn-choice" class="rounded border-dark mx-4">
                        <input type="submit" value="Generate Graph" class="btn btn-danger rounded-pill px-3">
                    </form>
                </div>
            </div>
        </div>
        <div class="col-2"></div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>