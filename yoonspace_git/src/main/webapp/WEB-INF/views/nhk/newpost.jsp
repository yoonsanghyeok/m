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
    		$("#btn_newpost").on('click', function(){
    			location.href = "newpost";
    		})
    		$("#btn_scrap").on('click', scrapData);
    	})
    	
    	function scrapData(){
    		var newsURL = $("#newsURL").val();
    		alert(newsURL);
    		$.ajax({
    			url: "scrap"
    			, data: "newsURL="+newsURL
    			, success: function(newsData){
    				$("#news_title").val(newsData.title);
    				$("#news_content").html(newsData.summary + '<br>' + newsData.more + '<br>' + newsData.add);
    				$("#news_date").val(newsData.date);
    				$("#news_video").html('<iframe src="'+newsData.videoURL+'" width="500">');
    				$("#news_image").html('<img src="'+newsData.imageURL+'" width="300">');
    			}
    		});
    	}
    </script>
</head>

<body>

    <%@include file="../mb/nav.jsp" %>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">NHK NEWS STUDY</h1>

        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="main">Home</a>
            </li>
            <li class="breadcrumb-item active">Portfolio 3</li>
            <li>
            	<input id="btn_newpost" type="button" value="new post">
            </li>
        </ol>

        <div class="newpostform">
			<form action="">
				<div id="news_image"></div>
				<div id="news_video"></div>
				<input id="newsURL" type="text" name="newsURL">
				<input id="btn_scrap" type="button" value="get News data"><br>
				<input id="news_title" type="text" size="70"><br>
				<div id="news_content"></div><br>
				<input id="news_date" type="text">
				
			</form>
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
