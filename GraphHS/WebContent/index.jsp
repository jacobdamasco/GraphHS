<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>GraphHS | Home</title>
</head>
<body>
    <!--navbar-->
    <nav class="navbar navbar-dark bg-primary py-1">
        <div class="container-fluid py-1">
            <a href="#" class="navbar-brand px-4 py-2 h1 fs-2">GraphHS</a>
            <div class="d-flex flex-row-reverse px-3">
                <div class="px-3">
                    <a href="graph-page.jsp" class="text-white text-decoration-none">Try It</a>
                </div>
                <div class="px-3">
                    <a href="index.jsp" class="text-white text-decoration-none">Home</a>
                </div>
            </div>
        </div>
    </nav>

    <!--text and image landing page content-->
    <div class="container-fluid">
        <div class="row p-3">
            
            <!--left half-->
            <div class="col-md-6 p-2">
                <div class="card p-5 border-0">
                    <h1 class="align-middle">Generating graphs from equations is a simple click away.</h1>
                    <p class="py-3">A robust web tool for students to generate graphs by uploading text files containing equations.</p>
                    <a href="graph-page.jsp" class="btn btn-danger my-3 mx-5 px-1 py-2 rounded-pill align-left">Click to Start</a>
                </div>
            </div>

            <!--right half-->
            <div class="col-md-6 p-2">
                <p class="text-center align-middle">Image will go here.</p>
            </div>
        </div>
    </div>
</body>
</html>