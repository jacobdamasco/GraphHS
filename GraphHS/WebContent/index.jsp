<%@page import="java.util.Date"%>
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
    <nav class="navbar navbar-dark bg-primary py-1">
        <div class="container-fluid py-1">
            <a href="#" class="navbar-brand px-4 py-2 h1 fs-2">GraphHS</a>
            <div class="d-flex flex-row-reverse px-3">
                <div class="px-3">
                    <a href="#" class="text-white text-decoration-none">Try It</a>
                </div>
                <div class="px-3">
                    <a href="#" class="text-white text-decoration-none">Home</a>
                </div>
            </div>
        </div>
    </nav>
    
    <div>
    	Hello world, the time on the server is <%= new Date() %>.
    </div>
</body>
</html>