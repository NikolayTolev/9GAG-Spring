<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>9GAG</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="<c:url value="/css/post.css" />" rel="stylesheet">
  <link href="<c:url value="/css/upload.css" />" rel="stylesheet">
  <base href="http://localhost:8080/9gag.com/">
</head>
<body>

 <c:import url="navbar.jsp"></c:import>
<div class="container-fluid text-center">    
  <div class="row content">
  <c:import url="left-sidebar.jsp"></c:import>
    <div class="col-sm-8 text-left"> 
      <h1>Welcome</h1>
      <p></p>   
     <table>
     <c:forEach var="post" items="${posts}">
		 <tr >
		    <div class="tp"> 
		    <h2 onclick="openModel(${post.id})">${post.title}  ${post.id} </h2>
		    </div>
		    <div>
		    <img src="img/${post.imageURL}" width="300" height="400" onclick="openModel(${post.id})">
		    </div>
		    <div id="${post.id}" onload="countPoints(${post.id})">
		    click to see points
		    </div>
		    <div id="${post.id}+c"></div>
		    <div class="tf">
                <button class="L" onclick="upvotePost(${post.id})">L</button>
                <button class="D"  onclick="downvotePost(${post.id})">D</button>
                <button class="C" onclick="openModel(${post.id})">C</button>
		    </div>
		 </tr>
	</c:forEach>
    </table>

    </div>
  <c:import url="right-sidebar.jsp"></c:import>
  </div>
</div>

<div class="model" id="simpleModel">
	     <div id="2" class="model-content">
	         <div class="right">
	             <div class="model-header">
	                <span class="closeBtn">&times;</span>
	                 <h2 id="title"></h2>      
	             </div>
	             <div class="model-comments">         
	             </div>
	         </div>
	        <div class="left">
	            <div class="content-post">
	           		 <img  width="300" height="500" id="pic"> 
	            </div>
	            <div class="model-footer">
	                <button class="L">L</button>
	                <button class="D">D</button>
	                <button class="C">C</button>
	            </div>
	        </div>      
	    </div>
    </div>
    
     <div class="model-upload-p" id="simpleModelPost">
        <div class="upload-post">
                <div class="upload-header">
                   <span class="closeBtnPost">&times;</span>
                    <h2> Upload a Post</h2>      
                </div>
                <div class="upload-img" > 
                 <h3>Upload Image</h3>
                 </div>    
                 <div class="upload-video"> 
                     <h3>Upload Video</h3>
                </div>   
        </div>
        <div class="upload-model">
                <div class="upload-header">
                   <span class="closeBtnPost">&times;</span>
                   <img src="" id="currentPhoto">
                   <form method="post" action="upload/post" id="ajax-upload" enctype="multipart/form-data">
                      <table>
		                <tr style="text-align: left">
		                 <td>File</td>
		                 <td><input type="file" name="file" accept="" onchange="handleFile(this.files)" required></td>
		                 </tr>
		                <tr style="text-align: left">
		                 <td>Description</td>
		                 <td><textarea name="description" rows="5" colls="16" required></textarea></td>
		                </tr>
		                <tr style="text-align: left">
		                 <td>Tag</td>
		                 <td><input type="text" name="tag" required></td>
		                </tr>
		                <tr style="text-align: left">
		                 <td>Section</td>
		                 <td><select style="width: 179px; height: 30px" name="section" required>
									<c:forEach var="section" items="${sections}">
										<option value="${section.id}">${section.name}</option>
									</c:forEach>
							</select>
						 </td>	
						</tr>
		                <tr style="text-align: left">
		                <td></td>
		                 <td><input type="submit" value="upload file"></td>
		                </tr>
		            </table>
	             </form>
                </div>       
        </div>        
    </div>
          

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

<script src="<c:url value="/js/post.js" />"></script>
<script src="<c:url value="/js/upload.js" />"></script>
<script src="<c:url value="/js/search.js" />"></script>
</body>
</html>
