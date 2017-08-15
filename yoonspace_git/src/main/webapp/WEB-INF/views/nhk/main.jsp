<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Modern Business - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/mb/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/mb/css/modern-business.css" rel="stylesheet">

    <script src="resources/mb/vendor/jquery/jquery.min.js"></script>
    <script>
    	$(function(){
    		$("#btn_addArticle").on('click', function(){
    			var newsURL = $("#newsURL").val();
    			location.href = "addArticle?newsURL="+newsURL;
    		})
    	})
    </script>
    <style>
    h4.card-title{
    	font-family: 'ＭＳ Ｐゴシック', 'MS PGothic', 'メイリオ', Meiryo, sans-serif;
    	text-decoration: none;
    }
    
    p.card-text{
    	font-family:"ヒラギノ角ゴ Pro W3", "Hiragino Kaku Gothic Pro",Osaka, "メイリオ", Meiryo, "ＭＳ Ｐゴシック", "MS PGothic", sans-serif;
    }
    
    .btn-primary{
    	font-weight: bolder;
    	border-radius: 5px;
    }
    </style>
</head>

<body>

    <%@include file="../mb/nav.jsp" %>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">NHK NEWS STUDY</h1>

        <ol class="breadcrumb">
            <!-- <li class="breadcrumb-item">
                <a href="main">Home</a>
            </li>
            <li class="breadcrumb-item active">Portfolio 3</li> -->
            
            <li>
            	URL &nbsp;&nbsp;
            	<input id="newsURL" type="text" size="90">
            	<input id="btn_addArticle" class="btn-primary" type="button" value="ADD article">
            </li>
        </ol>

        <div class="row">
			<c:forEach var="arc" items="${arcList}">
			
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="articleDetail?postno=${arc.postno}"><img class="card-img-top" src="${arc.image_url}" alt=""></a>
                    <div class="card-body">
                        <h4 class="card-title"><a href="articleDetail?postno=${arc.postno}">${arc.title}</a></h4>
                        <p class="card-text">${arc.summary}</p>
                    </div>
                </div>
            </div>
            
			</c:forEach>
        </div>

        <!-- Pagination -->
        <ul class="pagination justify-content-center">
            <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                </a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
            </li>
        </ul>

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>
        </div>
        <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="resources/mb/vendor/popper/popper.min.js"></script>
    <script src="resources/mb/vendor/bootstrap/js/bootstrap.min.js"></script>
	
</body>

</html>
