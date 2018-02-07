<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate var="year" value="${now}" pattern="yyyy" />
<!DOCTYPE html>
<html>
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SONG PROJECT</title>
    <style>
    		.text-muted.services-font {
    			font-size: 0.9rem;
    			text-align: left;
    		}
    		.button{
    			
    		}
    </style>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/agency.css" rel="stylesheet">

  </head>

  <body id="page-top">
  
  	

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Project</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#resume">Resume</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#services">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
            </li>
            <li class="nav-item">
            <c:choose>
				<c:when test="${empty id }">
					<li class="nav-item">
						<a class="nav-link js-scroll-trigger" href="users/loginform.do">로그인</a>
					</li>
					<li class="nav-item">
						<a class="nav-link js-scroll-trigger"  href="users/signup_form.do">회원가입</a>
					</li>
				</c:when>
				<c:otherwise>
					<li class="nav-item">
						<a class="nav-link js-scroll-trigger" href="profile/detail.do"><strong>${id }</strong>님 Login</a>
					</li>
					<li class="nav-item">
							<a class="nav-link js-scroll-trigger" href="users/logout.do">로그아웃</a>
					</li>
				</c:otherwise>
		 	</c:choose>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Header -->
    <header class="masthead">
      <div class="container">
        <div class="intro-text">
          <div class="intro-lead-in">작성 연습 !</div>
          <div class="intro-heading text-uppercase">Welcome to My Resume.</div>
          <c:choose>
          	<c:when test="${id eq null }">
          		 <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="${pageContext.request.contextPath }/users/loginform.do">이력서 서비스 이용하기</a>
          	</c:when>
          	<c:otherwise>
          		 <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="${pageContext.request.contextPath }/profile/detail.do">이력서 서비스 이용하기</a>
          	</c:otherwise>
          </c:choose>
        </div>
      </div>
    </header>

 
    <!-- Resume -->
    <section class="bg-light" id="resume">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">My Resume People</h2>
            <h3 class="section-subheading text-muted">My Resume에 등록된 인재들을 찾아보세요.</h3>
            <button>버튼</button>
          </div>
        </div>
        <div class="row">
          <c:forEach var="tmp" items="${userList}">
	          <div class="col-sm-4">          
	            <div class="team-member">
	            <c:if test="${not empty tmp.saveFileName }">	            
	              <img class="mx-auto rounded-circle" src="${pageContext.request.contextPath}/upload/${tmp.saveFileName }" alt="">
	            </c:if>
	            <c:if test="${empty tmp.saveFileName }">	            
	              <img class="mx-auto rounded-circle" src="${pageContext.request.contextPath}/resources/img/team/2.jpg" alt="">
	            </c:if>
	              <h4><a href="profile/resume.do?id=${tmp.id }">${tmp.name }</a></h4>
	              <p class="text-muted">${tmp.email }</p>
	            </div>
	          </div>
          </c:forEach> 
          
        </div>
      </div>
    </section>
    
    <!-- Services -->
    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Services</h2>
            <h3 class="section-subheading text-muted">헤드헌팅에 최적화 된, 다양한 이력서 템플릿을 이용해 자신만의 이력서 관리를 할 수 있습니다.</h3>
          </div>
        </div>
        <div class="row text-center">
          <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <i class="fa fa-circle fa-stack-2x text-primary"></i>
              <i class="fa fa-laptop fa-stack-1x fa-inverse"></i>
            </span>
            <h4 class="service-heading">간편한 이력서 관리</h4>
            <p class="text-muted services-font">Myresume는 이력서 관리 툴을 제공합니다. 관리프로그램을 이용해 자신의 이력을 실시간으로 업데이트할 수 있으며 헤드헌터들이 언제든 열람할 수 있습니다.</p>
          </div>
          <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <i class="fa fa-circle fa-stack-2x text-primary"></i>
              <i class="fa fa-vcard fa-stack-1x fa-inverse"></i>
            </span>
            <h4 class="service-heading">편리한 헤드헌팅</h4>
            <p class="text-muted services-font">Myresume에서는 편리한 방법으로 인재를 찾을 수 있는 서비스를 제공하려 노력하고 있으며, 헤드헌터들에게 쉽게 노출될 수 있는 서비스를 제공하고 있습니다.</p>
          </div>
          <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <i class="fa fa-circle fa-stack-2x text-primary"></i>
              <i class="fa fa-file-text fa-stack-1x fa-inverse"></i>
            </span>
            <h4 class="service-heading">다양한 이력서 템플릿</h4>
            <p class="text-muted services-font">Myresume에서는 헤드헌터들에게 매력적인 이력서를 제시할 수 있는 방법을 항상 연구하고 고안하고 있습니다. 템플릿을 사용해 멋진 이력서를 만들어 보세요!</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Contact -->
    <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Contact Us</h2>
            <h3 class="section-subheading text-muted">contact@myresume.com</h3>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <span class="copyright">Copyright &copy; Myresume ${year}</span>
          </div>
        </div>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Contact form JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/js/jqBootstrapValidation.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="${pageContext.request.contextPath}/resources/js/agency.min.js"></script>

  </body>
</html>
