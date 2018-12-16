<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

 <!-- 原来head的内容 -->
<!-- 
  <head> 
    <base href="<%=basePath%>"   
    <title>My JSP 'MyJsp.jsp' starting page</title>  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">	
  </head>  
  -->
  
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Hide_Sidebar_ECharts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="ECharts">
    <meta name="author" content="linzhifeng@baidu.com">

    <script src="<%=basePath %>common/echart/esl.js"></script>
    <script src="<%=basePath %>common/echart/codemirror.js"></script>
    <script src="<%=basePath %>common/echart/javascript.js"></script>

    <link href="http://echarts.baidu.com/doc/asset/css/bootstrap.css" rel="stylesheet">
    <link href="http://echarts.baidu.com/doc/asset/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="http://echarts.baidu.com/doc/asset/css/codemirror.css" rel="stylesheet">
    <link href="http://echarts.baidu.com/doc/asset/css/monokai.css" rel="stylesheet">
    <link href="http://echarts.baidu.com/doc/asset/css/echartsHome.css" rel="stylesheet">
    <link rel="shortcut icon" href="http://echarts.baidu.com/doc/asset/ico/favicon.png">
	<script data-require-id="echarts" src="<%=basePath %>common/echart/echarts-map.js" async=""></script>
	<script data-require-id="echarts/chart/line" src="<%=basePath %>common/echart/echarts-map.js" async=""></script>
	<script data-require-id="echarts/chart/bar" src="<%=basePath %>common/echart/echarts-map.js" async=""></script>
	<script data-require-id="echarts/chart/scatter" src="<%=basePath %>common/echart/echarts-map.js" async=""></script>
	<script data-require-id="echarts/chart/k" src="<%=basePath %>common/echart/echarts-map.js" async=""></script>
	<script data-require-id="echarts/chart/pie" src="<%=basePath %>common/echart/echarts-map.js" async=""></script>
	<script data-require-id="echarts/chart/radar" src="<%=basePath %>common/echart/echarts-map.js" async=""></script>
	<script data-require-id="echarts/chart/force" src="<%=basePath %>common/echart/echarts-map.js" async=""></script>
	<script data-require-id="echarts/chart/chord" src="<%=basePath %>common/echart/echarts-map.js" async=""></script>
	<script data-require-id="echarts/chart/map" src="<%=basePath %>common/echart/echarts-map.js" async=""></script>
  
  
  
    <link rel="stylesheet" type="text/css" href="<%=basePath %>common/fancybox/jquery.fancybox.css"/>
    <link rel="stylesheet" href="<%=basePath %>common/css/style.css" type="text/css" media="screen" />
    <link rel="stylesheet" media="screen and (max-height: 770px)" href="<%=basePath %>common/css/tablet.css" />
   
    <script src="<%=basePath %>common/jquery/jquery.min.js" type="text/javascript"></script>
    <script src="<%=basePath %>common/sigma/sigma.min.js" type="text/javascript" language="javascript"></script>
    <script src="<%=basePath %>common/sigma/sigma.parseJson.js" type="text/javascript" language="javascript"></script>
    <script src="<%=basePath %>common/fancybox/jquery.fancybox.pack.js" type="text/javascript" language="javascript"></script>
    <script src="js/main.js" type="text/javascript" language="javascript"></script>

    </head>
  
  <body style="">
  <center>
  
    <div class="container-fluid">
        <div class="row-fluid">
            <div id="sidebar-code" class="span4" style="display:none;">
                <div class="well sidebar-nav">
                    <div class="nav-header"><a href="http://echarts.baidu.com/doc/example/mix3.html#" onclick="autoResize()" class="icon-resize-full" id="icon-resize"></a>option</div>
                    <textarea id="code" name="code" style="display: none;">option = {
    tooltip : {
        trigger: 'item'
    },
    legend: {
        x:'right',
        data:['北京','上海','广东']
    },
    dataRange: {
        orient: 'horizontal',
        min: 0,
        max: 2500,
        text:['高','低'],           // 文本，默认为数值文本
        splitNumber:0
    },
    toolbox: {
        show : true,
        orient: 'vertical',
        x:'right',
        y:'center',
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false}
        }
    },
    series : [
        {
            name: '人数分布',
            type: 'map',
            mapType: 'china',
            mapLocation: {
                x: 'left'
            },
            selectedMode : 'multiple',
            itemStyle:{
                normal:{label:{show:true}},
                emphasis:{label:{show:true}}
            },
            data:[
            
                {name: '北京',value: 48,selected:true},
                {name: '天津',value: 39,selected:true},
                {name: '上海',value: 54,selected:true},
                {name: '重庆',value: 33},
                {name: '河北',value: 49,selected:true},
                {name: '河南',value: 23},
                {name: '云南',value: 49,selected:true},
                {name: '辽宁',value: 35},
                {name: '黑龙江',value: 29},
                {name: '湖南',value: 33},
                {name: '安徽',value: 36,selected:true},
                {name: '山东',value: 33},
                {name: '新疆',value: 21},
                {name: '江苏',value: 43,selected:true},
                {name: '浙江',value: 38,selected:true},
                {name: '江西',value: 40,selected:true},
                {name: '湖北',value: 41,selected:true},
                {name: '广西',value: 38,selected:true},
                {name: '甘肃',value: 27},
                {name: '山西',value: 35,selected:true},
                {name: '内蒙古',value: 39,selected:true},
                {name: '陕西',value: 24},
                {name: '吉林',value: 34},
                {name: '福建',value: 31},
                {name: '贵州',value: 31},
                {name: '广东',value: 57,selected:true},
                {name: '青海',value: 33},
                {name: '西藏',value: 34,selected:true},
                {name: '四川',value: 50,selected:true},
                {name: '宁夏',value: 28},
                {name: '海南',value: 40,selected:true},
                {name: '台湾',value: 44,selected:true},
                {name: '香港',value: 36,selected:true},
                {name: '澳门',value: 42,selected:true}
            ]
        },
        {
            name:'各省人数',
            type:'pie',
            tooltip: {
                trigger: 'item',
                formatter: "{a} &lt;br/&gt;{b} : {c} ({d}%)"
            },
            center: [document.getElementById('main').offsetWidth - 250, 225],
            radius: [50, 120],
            data:[
                {name: '四川', value: 50},
                {name: '云南', value: 49},
                {name: '广东', value: 57},
                {name: '北京', value: 48},
                {name: '上海', value: 54},
                {name: '重庆', value: 33},
                {name: '河北', value: 49},
                {name: '云南', value: 49},
                {name: '安徽', value: 36},
                {name: '江苏', value: 43},
                {name: '浙江', value: 38},
                {name: '江西', value: 40},
                {name: '湖北', value: 41},
                {name: '广西', value: 38},
                {name: '山西', value: 35},
                {name: '内蒙古', value: 39},
                {name: '西藏', value: 39},
                {name: '海南', value: 40},
                {name: '台湾', value: 44},
                {name: '澳门', value: 42}
            ]
        }
    ],
    animation: false
};
var ecConfig = require('echarts/config');
myChart.on(ecConfig.EVENT.MAP_SELECTED, function(param){
    var selected = param.selected;
    var mapSeries = option.series[0];
    var data = [];
    var legendData = [];
    var name;
    for (var p = 0, len = mapSeries.data.length; p &lt; len; p++) {
        name = mapSeries.data[p].name;
        mapSeries.data[p].selected = selected[name];
        if (selected[name]) {
            data.push({
                name: name,
                value: mapSeries.data[p].value
            });
            legendData.push(name);
        }
    }
    option.legend.data = legendData;
    option.series[1].data = data;
    myChart.setOption(option, true);
})
                    </textarea>
                    <div class="CodeMirror cm-s-monokai">
                    <div style="overflow: hidden; position: relative; width: 3px; height: 0px; top: 0px; left: 40px;"><textarea autocorrect="off" autocapitalize="off" tabindex="0" style="position: absolute; padding: 0px; width: 1000px; height: 1em; outline: none;"></textarea></div><div class="CodeMirror-hscrollbar" style="left: 29px; display: block; right: 15px;"><div style="height: 1px; width: 546px;"></div></div><div class="CodeMirror-vscrollbar" style="display: block; bottom: 15px;"><div style="width: 1px; height: 1632px;"></div></div><div class="CodeMirror-scrollbar-filler" style="display: block; width: 15px; height: 15px;"></div><div class="CodeMirror-scroll" tabindex="-1"><div style="position: relative; min-height: 100%;"><div class="CodeMirror-sizer" style="min-width: 576px; margin-left: 29px; min-height: 1632px;"><div style="position: relative; top: 924px;"><div class="CodeMirror-lines"><div style="position: relative; outline: none;"><div class="CodeMirror-measure"><pre><span class="cm-variable">o</span><span class="cm-variable">p</span><span class="cm-variable">t</span><span class="cm-variable">i</span><span class="cm-variable">o</span><span class="cm-variable">n</span><span> </span><span>=</span><span> </span><span>{</span></pre></div><div style="position: relative; z-index: 1; display: none;"></div><div style=""><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">67</div></div><pre>                {<span class="cm-property">name</span>: <span class="cm-string">'西藏'</span>,<span class="cm-property">value</span>: <span class="cm-variable">Math</span>.<span class="cm-property">round</span>(<span class="cm-variable">Math</span>.<span class="cm-property">random</span>()*<span class="cm-number">1000</span>)},</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">68</div></div><pre>                {<span class="cm-property">name</span>: <span class="cm-string">'四川'</span>,<span class="cm-property">value</span>: <span class="cm-variable">Math</span>.<span class="cm-property">round</span>(<span class="cm-variable">Math</span>.<span class="cm-property">random</span>()*<span class="cm-number">1000</span>)},</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">69</div></div><pre>                {<span class="cm-property">name</span>: <span class="cm-string">'宁夏'</span>,<span class="cm-property">value</span>: <span class="cm-variable">Math</span>.<span class="cm-property">round</span>(<span class="cm-variable">Math</span>.<span class="cm-property">random</span>()*<span class="cm-number">1000</span>)},</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">70</div></div><pre>                {<span class="cm-property">name</span>: <span class="cm-string">'海南'</span>,<span class="cm-property">value</span>: <span class="cm-variable">Math</span>.<span class="cm-property">round</span>(<span class="cm-variable">Math</span>.<span class="cm-property">random</span>()*<span class="cm-number">1000</span>)},</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">71</div></div><pre>                {<span class="cm-property">name</span>: <span class="cm-string">'台湾'</span>,<span class="cm-property">value</span>: <span class="cm-variable">Math</span>.<span class="cm-property">round</span>(<span class="cm-variable">Math</span>.<span class="cm-property">random</span>()*<span class="cm-number">1000</span>)},</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">72</div></div><pre>                {<span class="cm-property">name</span>: <span class="cm-string">'香港'</span>,<span class="cm-property">value</span>: <span class="cm-variable">Math</span>.<span class="cm-property">round</span>(<span class="cm-variable">Math</span>.<span class="cm-property">random</span>()*<span class="cm-number">1000</span>)},</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">73</div></div><pre>                {<span class="cm-property">name</span>: <span class="cm-string">'澳门'</span>,<span class="cm-property">value</span>: <span class="cm-variable">Math</span>.<span class="cm-property">round</span>(<span class="cm-variable">Math</span>.<span class="cm-property">random</span>()*<span class="cm-number">1000</span>)}</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">74</div></div><pre>            ]</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">75</div></div><pre>        },</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">76</div></div><pre>        {</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">77</div></div><pre>            <span class="cm-property">name</span>:<span class="cm-string">'各省销量'</span>,</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">78</div></div><pre>            <span class="cm-property">type</span>:<span class="cm-string">'pie'</span>,</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">79</div></div><pre>            <span class="cm-property">tooltip</span>: {</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">80</div></div><pre>                <span class="cm-property">trigger</span>: <span class="cm-string">'item'</span>,</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">81</div></div><pre>                <span class="cm-property">formatter</span>: <span class="cm-string">"{a} &lt;br/&gt;{b} : {c} ({d}%)"</span></pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">82</div></div><pre>            },</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">83</div></div><pre>            <span class="cm-property">center</span>: [<span class="cm-variable">document</span>.<span class="cm-property">getElementById</span>(<span class="cm-string">'main'</span>).<span class="cm-property">offsetWidth</span> - <span class="cm-number">250</span>, <span class="cm-number">225</span>],</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">84</div></div><pre>            <span class="cm-property">radius</span>: [<span class="cm-number">50</span>, <span class="cm-number">120</span>],</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">85</div></div><pre>            <span class="cm-property">data</span>:[</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">86</div></div><pre>                {<span class="cm-property">name</span>: <span class="cm-string">'北京'</span>, <span class="cm-property">value</span>: <span class="cm-number">1234</span>},</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">87</div></div><pre>                {<span class="cm-property">name</span>: <span class="cm-string">'上海'</span>, <span class="cm-property">value</span>: <span class="cm-number">3456</span>},</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">88</div></div><pre>                {<span class="cm-property">name</span>: <span class="cm-string">'广东'</span>, <span class="cm-property">value</span>: <span class="cm-number">2345</span>}</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">89</div></div><pre>            ]</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">90</div></div><pre>        }</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">91</div></div><pre>    ],</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">92</div></div><pre>    <span class="cm-property">animation</span>: <span class="cm-atom">false</span></pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">93</div></div><pre>};</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">94</div></div><pre><span class="cm-keyword">var</span> <span class="cm-variable">ecConfig</span> = <span class="cm-variable">require</span>(<span class="cm-string">'echarts/config'</span>);</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">95</div></div><pre><span class="cm-variable">myChart</span>.<span class="cm-property">on</span>(<span class="cm-variable">ecConfig</span>.<span class="cm-property">EVENT</span>.<span class="cm-property">MAP_SELECTED</span>, <span class="cm-keyword">function</span>(<span class="cm-def">param</span>){</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">96</div></div><pre>    <span class="cm-keyword">var</span> <span class="cm-def">selected</span> = <span class="cm-variable-2">param</span>.<span class="cm-property">selected</span>;</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">97</div></div><pre>    <span class="cm-keyword">var</span> <span class="cm-def">mapSeries</span> = <span class="cm-variable">option</span>.<span class="cm-property">series</span>[<span class="cm-number">0</span>];</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">98</div></div><pre>    <span class="cm-keyword">var</span> <span class="cm-def">data</span> = [];</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">99</div></div><pre>    <span class="cm-keyword">var</span> <span class="cm-def">legendData</span> = [];</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">100</div></div><pre>    <span class="cm-keyword">var</span> <span class="cm-def">name</span>;</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">101</div></div><pre>    <span class="cm-keyword">for</span> (<span class="cm-keyword">var</span> <span class="cm-def">p</span> = <span class="cm-number">0</span>, <span class="cm-def">len</span> = <span class="cm-variable-2">mapSeries</span>.<span class="cm-property">data</span>.<span class="cm-property">length</span>; <span class="cm-variable-2">p</span> &lt; <span class="cm-variable-2">len</span>; <span class="cm-variable-2">p</span>++) {</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">102</div></div><pre>        <span class="cm-variable-2">name</span> = <span class="cm-variable-2">mapSeries</span>.<span class="cm-property">data</span>[<span class="cm-variable-2">p</span>].<span class="cm-property">name</span>;</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">103</div></div><pre>        <span class="cm-variable-2">mapSeries</span>.<span class="cm-property">data</span>[<span class="cm-variable-2">p</span>].<span class="cm-property">selected</span> = <span class="cm-variable-2">selected</span>[<span class="cm-variable-2">name</span>];</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">104</div></div><pre>        <span class="cm-keyword">if</span> (<span class="cm-variable-2">selected</span>[<span class="cm-variable-2">name</span>]) {</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">105</div></div><pre>            <span class="cm-variable-2">data</span>.<span class="cm-property">push</span>({</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">106</div></div><pre>                <span class="cm-property">name</span>: <span class="cm-variable-2">name</span>,</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">107</div></div><pre>                <span class="cm-property">value</span>: <span class="cm-variable-2">mapSeries</span>.<span class="cm-property">data</span>[<span class="cm-variable-2">p</span>].<span class="cm-property">value</span></pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">108</div></div><pre>            });</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">109</div></div><pre>            <span class="cm-variable-2">legendData</span>.<span class="cm-property">push</span>(<span class="cm-variable-2">name</span>);</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">110</div></div><pre>        }</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">111</div></div><pre>    }</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">112</div></div><pre>    <span class="cm-variable">option</span>.<span class="cm-property">legend</span>.<span class="cm-property">data</span> = <span class="cm-variable-2">legendData</span>;</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">113</div></div><pre>    <span class="cm-variable">option</span>.<span class="cm-property">series</span>[<span class="cm-number">1</span>].<span class="cm-property">data</span> = <span class="cm-variable-2">data</span>;</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">114</div></div><pre>    <span class="cm-variable">myChart</span>.<span class="cm-property">setOption</span>(<span class="cm-variable">option</span>, <span class="cm-atom">true</span>);</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">115</div></div><pre>})</pre></div><div style="position: relative;"><div style="position: absolute; left: -29px;"><div class="CodeMirror-linenumber CodeMirror-gutter-elt" style="left: 0px; width: 21px;">116</div></div><pre>                    </pre></div></div><div class="CodeMirror-cursor" style="left: 11px; top: -924px; height: 14px;">&nbsp;</div><div class="CodeMirror-cursor CodeMirror-secondarycursor" style="display: none;">&nbsp;</div></div></div></div></div><div style="position: absolute; height: 30px; top: 1632px;">&nbsp;</div><div class="CodeMirror-gutters"><div class="CodeMirror-gutter CodeMirror-linenumbers" style="width: 29px;"></div></div></div></div></div>
              </div><!--/.well -->
            </div><!--/span-->
            <div id="graphic" class="span8">
                <div id="main" class="main" _echarts_instance_="1399376391645" style="cursor: default;"><div style="position: relative; overflow: hidden; width: 889px; height: 400px;"><div width="889" height="400" data-id="bg" style="position: absolute; left: 0px; top: 0px; width: 889px; height: 400px;"></div><canvas width="889" height="400" data-id="0" style="position: absolute; left: 0px; top: 0px; width: 889px; height: 400px;"></canvas><canvas width="889" height="400" data-id="1" style="position: absolute; left: 0px; top: 0px; width: 889px; height: 400px;"></canvas><canvas width="889" height="400" data-id="2" style="position: absolute; left: 0px; top: 0px; width: 889px; height: 400px;"></canvas><canvas width="889" height="400" data-id="3" style="position: absolute; left: 0px; top: 0px; width: 889px; height: 400px;"></canvas><canvas width="889" height="400" data-id="4" style="position: absolute; left: 0px; top: 0px; width: 889px; height: 400px;"></canvas><canvas width="889" height="400" data-id="5" style="position: absolute; left: 0px; top: 0px; width: 889px; height: 400px;"></canvas><canvas width="889" height="400" data-id="6" style="position: absolute; left: 0px; top: 0px; width: 889px; height: 400px;"></canvas><canvas width="889" height="400" data-id="7" style="position: absolute; left: 0px; top: 0px; width: 889px; height: 400px;"></canvas><canvas width="889" height="400" data-id="8" style="position: absolute; left: 0px; top: 0px; width: 889px; height: 400px;"></canvas><canvas width="889" height="400" data-id="hover" id="_zrender_hover_" style="position: absolute; left: 0px; top: 0px; width: 889px; height: 400px;"></canvas><div class="echarts-dataview" style="position: absolute; display: block; overflow: hidden; transition: height 0.8s, background-color 1s; -webkit-transition: height 0.8s, background-color 1s; z-index: 1; left: 0px; top: 0px; width: 899px; height: 0px; background-color: rgb(240, 255, 255);"></div><div style="position: absolute; display: none; border: 0px solid rgb(51, 51, 51); white-space: nowrap; transition: left 0.4s, top 0.4s; -webkit-transition: left 0.4s, top 0.4s; background-color: rgba(0, 0, 0, 0.701961); border-top-left-radius: 4px; border-top-right-radius: 4px; border-bottom-right-radius: 4px; border-bottom-left-radius: 4px; color: rgb(255, 255, 255); text-decoration: none; font-family: Arial, Verdana, sans-serif; font-size: 12px; line-height: 18px; font-style: normal; font-weight: normal; padding: 5px; left: 140px; top: 192px;">iphone销量 <br>西藏 : 314</div></div></div>
                
            </div><!--/span-->
        </div><!--/row-->
        <hr>
        
    </div><!--/.fluid-container-->

    <script src="<%=basePath %>common/echart/jquery.js"></script>
    <script src="<%=basePath %>common/echart/bootstrap-transition.js"></script><script src="<%=basePath %>common/echart/h.js" type="text/javascript"></script>
    <script src="<%=basePath %>common/echart/bootstrap-alert.js"></script>
    <script src="<%=basePath %>common/echart/bootstrap-modal.js"></script>
    <script src="<%=basePath %>common/echart/bootstrap-dropdown.js"></script>
    <script src="<%=basePath %>common/echart/bootstrap-scrollspy.js"></script>
    <script src="<%=basePath %>common/echart/bootstrap-tab.js"></script>
    <script src="<%=basePath %>common/echart/bootstrap-tooltip.js"></script>
    <script src="<%=basePath %>common/echart/bootstrap-popover.js"></script>
    <script src="<%=basePath %>common/echart/bootstrap-button.js"></script>
    <script src="<%=basePath %>common/echart/bootstrap-collapse.js"></script>
    <script src="<%=basePath %>common/echart/bootstrap-carousel.js"></script>
    <script src="<%=basePath %>common/echart/bootstrap-typeahead.js"></script>
    <script src="<%=basePath %>common/echart/echartsExample.js"></script>

</center>
</body>
  
</html>
