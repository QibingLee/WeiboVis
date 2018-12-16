<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

 <% String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	ArrayList<String> common_hobby_province = (ArrayList<String>)request.getAttribute("common_hobby_item");
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>用户分析</title>

	<script type="text/javascript" src="<%=basePath %>common/jquery/jquery-1.7.min.js"></script>

	<script type="text/javascript" src="<%=basePath %>common/bootstrap/js/bootstrap.min.js"></script>
	<link href="http://v3.bootcss.com/dist/css/bootstrap.css" rel="stylesheet">
	<script type="text/javascript" src="<%=basePath %>/common/highcharts/js/highcharts.js"></script>
	<script src="<%=basePath %>common/highcharts/js/highcharts.js"></script>
	<script src="<%=basePath %>common/highcharts/js/modules/exporting.js"></script>

	<script type="text/javascript">

		$(function () {
			//
			$('#bar_container').highcharts(
					${bar_data},				//标题信息
					tooltip: {
				valueSuffix: ''	//单位
			},
			plotOptions: {
				bar: {
					dataLabels: {
						enabled: true
					}
				}
			},
			legend: {
				layout: 'vertical',
						align: 'right',
						verticalAlign: 'top',
						x: -40,
						y: 100,
						floating: true,
						borderWidth: 1,
						backgroundColor: '#FFFFFF',
						shadow: true
			},
			credits: {
				enabled: false
			},
			series: [${bar_series}]	//值数据
		});


		$('#pie_container').highcharts({
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false
			},
			title: {
				text: '爱好分析'
			},
			tooltip: {
				pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
			},
			plotOptions: {
				pie: {
					allowPointSelect: true,
					cursor: 'pointer',
					dataLabels: {
						enabled: true,
						color: '#000000',
						connectorColor: '#000000',
						format: '<b>{point.name}</b>: {point.percentage:.1f} %'
					}
				}
			},
			series: [{
				type: 'pie',
				name: 'Browser share',
				data: [
					${pie_series}
				]
			}]
		});

		//
		$('#province_container_1').highcharts({
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false
			},
			title: {
				text: ''
			},
			tooltip: {
				pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
			},
			plotOptions: {
				pie: {
					allowPointSelect: true,
					cursor: 'pointer',
					dataLabels: {
						enabled: true,
						color: '#000000',
						connectorColor: '#000000',
						format: '<b>{point.name}</b>: {point.percentage:.1f} %'
					}
				}
			},
			series: [{
				type: 'pie',
				name: '省份分析',
				data: [
					<%=common_hobby_province.get(0).split("\t")[1]%>
				]
			}]
		});

		//
		$('#province_container_2').highcharts({
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false
			},
			title: {
				text: ''
			},
			tooltip: {
				pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
			},
			plotOptions: {
				pie: {
					allowPointSelect: true,
					cursor: 'pointer',
					dataLabels: {
						enabled: true,
						color: '#000000',
						connectorColor: '#000000',
						format: '<b>{point.name}</b>: {point.percentage:.1f} %'
					}
				}
			},
			series: [{
				type: 'pie',
				name: '省份分析',
				data: [
					<%=common_hobby_province.get(1).split("\t")[1]%>
				]
			}]
		});

		//
		$('#province_container_3').highcharts({
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false
			},
			title: {
				text: ''
			},
			tooltip: {
				pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
			},
			plotOptions: {
				pie: {
					allowPointSelect: true,
					cursor: 'pointer',
					dataLabels: {
						enabled: true,
						color: '#000000',
						connectorColor: '#000000',
						format: '<b>{point.name}</b>: {point.percentage:.1f} %'
					}
				}
			},
			series: [{
				type: 'pie',
				name: '省份分析',
				data: [
					<%=common_hobby_province.get(2).split("\t")[1]%>
				]
			}]
		});

		//
		$('#province_container_4').highcharts({
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false
			},
			title: {
				text: ''
			},
			tooltip: {
				pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
			},
			plotOptions: {
				pie: {
					allowPointSelect: true,
					cursor: 'pointer',
					dataLabels: {
						enabled: true,
						color: '#000000',
						connectorColor: '#000000',
						format: '<b>{point.name}</b>: {point.percentage:.1f} %'
					}
				}
			},
			series: [{
				type: 'pie',
				name: '省份分析',
				data: [
					<%=common_hobby_province.get(3).split("\t")[1]%>
				]
			}]
		});

		//省份分析5，这个是分析什么
		$('#province_container_5').highcharts({
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false
			},
			title: {
				text: ''
			},
			tooltip: {
				pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
			},
			plotOptions: {
				pie: {
					allowPointSelect: true,
					cursor: 'pointer',
					dataLabels: {
						enabled: true,
						color: '#000000',
						connectorColor: '#000000',
						format: '<b>{point.name}</b>: {point.percentage:.1f} %'
					}
				}
			},
			series: [{
				type: 'pie',
				name: '省份分析',
				data: [
					<%=common_hobby_province.get(4).split("\t")[1]%>
				]
			}]
		});
		//
		$('#province_container_6').highcharts({
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false
			},
			title: {
				text: ''
			},
			tooltip: {
				pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
			},
			plotOptions: {
				pie: {
					allowPointSelect: true,
					cursor: 'pointer',
					dataLabels: {
						enabled: true,
						color: '#000000',
						connectorColor: '#000000',
						format: '<b>{point.name}</b>: {point.percentage:.1f} %'
					}
				}
			},
			series: [{
				type: 'pie',
				name: '省份分析',
				data: [
					<%=common_hobby_province.get(5).split("\t")[1]%>
				]
			}]
		});

		//
		$('#province_container_7').highcharts({
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false
			},
			title: {
				text: ''
			},
			tooltip: {
				pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
			},
			plotOptions: {
				pie: {
					allowPointSelect: true,
					cursor: 'pointer',
					dataLabels: {
						enabled: true,
						color: '#000000',
						connectorColor: '#000000',
						format: '<b>{point.name}</b>: {point.percentage:.1f} %'
					}
				}
			},
			series: [{
				type: 'pie',
				name: '省份分析',
				data: [
					<%=common_hobby_province.get(6).split("\t")[1]%>
				]
			}]
		});

		//
		$('#province_container_8').highcharts({
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false
			},
			title: {
				text: ''
			},
			tooltip: {
				pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
			},
			plotOptions: {
				pie: {
					allowPointSelect: true,
					cursor: 'pointer',
					dataLabels: {
						enabled: true,
						color: '#000000',
						connectorColor: '#000000',
						format: '<b>{point.name}</b>: {point.percentage:.1f} %'
					}
				}
			},
			series: [{
				type: 'pie',
				name: '省份分析',
				data: [
					<%=common_hobby_province.get(7).split("\t")[1]%>
				]
			}]
		});

		//
		$('#province_container_9').highcharts({
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false
			},
			title: {
				text: ''
			},
			tooltip: {
				pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
			},
			plotOptions: {
				pie: {
					allowPointSelect: true,
					cursor: 'pointer',
					dataLabels: {
						enabled: true,
						color: '#000000',
						connectorColor: '#000000',
						format: '<b>{point.name}</b>: {point.percentage:.1f} %'
					}
				}
			},
			series: [{
				type: 'pie',
				name: '省份分析',
				data: [
					<%=common_hobby_province.get(8).split("\t")[1]%>
				]
			}]
		});
		});
	</script>

</head>

<body>

<!-- 区域分析  -->
<div class="container">

	<div class="row">
		<!-- 爱好分析 比例分析-->
		<div id="bar_container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
	</div>

	<div class="row">
		<!-- 爱好分析 分布分析 -->
		<div id="pie_container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
	</div>

	<div class="row">
		<!-- 省份分析 -->
		<div class="col-md-4">
			<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<%= common_hobby_province.get(0).split("\t")[0] %></h2>

			<div class="span4" id="province_container_1" style="min-width: 310px; height: 400px; "></div>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				上图是<%= common_hobby_province.get(0).split("\t")[0] %>属性在主要地区的分布情况。
			</p>
		</div>

		<div class="col-md-4">
			<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<%= common_hobby_province.get(1).split("\t")[0] %></h2>

			<div class="span4" id="province_container_2" style="min-width: 310px; height: 400px; "></div>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				上图是<%= common_hobby_province.get(1).split("\t")[0] %>属性在主要地区的分布情况。</p>
		</div>

		<div class="col-md-4">
			<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				游泳</h2>

			<div class="span4" id="province_container_3" style="min-width: 310px; height: 400px; "></div>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				上图是游泳属性在主要地区的分布情况。</p>
		</div>

	</div>

	<div class="row">

		<div class="col-md-4">
			<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<%= common_hobby_province.get(3).split("\t")[0] %></h2>

			<div class="span4" id="province_container_4" style="min-width: 310px; height: 400px; "></div>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				上图是<%= common_hobby_province.get(3).split("\t")[0] %>属性在主要地区的分布情况。
			</p>
		</div>

		<div class="col-md-4">
			<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<%= common_hobby_province.get(4).split("\t")[0] %></h2>

			<div class="span4" id="province_container_5" style="min-width: 310px; height: 400px; "></div>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				上图是<%= common_hobby_province.get(4).split("\t")[0] %>属性在主要地区的分布情况。</p>
		</div>

		<div class="col-md-4">
			<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<%= common_hobby_province.get(5).split("\t")[0] %></h2>

			<div class="span4" id="province_container_6" style="min-width: 310px; height: 400px; "></div>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				上图是<%= common_hobby_province.get(5).split("\t")[0] %>属性在主要地区的分布情况。</p>
		</div>

	</div>

	<div class="row">

		<div class="col-md-4">
			<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<%= common_hobby_province.get(6).split("\t")[0] %></h2>

			<div class="span4" id="province_container_7" style="min-width: 310px; height: 400px; "></div>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

				上图是<%= common_hobby_province.get(6).split("\t")[0] %>属性在主要地区的分布情况。
			</p>
		</div>

		<div class="col-md-4">
			<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<%= common_hobby_province.get(7).split("\t")[0] %></h2>

			<div class="span4" id="province_container_8" style="min-width: 310px; height: 400px; "></div>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				上图是<%= common_hobby_province.get(7).split("\t")[0] %>属性在主要地区的分布情况。</p>
		</div>

		<div class="col-md-4">
			<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<%= common_hobby_province.get(8).split("\t")[0] %></h2>

			<div class="span4" id="province_container_9" style="min-width: 310px; height: 400px; "></div>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				上图是<%= common_hobby_province.get(8).split("\t")[0] %>属性在主要地区的分布情况。</p>
		</div>

	</div>

</div>

</body>
</html>
