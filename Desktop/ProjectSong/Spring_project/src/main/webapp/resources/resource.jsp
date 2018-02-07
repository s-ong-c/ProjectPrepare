<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- css -->
     <!-- Custom fonts for this template -->
    <link href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/agency.css" rel="stylesheet">


    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="${pageContext.request.contextPath}/resources/plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="${pageContext.request.contextPath}/resources/plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="${pageContext.request.contextPath}/resources/plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- JQuery DataTable Css -->
    <link href="${pageContext.request.contextPath}/resources/plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css" rel="stylesheet">

    <!-- Custom Css -->
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">

    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="${pageContext.request.contextPath}/resources/css/themes/all-themes.css" rel="stylesheet" />
    <style>
    section{
    padding:0px;}
    </style>
 <!-- css./ -->
 <!-- js -->
 
        <!-- Jquery Core Js -->
    <script src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Select Plugin Js -->
    <script src="${pageContext.request.contextPath}/resources/plugins/bootstrap-select/js/bootstrap-select.js"></script>

    <!-- Slimscroll Plugin Js -->
    <script src="${pageContext.request.contextPath}/resources/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="${pageContext.request.contextPath}/resources/plugins/node-waves/waves.js"></script>

    <!-- Jquery DataTable Plugin Js -->
    <script src="${pageContext.request.contextPath}/resources/plugins/jquery-datatable/jquery.dataTables.js"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
   <!-- <script src="/resources/plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script> --> 
    <script src="${pageContext.request.contextPath}/resources/plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/jquery-datatable/extensions/export/pdfmake.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script>

	<!-- Validation Plugin Js -->
    <script src="${pageContext.request.contextPath}/resources/plugins/jquery-validation/jquery.validate.js"></script>

    <!-- Custom Js -->
    <script src="${pageContext.request.contextPath}/resources/js/admin.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pages/tables/jquery-datatable.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pages/examples/sign-up.js"></script>
    

    <!-- Demo Js -->
    <script src="${pageContext.request.contextPath}/resources/js/demo.js"></script>

    <script>
    (function () {
   	 $('form').validate();
 	  })();

	
 	 //삭제 컨펌창
	function deleteConfirm(x,num,id){//삭제이동할경로명,num,id
  		var isDelete=confirm("삭제하시겠습니까?");
  		if(isDelete){
 			location.href=x+"Delete.do?num="+num+"&id="+id;
 		}else{
 			return;
  		}
  	
 	};
    
 	</script>
    
 <!-- js./ -->   
 