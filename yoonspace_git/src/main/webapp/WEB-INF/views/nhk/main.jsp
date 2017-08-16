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

    <title>yoonspace</title>

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
    
    ol.breadcrumb{
    	float: none;
    	font-weight: bolder;
    	font-size: 1.5em;
    	color: white;
    	background-color: #cccccc;
    }
    
    div.container{
    	position: relative;
    	left: -100px;
    }
    
    li.nav-item-active{
    	color: white;
    }
    </style>
</head>

<body>

    <%-- <%@include file="../mb/nav.jsp" %> --%>
	<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="main">yoonspace</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <!-- <li class="nav-item">
                    <a class="nav-link" href="services.html">Services</a>
                </li> -->
                <!-- <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Portfolio
                        </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                        <a class="dropdown-item" href="portfolio-1-col.html">1 Column Portfolio</a>
                        <a class="dropdown-item" href="portfolio-2-col.html">2 Column Portfolio</a>
                        <a class="dropdown-item" href="portfolio-3-col.html">3 Column Portfolio</a>
                        <a class="dropdown-item" href="portfolio-4-col.html">4 Column Portfolio</a>
                        <a class="dropdown-item" href="portfolio-item.html">Single Portfolio Item</a>
                    </div>
                </li> -->
                <!-- <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            IT study
                        </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                        <a class="dropdown-item" href="full-width.html">Full Width Page</a>
                        <a class="dropdown-item" href="sidebar.html">Sidebar Page</a>
                        <a class="dropdown-item" href="faq.html">FAQ</a>
                        <a class="dropdown-item" href="404.html">404</a>
                        <a class="dropdown-item" href="pricing.html">Pricing Table</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Japanese
                        </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                        <a class="dropdown-item" href="nhkstudy">NHK study</a>
                        <a class="dropdown-item" href="blog-home-2.html">Blog Home 2</a>
                        <a class="dropdown-item" href="blog-post.html">Blog Post</a>
                    </div>
                </li> -->
                <li class="nav-item">
                    <a class="nav-link" href="contact.html">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="itmain">IT Study</a>
                </li>
                <li class="nav-item-active">
                    <a class="nav-link" href="nhkstudy">Japanese</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.html">Projects</a>
                </li>
            </ul>
        </div>
    </nav>
    
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">NHK NEWS STUDY</h1>
		<br>
        <ol class="breadcrumb">
            <!-- <li class="breadcrumb-item">
                <a href="main">Home</a>
            </li>
            <li class="breadcrumb-item active">Portfolio 3</li> -->
            
            <li class="breadcrumb-item active">News List</li>
            <li class="breadcrumb-item">My Wordbook</li>
        </ol>
        <div class="inputURL">
        	URL &nbsp;&nbsp;
        	<input id="newsURL" type="text" size="90">
        	<input id="btn_addArticle" class="btn-primary" type="button" value="ADD article">
        </div>
		<br>
        <div class="row">
			<c:forEach var="arc" items="${arcList}">
			
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="articleDetail?arcno=${arc.arcno}"><img class="card-img-top" src="${arc.image_url}" alt=""></a>
                    <div class="card-body">
                        <h4 class="card-title"><a href="articleDetail?arcno=${arc.arcno}">${arc.title}</a></h4>
                        <p class="card-text">${arc.jdate}</p>
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
