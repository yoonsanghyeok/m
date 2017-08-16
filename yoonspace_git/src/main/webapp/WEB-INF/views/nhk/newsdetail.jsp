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
    	/* $(function(){
    		$("#btn_updateArticle").on('click',function(){
    			var tango = $("#ta_tango").val();
    			var bunkei = $("#ta_bunkei").val();
    			var opinion = $("#ta_opinion").val();
    			location.href = "updateArticle?arcno={article.arcno}&tango="+tango+"&bunkei="+bunkei+"&opinion="+opinion;
    		})
    	}) */
    </script>
    <style>
    .article_content{
    	position: relative;
    	top: -500px;
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
    	/* left: 35px;	 */
    }
    
    .customList{
    	list-style-type: none;
    	font-family: 'ＭＳ Ｐゴシック', 'MS PGothic', 'メイリオ', Meiryo, sans-serif;
    	font-weight: bolder;
    	padding: 0;
    	margin: 0;
    }
    
    div.article_header{
    	position: relative;
    	left: -50px;
    }
    
    ol.breadcrumb{
    	float: none;
    	font-weight: bolder;
    	font-size: 1.5em;
    	color: white;
    	background-color: #cccccc;
    }
    </style>
    
</head>

<body>

    <%@include file="../mb/nav.jsp" %>

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
            
            <li class="breadcrumb-item"><a href="nhkstudy">News List</a></li>
            <li class="breadcrumb-item">My Wordbook</li>
        </ol>
        <br>
        <div class="article_header">
		<ul class="customlist">
            <li class="customList"><h2 class="article_title">[ ${article.title} ]</h2></li>
            <li class="customList">${article.jdate} 作成</li>
        </ul>
        </div>
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
			<form action="updateArticle" method="POST">
			<input type="hidden" name="arcno" value="${article.arcno}">
                <h3 class="my-3">知らない単語</h3>
                <textarea id="ta_tango" name="tango" rows="10" cols="50">${article.tango}</textarea>
                <br><br>
                <h3 class="my-3">知らない文型</h3>
                <textarea id="ta_bunkei" name="bunkei" rows="10" cols="50">${article.bunkei}</textarea>
                <br><br>
                <h3 class="my-3">コメント</h3>
                <textarea id="ta_opinion" name="opinion" rows="10" cols="50">${article.opinion}</textarea>
				<button id="btn_updateArticle" class="btn-success" type="submit">適用</button><br>
			</form>
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
