<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Language Network</title>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js" type="text/javascript"></script>
		<script src="http://code.jquery.com/ui/1.8.23/jquery-ui.min.js" type="text/javascript"></script>
		<script src="http://jquery-ui.googlecode.com/svn/tags/latest/external/jquery.bgiframe-2.1.2.js" type="text/javascript"></script>
		<script src="http://jquery-ui.googlecode.com/svn/tags/latest/ui/minified/i18n/jquery-ui-i18n.min.js" type="text/javascript"></script>
		<script src="<%=basePath %>common/d3/js/d3.min.js"></script>
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.23/themes/base/jquery-ui.css" type="text/css" media="all" />
		<link href="langnet.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
	<center>
	<div id="graphHolder"></div>
	<div id="toolbox">
		<p id="titlep">
			<div id="title">LanguageNetwork, 2012</div><br/>
			<a class="boton" href="http://www.cotrino.com/" target="_blank">&copy; Cotrino.com</a>
			<a class="boton" href="#" onClick="about();return false;">How it works</a>
		</p>
		<div id="chartSelector">
			<input type="radio" value="network" id="networkOption" name="chartOption" checked="checked" /><label for="networkOption">network</label>
			<input type="radio" value="chord" id="chordOption" name="chartOption" /><label for="chordOption">chord</label>
		</div>
		<p><input id="hide_checkbox" type="checkbox" onClick="hide()" />Hide unrelated languages</p>
		<div id="sliderContainer">
			Filter by similarity level: <span id="similarity"></span>
			<div id="slider"></div>
		</div>
		<p id="hint"></p>
		<div id="language_information"></div>
	</div>
	<div id="about" title="How it works">
		<p>The "Language Network" is an approach to show language similarity based on the
		<a href="http://en.wikipedia.org/wiki/Levenshtein_distance" target="_blank"/>
		Levenshtein distance</a>, a string metric for measuring the difference between two words.</p>
		<p>In this case, we compare the full dictionary set of a language <i>A</i>
		against a language <i>B</i> for those words sharing the same meaning. For example:</p>
		<table id="leveninfo">
			<tr><th>Word in language A</th><th>Word in language B</th><th>Distance</th><th>Similarity</th></tr>
			<tr><td>house (en)</td><td>Haus (de)</td><td>2</td><td>0.33</td></tr>
			<tr><td>kocsi (hu)</td><td>coche (es)</td><td>3</td><td>0.25</td></tr>
			<tr><td>ecouter (fr)</td><td>listen (en)</td><td>5</td><td>0.17</td></tr>
			<tr><td>zahllos (de)</td><td>innumerabilis (la)</td><td>10</td><td>0.09</td></tr>
			<tr><td>sparga (hu)</td><td>Spargel (de)</td><td>2</td><td>0.33</td></tr>
			<tr><td>ermozura (lad)</td><td>hermosura (es)</td><td>2</td><td>0.33</td></tr>
			<tr><td>observar (es)</td><td>observar (ca)</td><td>0</td><td>1.00</td></tr>
			<tr><td>brusc (dlm)</td><td>brusco (it)</td><td>1</td><td>0.50</td></tr>
		</table>
		<p>The accumulated similarity for all compared words is what we then 
		call "language similarity". Languages which do not use Latin script have been
		romanized through transliteration.</p>
		<p>This has been possible thanks to:</p>
		<ul>
			<li><a href="http://www.wiktionary.org/" target="_blank">Wiktionary</a></li>
			<li><a href="http://www.java.com/" target="_blank">Java</a></li>
			<li><a href="http://sourceforge.net/projects/simmetrics/" target="_blank">SimMetrics</a></li>
			<li><a href="http://www.sqlite.org/" target="_blank">SQLite</a></li>
			<li><a href="http://www.perl.org/" target="_blank">Perl</a></li>
			<li><a href="https://developer.mozilla.org/en-US/docs/JavaScript" target="_blank">JavaScript</a></li>
			<li><a href="http://www.w3.org/Style/CSS/" target="_blank">CSS</a></li>
			<li><a href="http://d3js.org/" target="_blank">D3.js</a></li>
			<li><a href="http://jquery.com/" target="_blank">jQuery</a></li>
			<li><a href="http://www.ubuntu.com/" target="_blank">Ubuntu Linux</a></li>
			<li><a href="http://www.eclipse.org/" target="_blank">Eclipse</a></li>
			<li><a href="http://www.mozilla.org/en-US/firefox/fx/" target="_blank">Mozilla Firefox</a></li>
			<li><a href="http://www.google.com/chrome/" target="_blank">Google Chrome</a></li>
		</ul>
		<a class="boton" href="http://www.cotrino.com/" target="_blank">&copy; Cotrino.com</a>
	</div>

	<script type="text/javascript" src="langnet.js"></script>
	<script type="text/javascript" src="Levenshtein.js">
	var nodesArray = [
						{ label : "Adyghe", id : 0, color : "#faddd2", textcolor : "#ba9d92", size : 5, desc : "Language: <a href='http://en.wikipedia.org/wiki/Adyghe_language' target='_blank'>Adyghe</a><br/><br/>No similar languages found." },
						{ label : "Adyghe", id : 0, color : "#faddd2", textcolor : "#ba9d92", size : 5, desc : "Language: <a href='http://en.wikipedia.org/wiki/Adyghe_language' target='_blank'>Adyghe</a><br/><br/>No similar languages found." },
						{ label : "Afrikaans", id : 1, color : "#e1dbae", textcolor : "#a19b6e", size : 5, desc : "Language: <a href='http://en.wikipedia.org/wiki/Afrikaans_language' target='_blank'>Afrikaans</a><br/><br/>Similar to:<ul><li><a href='http://en.wikipedia.org/wiki/Dutch_language' target='_blank'>Dutch</a> at 69%</li><li><a href='http://en.wikipedia.org/wiki/German_language' target='_blank'>German</a> at 45%</li><li><a href='http://en.wikipedia.org/wiki/West_Frisian_language' target='_blank'>West Frisian</a> at 45%</li><li><a href='http://en.wikipedia.org/wiki/Swedish_language' target='_blank'>Swedish</a> at 41%</li><li><a href='http://en.wikipedia.org/wiki/Limburgish_language' target='_blank'>Limburgish</a> at 39%</li><li><a href='http://en.wikipedia.org/wiki/Danish_language' target='_blank'>Danish</a> at 38%</li><li><a href='http://en.wikipedia.org/wiki/Norwegian_language' target='_blank'>Norwegian</a> at 37%</li><li><a href='http://en.wikipedia.org/wiki/Luxembourgish_language' target='_blank'>Luxembourgish</a> at 37%</li><li><a href='http://en.wikipedia.org/wiki/Old_High_German_language' target='_blank'>Old High German</a> at 34%</li><li><a href='http://en.wikipedia.org/wiki/English_language' target='_blank'>English</a> at 33%</li><li><a href='http://en.wikipedia.org/wiki/Old_Saxon_language' target='_blank'>Old Saxon</a> at 33%</li></ul>" }
					  ]
	</script>
	<script type="text/javascript">
		$(function() {
			 $("#about" ).dialog({
				autoOpen: false,
				show: "blind",
				hide: "explode",
				width: 800,
				height: 600
			});
			$("#chartSelector").buttonset();
			$("#chartSelector").change(function(event){
				chartChange($("input[type=radio]:checked").val());
			});
			restart();
			$("#slider").slider({ change: filterChange, min: similarityThresholdMin, max: similarityThresholdMax, value: similarityThreshold });
		});
	</script>
	</center>
	</body>
</html>


