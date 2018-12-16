<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"> 
<html> 
  <head> 
    <link rel="stylesheet" type="text/css" href="<%=basePath %>common/bootstrap/css/bootstrap.css">     
 	<script src="<%=basePath %>common/jquery/jquery-1.7.min.js"></script>
    <style>
	    img {
		    border: 0 none;
		    height: 96%;
		    max-width: 90%;
		    vertical-align: middle;
		}
    </style>
  </head> 
 
  <body> 
    <div id="myCarousel" class="carousel slide"> 
    <ol class="carousel-indicators"> 
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li> 
      <li data-target="#myCarousel" data-slide-to="1"></li> 
      <li data-target="#myCarousel" data-slide-to="2"></li> 
    </ol> 
    
      <div class="carousel-inner"> 
      
             <div class="item active"> 
               	<img src="<%=basePath %>common/img/snsvis.jpg" alt="社会网络数据挖掘可视化研究"> 
               	<div class="carousel-caption"> 
               		<h4>社会网络数据挖掘可视化研究</h4> 
               		<p>
               			网络的社区发现可为个性化服务、信息推送等提供基本数据，尤其是在信息时代，社区的存在更加普遍，发现技术应用更加方便，其商业价值和服务价值更大。
               		</p> 
             	</div> 
            </div> 
            
     		
       
       		<div class="item"> 
       			<a href="<%=basePath %>weibo/keywords.do">
       			<img src="<%=basePath %>common/img/keywords.png" alt="热点挖掘"></a> 
            	<div class="carousel-caption"> 
              		<h4>热点挖掘</h4> 
              		<p>
              			网络信息的指数爆炸给人们获取与掌控信息带来了困扰,为了有效挖掘海量网络数据中的热点信息,本系统设计了网络热点信息发现算法。
              		</p> 
            	</div> 
      		</div>
         
         <div class="item"> 
       			<a href="<%=basePath %>analyze/hobby_bar.do">
       			<img src="<%=basePath %>common/img/userAnalyze.jpg" alt="用户分析"></a> 
            	<div class="carousel-caption"> 
              		<h4>用户分析</h4> 
              		<!-- 用旧的方法 -->
              		<p>
              			要执行差异化策略，首先要做到用户的差异化，为了分析用户的特异性，就需要通过开展基础用户数据统计分析。
              		 区域分析主要是对微博用户中的地区进行分析，探讨区域内部各自然及人文要素间和区域间相互联系的规律。
              		</p> 
            	</div> 
      		</div>
         
         
            <div class="item"> 
       			<!--  <a href="<%=basePath %>analyze/hobby_bar.do"> -->
       			
       			<a href="<%=basePath %>analyze/useranalyze.do">
       			
       			<img src="<%=basePath %>common/img/earthNew.png" alt="用户分析"></a> 
            	<div class="carousel-caption"> 
              		<h4>地图分析</h4> 
              		<!-- 用新的方法 -->
              		<p>
              			要执行差异化策略，首先要做到用户的差异化，为了分析用户的特异性，就需要通过开展基础用户数据统计分析。
              		 区域分析主要是对微博用户中的地区进行分析，探讨区域内部各自然及人文要素间和区域间相互联系的规律。
              		</p> 
            	</div> 
      		</div>
      		
      		<div class="item"> 
     			<a href="<%=basePath %>analyze/network.do">
     			<img src="<%=basePath %>common/img/communityNew.png" alt="社区发现"></a>
         		<div class="carousel-caption"> 
           			<h4>社区发现</h4> 
           			<!-- 用旧的方法 -->
            		<p>
            			网络的社区发现可为个性化服务、信息推送等提供基本数据，尤其是在信息时代，社区的存在更加普遍，发现技术应用更加方便，其商业价值和服务价值更大。
               		</p> 
         		</div> 
       		</div> 
       		
       		
       		<div class="item"> 
     			<a href="<%=basePath %>network/index.html">
     			<img src="<%=basePath %>common/img/transportTheme.png" alt="转发分析"></a>
         		<div class="carousel-caption"> 
           			<h4>转发分析</h4> 
           			<!-- 用新的方法 -->
            		<p>
            			虽然身为互联网的新产品，微博还处于亟待完善的成长期，但其凭借灵活快捷的信息传播模式，必将成为最具影响力的互联网产品。在微博中，用户不需要等待对方进行好友关系的确认，就可以通过跟随的方式单向跟随目标用户，接受对方发布的信息。
                     </p> 
         		</div> 
       		</div> 
      		
      		
      </div> 
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a> 
        <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a> 
      </div> 
      
    <script> 
	    $(function(){
		  $('.carousel').carousel();
		  $('.item img').addClass('carousel-inner img-responsive img-rounded'); 
		});    
   	 	
   	 	
    </script> 

    <script src="<%=basePath %>common/bootstrap/js/bootstrap.js"></script> 
    
    </body> 
</html>