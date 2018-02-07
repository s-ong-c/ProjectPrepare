<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<!-- LIST -->
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>Jquery DataTable | Bootstrap Based Admin Template - Material Design</title>
<jsp:include page="/resources/resource.jsp"></jsp:include>
    <style>
    th{
     text-align:center;
    }
    td{
     text-align:center;
    }
    </style>
</head>

<body class="theme-red">

<!-- nav -->
<jsp:include page="/resources/nav.jsp"></jsp:include>  
<!-- nav./ -->

    <section class="content">
        <div class="container-fluid">

            
            <!-- ac 테이블 시작-->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Award & Certifications
                            </h2>
                            <a class="btn btn-primary pull-right" href="acInsertForm.do?id=${id }">입력</a>
                            <br /> 
                        </div>
                        
                        
                        <div class="body table-responsive">           
                            <table class="table table-hover">
                                <colgroup>
									<col width="20%"/>
									<col width="50%"/>
									<col width="10%"/>
									<col width="20%"/>
								</colgroup>
                                <thead>
                                    <tr>
                                        <th>수상-자격증명</th>
										<th>설명</th>
										<th>수상일</th>
										<th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="tmp" items="${acList }">
                                    <tr>
										<td>${tmp.ac_nm }</td>
										<td style="text-align:justify;">${tmp.ac_exp }</td>
										<td>${tmp.ac_date }</td>
										<td style="text-align:center;">
											<a class="btn btn-info" href="acUpdateForm.do?num=${tmp.num }&id=${tmp.id }">수정</a>
											<a class="btn btn-danger" href="javascript:deleteConfirm('ac',${tmp.num},'${tmp.id }' )">삭제</a>
										</td>					
                                    </tr>
                                </c:forEach>                                  
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
            <!-- ac 테이블 끝./ -->

            <!-- experiences 테이블 시작-->       

            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Experiences
                            </h2>
                            <a class="btn btn-primary pull-right" href="expsInsertForm.do?id=${id }">입력</a>   
                            <br /> 
                        </div>
                        
                        
                        <div class="body table-responsive">           
                            <table class="table table-hover">
                                <colgroup>
									<col width="10%"/>
									<col width="10%"/>
									<col width="40%"/>
									<col width="10%"/>
									<col width="10%"/>
									<col width="10%"/>
									<col width="20%"/>							
								</colgroup>
                                <thead>
                                    <tr>
                                        <th>업무 포지션</th>
										<th>회사 또는 기관명</th>
										<th>이력설명</th>
										<th>시작일</th>
										<th>종료일</th>
										<th></th>
                                    </tr>
                                </thead>
                                <tbody>
<%--                                 <c:forEach var="tmp" items="${exList }">
									<tr>
										<td>${tmp.position }</td>
										<td>${tmp.place }</td>
										<td style="text-align:justify">${tmp.ex_exp }</td>
										<td>${tmp.start_date }</td>
										<td>${tmp.end_date }</td>
										<td style="text-align:center;">
											<a class="btn btn-info" href="expsUpdateForm.do?num=${tmp.num }&id=${tmp.id }">수정</a>
											<a class="btn btn-danger" href="javascript:deleteConfirm('exps',${tmp.num},'${tmp.id }' )">삭제</a>
										</td>			
									</tr>
								</c:forEach>  --%>                               
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
            <!-- exp 테이블 끝./ -->

            <!-- edu 테이블 시작-->       

            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Education
                            </h2>
                            <a class="btn btn-primary pull-right" href="eduInsertForm.do?id=${id }">입력</a>  
                            <br />  
                        </div>
                        
                        
                        <div class="body table-responsive">           
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>학교명 또는 기관명</th>
										<th>전공</th>
										<th>교육내용</th>
										<th>시작일</th>
										<th>종료일</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="tmp" items="${eduList }">
									<tr>
										<td>${tmp.place }</td>
										<td>${tmp.major }</td>
										<td style="text-align:justify">${tmp.edu_exp }</td>
										<td>${tmp.start_date }</td>
										<td>${tmp.end_date }</td>
										<td style="text-align:center;">
											<a class="btn btn-info" href="eduUpdateForm.do?num=${tmp.num }&id=${tmp.id }">수정</a>
											<a class="btn btn-danger" href="javascript:deleteConfirm('edu',${tmp.num},'${tmp.id }' )">삭제</a>
										</td>									
									</tr>
								</c:forEach>			                         
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
            <!-- edu 테이블 끝./ -->

            <!-- ints 테이블 시작-->       

            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Interests
                            </h2>
                            <a class="btn btn-primary pull-right" href="intsInsertForm.do?id=${id }">입력</a>
                            <br />
                        </div>
                        
                        
                        <div class="body table-responsive">           
                            <table class="table table-hover">
                                <colgroup>
									<col width="30%"/>
									<col width="50%"/>
									<col width="20%"/>
								</colgroup>
                                <thead>
                                    <tr>
                                        <th>관심사</th>
										<th>관심사 설명</th>
										<th></th>
                                    </tr>
                                </thead>
                                <tbody>
								<c:forEach var="tmp" items="${intsList }">
									<tr>
										<td>${tmp.ints_nm }</td>
										<td style="text-align:justify">${tmp.ints_exp }</td>
										<td style="text-align:center;">
											<a class="btn btn-info" href="intsUpdateForm.do?num=${tmp.num }&id=${tmp.id }">수정</a>
											<a class="btn btn-danger" href="javascript:deleteConfirm('ints',${tmp.num},'${tmp.id }' )">삭제</a>
										</td>									
									</tr>
								</c:forEach>		                         
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ints 테이블 끝./ -->


            <!-- skills 테이블 시작-->       

            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Skills
                            </h2>
                            <a class="btn btn-primary  pull-right" href="skillsInsertForm.do?id=${id }">입력</a>
                            <br />
                        </div>
                        
                        
                        <div class="body table-responsive">           
                            <table class="table table-hover">
                           		<colgroup>
									<col width="30%"/>
									<col width="50%"/>
									<col width="20%"/>
								</colgroup>
                                <thead>
                                    <tr>
										<th>기술명</th>
										<th>기술설명</th>
										<th></th>
                                    </tr>
                                </thead>
                                <tbody>
								<c:forEach var="tmp" items="${skillsList }">
									<tr>
										<td>${tmp.skill_nm }</td>
										<td style="text-align:justify">${tmp.skill_exp }</td>
										<td style="text-align:center;">
										<a class="btn btn-info" href="skillsUpdateForm.do?num=${tmp.num }&id=${tmp.id }">수정</a>
										<a class="btn btn-danger" href="javascript:deleteConfirm('skills',${tmp.num},'${tmp.id }' )">삭제</a>
										</td>									
									</tr>
								</c:forEach>	                         
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- skills 테이블 끝./ -->


        </div>
    </section>

</body>

</html>