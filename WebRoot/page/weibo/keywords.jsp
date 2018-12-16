<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>文章出轨-致#周一见#</title>
     <script type="text/javascript" src="<%=basePath %>common/jquery/jquery-1.7.min.js"></script>
     <script type="text/javascript" src="<%=basePath %>common/bootstrap/js/bootstrap.min.js"></script>
     <link href="<%=basePath %>common/bootstrap/css/bootstrap.css" rel="stylesheet">
     <script type="text/javascript" src="<%=basePath %>/common/highcharts/js/highcharts.js"></script>
	
     <link rel="stylesheet" type="text/css" href="<%=basePath %>common/jqcloud/jqcloud.css" />
   
     <script type="text/javascript" src="<%=basePath %>common/jqcloud/jqcloud-1.0.4.js"></script>
   
     <script type="text/javascript">
    
    $(function(){
     	showKeyWordCloud();
     	showKeyWrodBar();
    });
    
    function showKeyWordCloud(){
    	var word_list = [${data}];
    	$("#my_favorite_latin_words").jQCloud(word_list);
    }
    
    function showKeyWrodBar(){
    	var keywordCategories = [];
		var keywordStatisticData=${keywordStatistic};
		for(var i=0;i<keywordStatisticData.length;i++){
			keywordCategories.push(keywordStatisticData[i][0]);
		}
    	$('#keywordstatistic').highcharts({
		    chart: {
		        type: 'bar'
		    },
		    title: {
		        text: '热点关键词'
		    },
		    subtitle: {
		        text: '热点关键词权重分布'
		    },
		    legend:{
				enabled:false
			},
			xAxis: {
		        categories: keywordCategories,
	            labels:{
	                staggerLines: 2
	            },
	            title: {
	                text: ""
	            }
		    },
		    yAxis: {
		        title: {
		            text: '权重'
		        }
		    },
		    tooltip: {
	            formatter: function() {
	                var point = this.point,
	                    s =  this.point.name +':<b>'+ this.y +'</b><br/>';
	                return s;
	            }
	        },
	        series: [{
	            data:keywordStatisticData
	        }],
	        plotOptions: {
	        	bar: {
	        		colorByPoint: true,
	        		dataLabels: {
	                    enabled: true,
	                    formatter: function() {
	                        return this.y ;
	                    }
	                }
	        	}
	        },
	        exporting: {
	            enabled: false
	        }
		});
    }
    </script>
    <style type="">
	    .center {
		  margin-left: auto;
		  margin-right: auto;
		}
    </style>
  </head>
  <body> 
  <div class="container-fluid">

         <div class="row-fluid">
         
              <div class="span2">
              </div>

              <div class="span8">

                   <div class="hero-unit">
                       <h1 class="text-center">文章出轨-致#周一见#</h1>
                       	<p>导语：#周一见#话题迅速蹿升到微博话题榜榜首，这都得归功于近日爆出出轨传闻的文章和姚笛。
                       	因为那个曾经骄傲地对全世界说“我这辈子做得最牛逼的事就是我的女人叫马伊琍”的文章已经沦为渣男了?
                       	信不信由你!南都娱乐周刊直击文章赴深圳密会正在拍戏、将过生日的姚笛，上演街头亲密挽手、拥抱一幕，
                       	二人持续缠绵6日，随后乘同架飞机回京。据悉，文章妻子马伊琍于2月在香港产下二胎，
                       	而早前姚笛也传出与男友迟帅分手的消息。爱美网明星开扒文章出轨铁证。
						</p>
						</div>

                   <div class="row-fluid">
                   	   <div class="center" id="my_favorite_latin_words" style="height: 450px; border: 1px solid #ccc; margin-bottom: 20px;"></div>
                   </div>
                   
               	   <div class="row-fluid">
					   <div id="keywordstatistic" style="height:2000px; border: 1px solid #ccc;"></div>
				   </div>
				   
              </div>
         </div>
     </div>
  </body>
</html>
