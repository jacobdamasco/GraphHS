<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    <!--step 1 card-->
    <div class="row">
        <div class="col-2"></div>
        <div class="py-3 col-8">
            <div class="card bg-secondary bg-gradient">
                <div class="card-body">
                    <p><span class="fw-bold">Step 1:</span> Upload a text file that contains graph equations and generate them into graphs. Acceptable files include .txt and .csv. File size limit is 10 MB.</p>
                    <p>".txt" extensions only with valid equations are accepted.</p>
                    <form action="graph-step-2.jsp">
                    	<input type="file" name="get-txt-file" accept=".txt" />
                    	<input type="text" name="equation" />
                    	<input type="submit" name="submit" class="btn btn-info rounded-pill px-3" />
                    </form>
                </div>
            </div>
        </div>
        <div class="col-2"></div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>