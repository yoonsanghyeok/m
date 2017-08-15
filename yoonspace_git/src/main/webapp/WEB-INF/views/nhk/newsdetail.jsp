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
    </script>
    <style>
    .article_content{
    	position: relative;
    	top: -250px;
    	font-family:"ヒラギノ角ゴ Pro W3", "Hiragino Kaku Gothic Pro",Osaka, "メイリオ", Meiryo, "ＭＳ Ｐゴシック", "MS PGothic", sans-serif;
    	width: 750px;
    }
    
    .article_title, .article_content>h3, h3.my-3{
    	font-family: 'ＭＳ Ｐゴシック', 'MS PGothic', 'メイリオ', Meiryo, sans-serif;
    	font-weight: bolder;
    }
    
     button.btn-success{
     	font-size: 1.5em;
    	font-family: 'ＭＳ Ｐゴシック', 'MS PGothic', 'メイリオ', Meiryo, sans-serif;
    	border-radius: 3px;
     }
    body{
		background-color: #efefef;    
    }
    div.col-md-8{
    	margin-right: 0px;
    }
    
    div.col-md-4{
    	position: relative;
    	left: 35px;	
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
            <li class="breadcrumb-item"><h2 class="article_title">${article.title}</h2></li>
        </ol>
		<%-- <div class="article_title">
			<h2>${article.title}</h2>
		</div> --%>
        <%-- <ol class="breadcrumb">
            <!-- <li class="breadcrumb-item">
                <a href="index.html">Home</a>
            </li>
            <li class="breadcrumb-item active">Portfolio Item</li> -->
            <li class="breadcrumb-item">
            	${article.title}
            </li>
        </ol> --%>

        <!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-8">
                <iframe src="${article.video_url}" width="750" height="500"></iframe>
            </div>

            <div class="col-md-4">
                <h3 class="my-3">知らない単語</h3>
                <textarea rows="10" cols="50"></textarea>
				<button class="btn-success" type="button">登録</button><br>
                <br><br>
                <h3 class="my-3">知らない文型</h3>
                <textarea rows="10" cols="50"></textarea>
				<button class="btn-success" type="button">登録</button><br>
            </div>

        </div>
        <!-- /.row -->

        <div class="article_content">
        	<h3>本文</h3><br>
        	${article.summary}
        	<br>
        	${article.more}
        	<br>
        	${article.additional}
        	<br><br>
        </div>
        

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
