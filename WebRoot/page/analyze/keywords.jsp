<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>关键词可视化</title>
	</head>
	<body>
	   <div id="graph">
	   </div>
	</body>
	<script src="<%=basePath%>common/d3/js/d3.js"></script>
	<script src="<%=basePath%>common/d3/js/d3.layout.cloud.js"></script>
	<script>
	
	  //关键词显示区域大小
	  var graph_width = 500;
	  var graph_height = 500;
	  
	  var fill = d3.scale.category20();
	  
	  d3.layout.cloud().size([graph_width, graph_height])
	      .words([
	      ${data}
	       // "海尔", "生活", "时尚", "全球", "未来", "水晶", "微博",
	       // "转发", "设计师"
	        ].map(function(d) {
	        return {
		        		text: d.word
		         		,size: 10 + Math.random() * 90
		         		//,size: 10 + d.count
	         		};
	       }))
	      .padding(5)
	      .rotate(function() { return ~~(Math.random() * 2) * 90; })
	      .font("Impact")
	      .fontSize(function(d) { return d.size; })
	      .on("end", draw)
	      .start();
	
	  function draw(words) {
	    d3.select("#graph").append("svg")
	        .attr("width", graph_width)
	        .attr("height", graph_height)
	      	.append("g")
	        .attr("transform", "translate(150,150)")
	      	.selectAll("text")
	        .data(words)
	      	.enter().append("text")
	        .style("font-size", function(d) { return d.size + "px"; })
	        .style("font-family", "Impact")
	        .style("fill", function(d, i) { return fill(i); })
	        .attr("text-anchor", "middle")
	        .attr("transform", function(d) {
	        	 return "translate(" + [d.x, d.y] + ")rotate(" + d.rotate + ")";
	        })
	        .text(function(d) { return d.text; });
	  }
	</script>
	
</html>
