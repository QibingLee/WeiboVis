<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.wbvis.weibo.analyze.Statistic"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
     <title>社会网络数据挖掘可视化</title>
     <script src="<%=basePath %>common/jquery/jquery-1.7.min.js"></script>
     <script src="<%=basePath %>common/bootstrap/js/bootstrap.min.js"></script>
     <link  href="<%=basePath %>common/bootstrap/css/bootstrap.css" rel="stylesheet">
     <style>
     	.span4{
     	  margin-bottom:10px;
     	}
        .span4 .description{
          height:120px;
          padding:5px;
        }
        .btn{
          float:right;
          margin-right:5px;
          margin-bottom:5px;
        }
        .btn{
          button:button-border-primary button-rounded;
        }
     </style>
</head>
<body>

     <div class="container-fluid">
		 
         <div class="row-fluid">
         
              <div class="span2">
              </div>

              <div class="span8">

                   <div class="hero-unit" style="margin-top:10px; background:white; color:#2AD2BB;border:1px solid #2AD2BB;font-family:'微软雅黑';">
                       <h1 class="text-center">社会网络数据挖掘可视化</h1>
                   </div>

                   <div class="row-fluid">
                    
                    <!-- 地图显示 -->
                     <div class="span4" style="color:#775995;border:1px solid #775995;font-family:'微软雅黑';">
                      <h2 class="text-center">地图显示</h2>
                      <p class="description">网络的地图可为个性化服务、信息推送等提供基本数据，
                      尤其是在信息时代，社区的存在更加普遍，发现技术应用更加方便，其商业价值和服务价值更大。 </p>
                      <p><a class="btn" style="border-color:#775995; border-width:1px; color:#775995; " href="<%=basePath %>analyze/useranalyze.do">查看详情 &raquo;</a></p>
                    </div>
                    
                    
                    <div class="span4" style="color:#FD791C;border:1px solid #FD791C;font-family:'微软雅黑';">
                      <h2 class="text-center">社团发现</h2>
                      <p class="description">网络的社区发现可为个性化服务、信息推送等提供基本数据，
                      尤其是在信息时代，社区的存在更加普遍，发现技术应用更加方便，其商业价值和服务价值更大。 </p>
                      <p><a class="btn" style="border-color:#FD791C; border-width:1px; color:#FD791C; " href="<%=basePath %>weibo/network.do">查看详情 &raquo;</a></p>
                    </div>

					<div class="span4" style="color:#3596DC;border:1px solid #3596DC;font-family:'微软雅黑';">
                      <h2 class="text-center">话题传播</h2>
                      <p class="description">微博凭借灵活快捷的信息传播模式，必将成为最具影响力的互联网产品。在微博中，用户不需要等待对方进行好友关系的确认，就可以通过跟随的方式单向跟随目标用户，接受对方发布的信息。这种定向阅读的方式使得微博的媒体属性凸显。 </p>
                      <p><a class="btn" style="border-color:#3596DC; border-width:1px; color:#3596DC; " href="<%=basePath %>network/index.html">查看详情 &raquo;</a></p>
                    </div>
                </div>
                
                
 				<div class="row-fluid">
 				
                    <div class="span4" style="color:#28D1BA;border:1px solid #28D1BA;font-family:'微软雅黑';">
                      <h2 class="text-center">热点挖掘</h2>
                      <p class="description">网络信息的指数爆炸给人们获取与掌控信息带来了困扰,
                      为了有效挖掘海量网络数据中的热点信息,本系统设计了网络热点信息发现算法。
                      </p>
                      <p><a class="btn" style="border-color:#28D1BA; border-width:1px; color:#28D1BA;" href="<%=basePath %>weibo/keywords.do">查看详情 &raquo;</a></p>
                    </div>

                    <div class="span4" style="color:#2A7880;border:1px solid #2A7880;font-family:'微软雅黑';">
                      <h2 class="text-center">用户分析</h2>
                      <p class="description">要执行差异化策略，首先要做到用户的差异化，
                      为了分析用户的特异性，就需要通过开展基础用户数据统计分析。
                      区域分析主要是对微博用户中的地区进行分析，
                      探讨区域内部各自然及人文要素间和区域间相互联系的规律。
                      </p>
        
                      <p><a class="btn" style="border-color:#2A7880; border-width:1px; color:#2A7880;" href="<%=basePath %>analyze/hobby_bar.do">查看详情 &raquo;</a></p>
                    </div>
                    
                </div>

              </div>
         </div>
     </div>

</body>

</html>
