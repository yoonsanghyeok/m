<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<link href="http://fonts.googleapis.com/earlyaccess/jejugothic.css" rel="stylesheet">
<style>
	div.row{
		position: relative;
	}
	
	a.list-group-item{
		color: white;
		font-weight: bolder;
		background-color: #98BAef;
	}
	div.container{
    	position: relative;
    	left: -100px;
    }
    
    pre.note_content{
    	font-family: 'Jeju Gothic', serif; 
    }
    
    input.btns{
    	width: 110px;
		height: 30px;
		background-color: #5599ff;
		color: white;
		font-size: 1em;
		font-weight: bold;
		border: none;
		border-radius: 7px;
		margin-top: 10px;
		text-align: center;
    }
    
    div.col-lg-9{
    	background-color: #dedeff;
    	position: relative;
    	left: 315px;
    	top: -345px;
    }
    
    div.it_title{
    	position: relative;
    	left: -230px;
    	top: 75px;
    }
    
    li.nav-item-active{
    	color: white;
    }
</style>
</head>

<body>

    <!-- Navigation -->
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
                <li class="nav-item-active">
                    <a class="nav-link" href="itmain">IT Study</a>
                </li>
                <li class="nav-item">
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
        <h1 class="mt-4 mb-3">IT STUDY</h1>

       <!--  <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index.html">Home</a>
            </li>
            <li class="breadcrumb-item active">About</li>
        </ol> -->

        <!-- Content Row -->
        <div class="row">
            <!-- Sidebar Column -->
            <div class="col-lg-3 mb-4">
                <div class="list-group">
                    <a href="index.html" class="list-group-item">Java</a>
                    <a href="about.html" class="list-group-item">HTML</a>
                    <a href="services.html" class="list-group-item">CSS</a>
                    <a href="contact.html" class="list-group-item">R</a>
                    <a href="githome" class="list-group-item active">GIT</a>
                    <a href="portfolio-1-col.html" class="list-group-item">Javascript</a>
                    <a href="portfolio-2-col.html" class="list-group-item">jQuery</a>
                    <a href="portfolio-3-col.html" class="list-group-item">Spring</a>
                    <a href="portfolio-3-col.html" class="list-group-item">JSP/Servlet</a><!-- 
                    <a href="portfolio-4-col.html" class="list-group-item">4 Column Portfolio</a>
                    <a href="portfolio-item.html" class="list-group-item">Single Portfolio Item</a>
                    <a href="blog-home-1.html" class="list-group-item">Blog Home 1</a>
                    <a href="blog-home-2.html" class="list-group-item">Blog Home 2</a>
                    <a href="blog-post.html" class="list-group-item">Blog Post</a>
                    <a href="full-width.html" class="list-group-item">Full Width Page</a>
                    <a href="sidebar.html" class="list-group-item active">Sidebar Page</a>
                    <a href="faq.html" class="list-group-item">FAQ</a>
                    <a href="404.html" class="list-group-item">404</a>
                    <a href="pricing.html" class="list-group-item">Pricing Table</a> -->
                </div>
            </div>
            <!-- Content Column -->
           	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="btns" type="button" value="목록">
           	&nbsp;&nbsp;
           	<input class="btns" type="button" value="수정">
           	<br><br>
            <div class="it_title"><h2>GIT - branch</h2></div>
            <div class="col-lg-9 mb-4">
                <br>
                <pre class="note_content">	* branch를 만드는 경우
		     - 기존의 소스코드에서 고객사가 원하는 특정 기능만을 커스터마이징하여 별도의 소스코드로 작성하고자 하는 경우
		     - 고객이 원하는 기능이, 개발자가 판단하기에 그다지 필요가 없어보여서
		       고객이 나중에 '생각해보니 필요없는거같아요 다시 돌려주세요' 라고 하는 것을 대비하여 작업하는 경우
		     - 개발과정 중 메인작업과 테스트용으로 쓸 파일로 나누고자 하는 경우
		
	
	* 새로운 branch 생성시
	     - 생성 시점에서의 기존에 속해 있던 branch의 상태가 새로 생성한 branch에 그대로 복사/적용된다.
	
	
	* 한 branch에서 적용한 commit은 그 이외의 branch에는 적용되지 않는다.
	     ex) exp branch에서 commit을 한 내용은 master branch의 git log상에는 나타나지 않는다.
	
	
	* exp branch상에서 새로운 파일 f2.txt를 생성하여 commit을 하는 경우,
	     - exp branch에 위치한 경우 하드디스크상에 f2.txt파일이 등장하지만,
	     - master branch로 checkout한다면 하드디스크상에서도 f2.txt파일이 모습을 감춘다 !
	
	
	* branch 병합
	     ex) exp branch의 작업(commit)내용을 master branch에도 반영하고자 하는 경우
	          - master로 checkout해놓은 상태에서, 
	          - 'git merge exp'
	
	     => 병합 결과 생성된 commit은 2개의 부모 commit을 가진다.
	          - 기존 master branch의 최종 commit
	          - 기존 exp branch의 최정 commit
	
	     => 반대 방향으로의 merge 명령도 이루어져야 양쪽 branch 모두에서 완전히 같은 commit상태를 갖게 된다
	     => 이 이후에는 exp branch를 삭제해도 무방하다.
	
	
	* 병합의 종류
	     1) fast-forward(빨리감기)
	          (상황) master branch의 C2 상태에서 hotfix branch를 새로 생성하여 작업을 완료하고 C3 커밋을 완료한 뒤,
	                    hotfix의 C3커밋내용을 master에도 적용하고자 하는 경우.
	                    즉 hotfix branch가 master로부터 갈라진 이후로 hotfix에만 작업이 이루어지고, master에는 아무 작업도 하지 않은 상황.
	                    즉 master branch와 hotfix branch간의 차이점이 hotfix에만 존재하는 상황.
	
	          (merge 결과) 기존에 hotfix만 가리키고 있던 C3커밋을 master도 같이 가리키게 된다.
	                              즉 새로운 커밋이 생성되는 것이 아니라, 기존의 C3커밋을 master도 같이 가리키게만 되는 것,
	                              master branch의 입장에서 본다면 C2에서 C3로의 빨리감기 동작이 이루어 진 것이다.
	
	
	     2) merge made by the 'recursive' strategy
	          (상황) iss53 branch가 master로부터 갈라진 이후에 iss53에도 변화가 있고, master에도 변화가 있는 경우.
	                    즉 master와 iss53간의 차이점이 master에도 존재하고 iss53에도 존재하는 상황.
	
	          (merge 결과) 각 branch의 최종 커밋을 합친 새로운 커밋(merge commit)을 생성한다. 
	                 
	
	* merge 과정에서 충돌이 일어나는 경우에 대한 대처법. 
	          (상황) 두 branch에서 같은 파일의 다른 부분을 수정하는 경우
	                    => auto-merging이 성공적으로 이루어져서 양쪽에서의 수정내용이 모두 정상적으로 반영된다
	          (상황) 두 branch에서 같은 파일의 같은 부분을 수정하는 경우
	                    => 충돌이 일어난다.
	                    ==> 충돌이 일어나는 부분을 수정한 후 commit을 실행해야 한다.
	
	* stash
	                진행중인 작업이 완료되지 않은 상태에서 다른 branch로 넘어가야 하는 경우,
	                commit 없이 작업중인 내용을 임시로 보관할 수 있게 하는 기능.
	               'working' directory의 변경 사항을 감추는 기능.
	               add된 파일(tracked되고 있는, 버전관리가 되고 있는 파일)에 대해서만 적용된다.
	
	
	* branch에 관한 git의 내부구조
	     - HEAD 파일은 저장소가 활성화되는 순간(git init명령 실행순간)부터 항상 존재하는 파일이다.
	     - HEAD파일은 현재 작업중인 상태의 branch를(branch 파일을) 가리킨다.
	     - master branch에서 작업 중이라면 HEAD파일은 refs/heads/master를,
	     - exp branch에서 작업 중이라면 HEAD파일은 refs/heads/exp를 가리키게 된다.
	     - 그리고 각 refs/heads/master나 refs/heads/exp는 각 branch에서의 가장 최신 commit상태를 담은 파일을 가리킨다.
	
	     - 여기서 refs/heads/exp파일은 exp라는 이름의 branch가 생성되는 순간 존재하며, 
	     - rm .git/refs/heads/exp 명령을 통해 저 파일을 지우면 exp branch를 삭제하는 것과 완전히 같은 동작을 하게 된다.
	     - 반대로, vim .git/refs/heads/exp명령을 통해 파일을 생성하는 것도 역시 git branch exp라는 명령과 같은 동작을 하게 된다.
	     - refs/heads 아래의 master나 exp파일도 binary 파일이 아니라 일반 파일임을 알 수 있다.
	
	===== 명령어 =====
	
	* git branch
	         - 'master' : 현재 기본 branch를 사용하고 있다는 뜻. 기본 branch의 이름이 master이다
	
	* git branch exp
	          => 'exp'라는 이름의 branch를 새로 생성한다.
	
	* git checkout exp
	          => 기존의 branch에서 빠져나가 'exp' branch로 들어간다.
	
	* git checkout -b exp
	          => exp branch를 새로 생성하고 곧바로 exp로 checkout한다.
	
	* git log --branches --decorate --graph
	          => 현재 접속중인 branch이외에도, 모든 branch의 commit정보를 비교하여 확인할 수 있다.
	          => graph옵션은 도식화하여 보여주는 역할을 한다.
	          => --oneline 옵션을 추가하면 더욱 간결하게 도식화된 모습으로 확인할 수 있다.
	
	* git log master..exp
	          => master branch와 exp branch의 차이점만을 선택적으로 보여준다.
	          => master에는 없고 exp에만 있는 것
	          => -p옵선을 추가하면 더 상세하게 조회할 수 있다.
	
	* git diff master..exp
	               => 두 branch를 비교하여, 각 파일마다 branch간의 차이점을 보여준다.
	
	* git merge exp (@master branch)
	          => exp branch의 commit 내용을 master에도 반영한다.
	
	* git branch -d exp
	          => exp branch를 제거한다
	
	* git stash [save]
	          => 임시 저장한다.
	
	* git stash apply
	          => stash로부터 가장 최근에 저장했던 내용을 끄집어온다.
	
	* git stash list
	          => stash에 저장된 현황을 보여준다. 
	          
	* git reset --hard HEAD
	          => stash로부터 불러온 작업내용을 날려버린다. stash에는 여전히 남아있다.
	
	* git stash drop
	          => 가장 최신 stash
	
	* git stash pop
	          => stash가 apply되고 drop까지 바로 완료된다.
		</pre>
            </div>
        </div>
        <!-- /.row -->

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
    <script src="resources/mb/vendor/jquery/jquery.min.js"></script>
    <script src="resources/mb/vendor/popper/popper.min.js"></script>
    <script src="resources/mb/vendor/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>
