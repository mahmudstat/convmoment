<!DOCTYPE html>

<html>

<head>

<meta charset="utf-8" />
<meta name="generator" content="pandoc" />
<meta http-equiv="X-UA-Compatible" content="IE=EDGE" />

<meta name="viewport" content="width=device-width, initial-scale=1" />



<title>README.knit</title>

<script>// Pandoc 2.9 adds attributes on both header and div. We remove the former (to
// be compatible with the behavior of Pandoc < 2.8).
document.addEventListener('DOMContentLoaded', function(e) {
  var hs = document.querySelectorAll("div.section[class*='level'] > :first-child");
  var i, h, a;
  for (i = 0; i < hs.length; i++) {
    h = hs[i];
    if (!/^h[1-6]$/i.test(h.tagName)) continue;  // it should be a header h1-h6
    a = h.attributes;
    while (a.length > 0) h.removeAttribute(a[0].name);
  }
});
</script>
<script>// Hide empty <a> tag within highlighted CodeBlock for screen reader accessibility (see https://github.com/jgm/pandoc/issues/6352#issuecomment-626106786) -->
// v0.0.1
// Written by JooYoung Seo (jooyoung@psu.edu) and Atsushi Yasumoto on June 1st, 2020.

document.addEventListener('DOMContentLoaded', function() {
  const codeList = document.getElementsByClassName("sourceCode");
  for (var i = 0; i < codeList.length; i++) {
    var linkList = codeList[i].getElementsByTagName('a');
    for (var j = 0; j < linkList.length; j++) {
      if (linkList[j].innerHTML === "") {
        linkList[j].setAttribute('aria-hidden', 'true');
      }
    }
  }
});
</script>

<style type="text/css">
  code{white-space: pre-wrap;}
  span.smallcaps{font-variant: small-caps;}
  span.underline{text-decoration: underline;}
  div.column{display: inline-block; vertical-align: top; width: 50%;}
  div.hanging-indent{margin-left: 1.5em; text-indent: -1.5em;}
  ul.task-list{list-style: none;}
    </style>



<style type="text/css">
  code {
    white-space: pre;
  }
  .sourceCode {
    overflow: visible;
  }
</style>
<style type="text/css" data-origin="pandoc">
pre > code.sourceCode { white-space: pre; position: relative; }
pre > code.sourceCode > span { display: inline-block; line-height: 1.25; }
pre > code.sourceCode > span:empty { height: 1.2em; }
code.sourceCode > span { color: inherit; text-decoration: inherit; }
div.sourceCode { margin: 1em 0; }
pre.sourceCode { margin: 0; }
@media screen {
div.sourceCode { overflow: auto; }
}
@media print {
pre > code.sourceCode { white-space: pre-wrap; }
pre > code.sourceCode > span { text-indent: -5em; padding-left: 5em; }
}
pre.numberSource code
  { counter-reset: source-line 0; }
pre.numberSource code > span
  { position: relative; left: -4em; counter-increment: source-line; }
pre.numberSource code > span > a:first-child::before
  { content: counter(source-line);
    position: relative; left: -1em; text-align: right; vertical-align: baseline;
    border: none; display: inline-block;
    -webkit-touch-callout: none; -webkit-user-select: none;
    -khtml-user-select: none; -moz-user-select: none;
    -ms-user-select: none; user-select: none;
    padding: 0 4px; width: 4em;
    color: #aaaaaa;
  }
pre.numberSource { margin-left: 3em; border-left: 1px solid #aaaaaa;  padding-left: 4px; }
div.sourceCode
  {   }
@media screen {
pre > code.sourceCode > span > a:first-child::before { text-decoration: underline; }
}
code span.al { color: #ff0000; font-weight: bold; } /* Alert */
code span.an { color: #60a0b0; font-weight: bold; font-style: italic; } /* Annotation */
code span.at { color: #7d9029; } /* Attribute */
code span.bn { color: #40a070; } /* BaseN */
code span.bu { } /* BuiltIn */
code span.cf { color: #007020; font-weight: bold; } /* ControlFlow */
code span.ch { color: #4070a0; } /* Char */
code span.cn { color: #880000; } /* Constant */
code span.co { color: #60a0b0; font-style: italic; } /* Comment */
code span.cv { color: #60a0b0; font-weight: bold; font-style: italic; } /* CommentVar */
code span.do { color: #ba2121; font-style: italic; } /* Documentation */
code span.dt { color: #902000; } /* DataType */
code span.dv { color: #40a070; } /* DecVal */
code span.er { color: #ff0000; font-weight: bold; } /* Error */
code span.ex { } /* Extension */
code span.fl { color: #40a070; } /* Float */
code span.fu { color: #06287e; } /* Function */
code span.im { } /* Import */
code span.in { color: #60a0b0; font-weight: bold; font-style: italic; } /* Information */
code span.kw { color: #007020; font-weight: bold; } /* Keyword */
code span.op { color: #666666; } /* Operator */
code span.ot { color: #007020; } /* Other */
code span.pp { color: #bc7a00; } /* Preprocessor */
code span.sc { color: #4070a0; } /* SpecialChar */
code span.ss { color: #bb6688; } /* SpecialString */
code span.st { color: #4070a0; } /* String */
code span.va { color: #19177c; } /* Variable */
code span.vs { color: #4070a0; } /* VerbatimString */
code span.wa { color: #60a0b0; font-weight: bold; font-style: italic; } /* Warning */

</style>
<script>
// apply pandoc div.sourceCode style to pre.sourceCode instead
(function() {
  var sheets = document.styleSheets;
  for (var i = 0; i < sheets.length; i++) {
    if (sheets[i].ownerNode.dataset["origin"] !== "pandoc") continue;
    try { var rules = sheets[i].cssRules; } catch (e) { continue; }
    var j = 0;
    while (j < rules.length) {
      var rule = rules[j];
      // check if there is a div.sourceCode rule
      if (rule.type !== rule.STYLE_RULE || rule.selectorText !== "div.sourceCode") {
        j++;
        continue;
      }
      var style = rule.style.cssText;
      // check if color or background-color is set
      if (rule.style.color === '' && rule.style.backgroundColor === '') {
        j++;
        continue;
      }
      // replace div.sourceCode by a pre.sourceCode rule
      sheets[i].deleteRule(j);
      sheets[i].insertRule('pre.sourceCode{' + style + '}', j);
    }
  }
})();
</script>




<style type="text/css">body {
background-color: #fff;
margin: 1em auto;
max-width: 700px;
overflow: visible;
padding-left: 2em;
padding-right: 2em;
font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
font-size: 14px;
line-height: 1.35;
}
#TOC {
clear: both;
margin: 0 0 10px 10px;
padding: 4px;
width: 400px;
border: 1px solid #CCCCCC;
border-radius: 5px;
background-color: #f6f6f6;
font-size: 13px;
line-height: 1.3;
}
#TOC .toctitle {
font-weight: bold;
font-size: 15px;
margin-left: 5px;
}
#TOC ul {
padding-left: 40px;
margin-left: -1.5em;
margin-top: 5px;
margin-bottom: 5px;
}
#TOC ul ul {
margin-left: -2em;
}
#TOC li {
line-height: 16px;
}
table {
margin: 1em auto;
border-width: 1px;
border-color: #DDDDDD;
border-style: outset;
border-collapse: collapse;
}
table th {
border-width: 2px;
padding: 5px;
border-style: inset;
}
table td {
border-width: 1px;
border-style: inset;
line-height: 18px;
padding: 5px 5px;
}
table, table th, table td {
border-left-style: none;
border-right-style: none;
}
table thead, table tr.even {
background-color: #f7f7f7;
}
p {
margin: 0.5em 0;
}
blockquote {
background-color: #f6f6f6;
padding: 0.25em 0.75em;
}
hr {
border-style: solid;
border: none;
border-top: 1px solid #777;
margin: 28px 0;
}
dl {
margin-left: 0;
}
dl dd {
margin-bottom: 13px;
margin-left: 13px;
}
dl dt {
font-weight: bold;
}
ul {
margin-top: 0;
}
ul li {
list-style: circle outside;
}
ul ul {
margin-bottom: 0;
}
pre, code {
background-color: #f7f7f7;
border-radius: 3px;
color: #333;
white-space: pre-wrap; 
}
pre {
border-radius: 3px;
margin: 5px 0px 10px 0px;
padding: 10px;
}
pre:not([class]) {
background-color: #f7f7f7;
}
code {
font-family: Consolas, Monaco, 'Courier New', monospace;
font-size: 85%;
}
p > code, li > code {
padding: 2px 0px;
}
div.figure {
text-align: center;
}
img {
background-color: #FFFFFF;
padding: 2px;
border: 1px solid #DDDDDD;
border-radius: 3px;
border: 1px solid #CCCCCC;
margin: 0 5px;
}
h1 {
margin-top: 0;
font-size: 35px;
line-height: 40px;
}
h2 {
border-bottom: 4px solid #f7f7f7;
padding-top: 10px;
padding-bottom: 2px;
font-size: 145%;
}
h3 {
border-bottom: 2px solid #f7f7f7;
padding-top: 10px;
font-size: 120%;
}
h4 {
border-bottom: 1px solid #f7f7f7;
margin-left: 8px;
font-size: 105%;
}
h5, h6 {
border-bottom: 1px solid #ccc;
font-size: 105%;
}
a {
color: #0033dd;
text-decoration: none;
}
a:hover {
color: #6666ff; }
a:visited {
color: #800080; }
a:visited:hover {
color: #BB00BB; }
a[href^="http:"] {
text-decoration: underline; }
a[href^="https:"] {
text-decoration: underline; }

code > span.kw { color: #555; font-weight: bold; } 
code > span.dt { color: #902000; } 
code > span.dv { color: #40a070; } 
code > span.bn { color: #d14; } 
code > span.fl { color: #d14; } 
code > span.ch { color: #d14; } 
code > span.st { color: #d14; } 
code > span.co { color: #888888; font-style: italic; } 
code > span.ot { color: #007020; } 
code > span.al { color: #ff0000; font-weight: bold; } 
code > span.fu { color: #900; font-weight: bold; } 
code > span.er { color: #a61717; background-color: #e3d2d2; } 
</style>




</head>

<body>







<!-- README.md is generated from README.Rmd. Please edit that file -->
<div id="convmoment" class="section level1">
<h1>convmoment</h1>
<!-- badges: start -->
<p><a href="https://github.com/mahmudstat/convmoment/actions/workflows/pkgdown.yml"><img src="data:image/svg+xml; charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMjciIGhlaWdodD0iMjAiPgogIDx0aXRsZT5wa2dkb3duIC0gcGFzc2luZzwvdGl0bGU+CiAgPGRlZnM+CiAgICA8bGluZWFyR3JhZGllbnQgaWQ9IndvcmtmbG93LWZpbGwiIHgxPSI1MCUiIHkxPSIwJSIgeDI9IjUwJSIgeTI9IjEwMCUiPgogICAgICA8c3RvcCBzdG9wLWNvbG9yPSIjNDQ0RDU2IiBvZmZzZXQ9IjAlIj48L3N0b3A+CiAgICAgIDxzdG9wIHN0b3AtY29sb3I9IiMyNDI5MkUiIG9mZnNldD0iMTAwJSI+PC9zdG9wPgogICAgPC9saW5lYXJHcmFkaWVudD4KICAgIDxsaW5lYXJHcmFkaWVudCBpZD0ic3RhdGUtZmlsbCIgeDE9IjUwJSIgeTE9IjAlIiB4Mj0iNTAlIiB5Mj0iMTAwJSI+CiAgICAgIDxzdG9wIHN0b3AtY29sb3I9IiMzNEQwNTgiIG9mZnNldD0iMCUiPjwvc3RvcD4KICAgICAgPHN0b3Agc3RvcC1jb2xvcj0iIzI4QTc0NSIgb2Zmc2V0PSIxMDAlIj48L3N0b3A+CiAgICA8L2xpbmVhckdyYWRpZW50PgogIDwvZGVmcz4KICA8ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgPGcgZm9udC1mYW1pbHk9IiYjMzk7RGVqYVZ1IFNhbnMmIzM5OyxWZXJkYW5hLEdlbmV2YSxzYW5zLXNlcmlmIiBmb250LXNpemU9IjExIj4KICAgICAgPHBhdGggaWQ9IndvcmtmbG93LWJnIiBkPSJNMCwzIEMwLDEuMzQzMSAxLjM1NTIsMCAzLjAyNzAyNzAzLDAgTDc3LDAgTDc3LDIwIEwzLjAyNzAyNzAzLDIwIEMxLjM1NTIsMjAgMCwxOC42NTY5IDAsMTcgTDAsMyBaIiBmaWxsPSJ1cmwoI3dvcmtmbG93LWZpbGwpIiBmaWxsLXJ1bGU9Im5vbnplcm8iPjwvcGF0aD4KICAgICAgPHRleHQgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyI+CiAgICAgICAgPHRzcGFuIHg9IjIyLjE5ODE5ODIiIHk9IjE1IiBhcmlhLWhpZGRlbj0idHJ1ZSI+cGtnZG93bjwvdHNwYW4+CiAgICAgIDwvdGV4dD4KICAgICAgPHRleHQgZmlsbD0iI0ZGRkZGRiI+CiAgICAgICAgPHRzcGFuIHg9IjIyLjE5ODE5ODIiIHk9IjE0Ij5wa2dkb3duPC90c3Bhbj4KICAgICAgPC90ZXh0PgogICAgPC9nPgogICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNzcpIiBmb250LWZhbWlseT0iJiMzOTtEZWphVnUgU2FucyYjMzk7LFZlcmRhbmEsR2VuZXZhLHNhbnMtc2VyaWYiIGZvbnQtc2l6ZT0iMTEiPgogICAgICA8cGF0aCBkPSJNMCAwaDQ2LjkzOUM0OC42MjkgMCA1MCAxLjM0MyA1MCAzdjE0YzAgMS42NTctMS4zNyAzLTMuMDYxIDNIMFYweiIgaWQ9InN0YXRlLWJnIiBmaWxsPSJ1cmwoI3N0YXRlLWZpbGwpIiBmaWxsLXJ1bGU9Im5vbnplcm8iPjwvcGF0aD4KICAgICAgPHRleHQgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyIgYXJpYS1oaWRkZW49InRydWUiPgogICAgICAgIDx0c3BhbiB4PSI0IiB5PSIxNSI+cGFzc2luZzwvdHNwYW4+CiAgICAgIDwvdGV4dD4KICAgICAgPHRleHQgZmlsbD0iI0ZGRkZGRiI+CiAgICAgICAgPHRzcGFuIHg9IjQiIHk9IjE0Ij5wYXNzaW5nPC90c3Bhbj4KICAgICAgPC90ZXh0PgogICAgPC9nPgogICAgPHBhdGggZmlsbD0iIzk1OURBNSIgZD0iTTExIDNjLTMuODY4IDAtNyAzLjEzMi03IDdhNi45OTYgNi45OTYgMCAwIDAgNC43ODYgNi42NDFjLjM1LjA2Mi40ODItLjE0OC40ODItLjMzMiAwLS4xNjYtLjAxLS43MTgtLjAxLTEuMzA0LTEuNzU4LjMyNC0yLjIxMy0uNDI5LTIuMzUzLS44MjItLjA3OS0uMjAyLS40Mi0uODIzLS43MTctLjk5LS4yNDUtLjEzLS41OTUtLjQ1NC0uMDEtLjQ2My41NTItLjAwOS45NDYuNTA4IDEuMDc3LjcxOC42MyAxLjA1OCAxLjYzNi43NiAyLjAzOS41NzcuMDYxLS40NTUuMjQ1LS43NjEuNDQ2LS45MzYtMS41NTctLjE3NS0zLjE4NS0uNzc5LTMuMTg1LTMuNDU2IDAtLjc2Mi4yNzEtMS4zOTIuNzE4LTEuODgyLS4wNy0uMTc1LS4zMTUtLjg5Mi4wNy0xLjg1NSAwIDAgLjU4Ni0uMTgzIDEuOTI1LjcxOGE2LjUgNi41IDAgMCAxIDEuNzUtLjIzNiA2LjUgNi41IDAgMCAxIDEuNzUuMjM2YzEuMzM4LS45MSAxLjkyNS0uNzE4IDEuOTI1LS43MTguMzg1Ljk2My4xNCAxLjY4LjA3IDEuODU1LjQ0Ni40OS43MTcgMS4xMTIuNzE3IDEuODgyIDAgMi42ODYtMS42MzYgMy4yOC0zLjE5NCAzLjQ1Ni4yNTQuMjE5LjQ3My42MzkuNDczIDEuMjk1IDAgLjkzNi0uMDA5IDEuNjg5LS4wMDkgMS45MjUgMCAuMTg0LjEzMS40MDIuNDgxLjMzMkE3LjAxMSA3LjAxMSAwIDAgMCAxOCAxMGMwLTMuODY3LTMuMTMzLTctNy03eiI+PC9wYXRoPgogIDwvZz4KPC9zdmc+Cgo=" alt="R-CMD-check" /></a> <a href="https://www.thinkermahmud.com/convmoment/"><img src="data:image/svg+xml;charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5NCIgaGVpZ2h0PSIyMCIgcm9sZT0iaW1nIiBhcmlhLWxhYmVsPSJkb2NzOiBwa2dkb3duIj48dGl0bGU+ZG9jczogcGtnZG93bjwvdGl0bGU+PGZpbHRlciBpZD0iYmx1ciI+PGZlR2F1c3NpYW5CbHVyIHN0ZERldmlhdGlvbj0iMTYiLz48L2ZpbHRlcj48bGluZWFyR3JhZGllbnQgaWQ9InMiIHgyPSIwIiB5Mj0iMTAwJSI+PHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjYmJiIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PHN0b3Agb2Zmc2V0PSIxIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PC9saW5lYXJHcmFkaWVudD48Y2xpcFBhdGggaWQ9InIiPjxyZWN0IHdpZHRoPSI5NCIgaGVpZ2h0PSIyMCIgcng9IjMiLz48L2NsaXBQYXRoPjxnIGNsaXAtcGF0aD0idXJsKCNyKSI+PHJlY3Qgd2lkdGg9IjM1IiBoZWlnaHQ9IjIwIiBmaWxsPSIjNTU1Ii8+PHJlY3QgeD0iMzUiIHdpZHRoPSI1OSIgaGVpZ2h0PSIyMCIgZmlsbD0iIzAwN2VjNiIvPjxyZWN0IHdpZHRoPSI5NCIgaGVpZ2h0PSIyMCIgZmlsbD0idXJsKCNzKSIvPjwvZz48ZyBmaWxsPSIjZmZmIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmb250LWZhbWlseT0iVmVyZGFuYSxHZW5ldmEsRGVqYVZ1IFNhbnMsc2Fucy1zZXJpZiIgdGV4dC1yZW5kZXJpbmc9Imdlb21ldHJpY1ByZWNpc2lvbiIgZm9udC1zaXplPSIxMTAiPjxnIHRyYW5zZm9ybT0ic2NhbGUoLjEpIj48ZyBhcmlhLWhpZGRlbj0idHJ1ZSIgZmlsbD0iIzAxMDEwMSI+PHRleHQgeD0iMTg1IiB5PSIxNTAiIGZpbGwtb3BhY2l0eT0iLjgiIGZpbHRlcj0idXJsKCNibHVyKSIgdGV4dExlbmd0aD0iMjUwIj5kb2NzPC90ZXh0Pjx0ZXh0IHg9IjE4NSIgeT0iMTUwIiBmaWxsLW9wYWNpdHk9Ii4zIiB0ZXh0TGVuZ3RoPSIyNTAiPmRvY3M8L3RleHQ+PC9nPjx0ZXh0IHg9IjE4NSIgeT0iMTQwIiB0ZXh0TGVuZ3RoPSIyNTAiPmRvY3M8L3RleHQ+PC9nPjxnIHRyYW5zZm9ybT0ic2NhbGUoLjEpIj48ZyBhcmlhLWhpZGRlbj0idHJ1ZSIgZmlsbD0iIzAxMDEwMSI+PHRleHQgeD0iNjM1IiB5PSIxNTAiIGZpbGwtb3BhY2l0eT0iLjgiIGZpbHRlcj0idXJsKCNibHVyKSIgdGV4dExlbmd0aD0iNDkwIj5wa2dkb3duPC90ZXh0Pjx0ZXh0IHg9IjYzNSIgeT0iMTUwIiBmaWxsLW9wYWNpdHk9Ii4zIiB0ZXh0TGVuZ3RoPSI0OTAiPnBrZ2Rvd248L3RleHQ+PC9nPjx0ZXh0IHg9IjYzNSIgeT0iMTQwIiB0ZXh0TGVuZ3RoPSI0OTAiPnBrZ2Rvd248L3RleHQ+PC9nPjwvZz48L3N2Zz4=" alt="Documentation" /></a> <!-- badges: end --></p>
<p><strong>convmoment</strong> implements the <em>generalized binomial framework</em> for transforming statistical moments of any order across arbitrary origins. One unified rule replaces separate formulas for raw-to-raw, raw-to-central, and central-to-raw conversions.</p>
<p>The method uses a symbolic binomial operator:</p>
<p><span class="math display">\[ \mu&#39;_r(k) \equiv (a + b)^r \quad \text{with} \quad a^j \mapsto \mu&#39;_j(a), \quad b = a - k \]</span></p>
<p>This makes transformations <strong>exact</strong> (machine precision), <strong>extensible</strong> to any order, and <strong>data-free</strong> — convert pre-computed moments in <code>O(r²)</code> instead of <code>O(n·r)</code>.</p>
<hr />
<div id="installation" class="section level2">
<h2>Installation</h2>
<p>You can install the development version of <strong>convmoment</strong> from <a href="https://github.com/">GitHub</a> with:</p>
<div class="sourceCode" id="cb1"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb1-1"><a href="#cb1-1" aria-hidden="true"></a><span class="co"># install.packages(&quot;pak&quot;)</span></span>
<span id="cb1-2"><a href="#cb1-2" aria-hidden="true"></a>pak<span class="op">::</span><span class="kw">pak</span>(<span class="st">&quot;mahmudstat/convmoment&quot;</span>)</span></code></pre></div>
<hr />
</div>
<div id="key-functions" class="section level2">
<h2>Key Functions</h2>
<table>
<colgroup>
<col width="43%"></col>
<col width="56%"></col>
</colgroup>
<thead>
<tr class="header">
<th>Function</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><code>conv_moment(x, a, k, r)</code></td>
<td>Convert single moment of order <code>r</code> from origin <code>a</code> to <code>k</code></td>
</tr>
<tr class="even">
<td><code>conv_moment_all(x, a, k)</code></td>
<td>Convert vector of raw moments (orders 1..K) from origin <code>a</code> to <code>k</code></td>
</tr>
<tr class="odd">
<td><code>raw2central(raw_moments, origin)</code></td>
<td>Raw moments → central moments (about mean)</td>
</tr>
<tr class="even">
<td><code>central2raw(central_moments, mean_val)</code></td>
<td>Central moments → raw moments about 0</td>
</tr>
<tr class="odd">
<td><code>get_moments(x, a, r, na_rm, decimal)</code></td>
<td>Compute moments directly from sample data</td>
</tr>
</tbody>
</table>
<hr />
</div>
<div id="quick-examples" class="section level2">
<h2>Quick Examples</h2>
<div id="raw-to-raw" class="section level3">
<h3>Raw-to-Raw</h3>
<div class="sourceCode" id="cb2"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb2-1"><a href="#cb2-1" aria-hidden="true"></a><span class="kw">library</span>(convmoment)</span>
<span id="cb2-2"><a href="#cb2-2" aria-hidden="true"></a>x &lt;-<span class="st"> </span><span class="kw">c</span>(<span class="op">-</span><span class="dv">1</span>, <span class="dv">7</span>, <span class="dv">39</span>)  <span class="co"># moments about a = 2</span></span>
<span id="cb2-3"><a href="#cb2-3" aria-hidden="true"></a><span class="kw">conv_moment_all</span>(x, <span class="dt">a =</span> <span class="dv">2</span>, <span class="dt">k =</span> <span class="dv">5</span>)</span>
<span id="cb2-4"><a href="#cb2-4" aria-hidden="true"></a><span class="co">#&gt; [1]  -4  22 -78</span></span></code></pre></div>
</div>
<div id="single-moment-conv_moment" class="section level3">
<h3>Single Moment (conv_moment)</h3>
<div class="sourceCode" id="cb3"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb3-1"><a href="#cb3-1" aria-hidden="true"></a>x &lt;-<span class="st"> </span><span class="kw">c</span>(<span class="op">-</span><span class="dv">1</span>, <span class="dv">7</span>, <span class="dv">39</span>)  <span class="co"># raw moments about a = 2</span></span>
<span id="cb3-2"><a href="#cb3-2" aria-hidden="true"></a><span class="kw">conv_moment</span>(x, <span class="dt">a =</span> <span class="dv">2</span>, <span class="dt">k =</span> <span class="dv">5</span>, <span class="dt">r =</span> <span class="dv">2</span>)  <span class="co"># 2nd moment about k = 5</span></span>
<span id="cb3-3"><a href="#cb3-3" aria-hidden="true"></a><span class="co">#&gt; [1] 22</span></span></code></pre></div>
</div>
<div id="raw-to-central-raw2central" class="section level3">
<h3>Raw-to-Central (raw2central)</h3>
<div class="sourceCode" id="cb4"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb4-1"><a href="#cb4-1" aria-hidden="true"></a>x &lt;-<span class="st"> </span><span class="kw">c</span>(<span class="op">-</span><span class="dv">1</span>, <span class="dv">7</span>, <span class="dv">39</span>)  <span class="co"># raw moments about a = 2</span></span>
<span id="cb4-2"><a href="#cb4-2" aria-hidden="true"></a>mean_x &lt;-<span class="st"> </span><span class="dv">-1</span> <span class="op">+</span><span class="st"> </span><span class="dv">2</span>  <span class="co"># mean = raw_moment_1 + origin = 1</span></span>
<span id="cb4-3"><a href="#cb4-3" aria-hidden="true"></a>central &lt;-<span class="st"> </span><span class="kw">raw2central</span>(x, <span class="dt">origin =</span> <span class="dv">2</span>)</span>
<span id="cb4-4"><a href="#cb4-4" aria-hidden="true"></a>central</span>
<span id="cb4-5"><a href="#cb4-5" aria-hidden="true"></a><span class="co">#&gt; [1]  0 22 -78</span></span></code></pre></div>
</div>
<div id="central-to-raw-central2raw" class="section level3">
<h3>Central-to-Raw (central2raw)</h3>
<div class="sourceCode" id="cb5"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb5-1"><a href="#cb5-1" aria-hidden="true"></a>central &lt;-<span class="st"> </span><span class="kw">c</span>(<span class="dv">0</span>, <span class="dv">22</span>, <span class="dv">-78</span>)  <span class="co"># central moments</span></span>
<span id="cb5-2"><a href="#cb5-2" aria-hidden="true"></a>raw_back &lt;-<span class="st"> </span><span class="kw">central2raw</span>(central, <span class="dt">mean_val =</span> <span class="dv">1</span>)</span>
<span id="cb5-3"><a href="#cb5-3" aria-hidden="true"></a>raw_back</span>
<span id="cb5-4"><a href="#cb5-4" aria-hidden="true"></a><span class="co">#&gt; [1] -1  7 39</span></span></code></pre></div>
</div>
<div id="raw-to-central-using-conv_moment_all" class="section level3">
<h3>Raw-to-Central (using conv_moment_all)</h3>
<div class="sourceCode" id="cb6"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb6-1"><a href="#cb6-1" aria-hidden="true"></a>x &lt;-<span class="st"> </span><span class="kw">c</span>(<span class="op">-</span><span class="dv">1</span>, <span class="dv">7</span>, <span class="dv">39</span>)  <span class="co"># raw moments about a = 2</span></span>
<span id="cb6-2"><a href="#cb6-2" aria-hidden="true"></a>mean_x &lt;-<span class="st"> </span><span class="dv">-1</span> <span class="op">+</span><span class="st"> </span><span class="dv">2</span>  <span class="co"># = 1</span></span>
<span id="cb6-3"><a href="#cb6-3" aria-hidden="true"></a>central &lt;-<span class="st"> </span><span class="kw">conv_moment_all</span>(x, <span class="dt">a =</span> <span class="dv">2</span>, <span class="dt">k =</span> mean_x)</span>
<span id="cb6-4"><a href="#cb6-4" aria-hidden="true"></a>central</span>
<span id="cb6-5"><a href="#cb6-5" aria-hidden="true"></a><span class="co">#&gt; [1]  0 22 -78</span></span>
<span id="cb6-6"><a href="#cb6-6" aria-hidden="true"></a><span class="co"># Same as raw2central(x, origin = 2)</span></span></code></pre></div>
</div>
<div id="central-to-raw-using-conv_moment_all" class="section level3">
<h3>Central-to-Raw (using conv_moment_all)</h3>
<div class="sourceCode" id="cb7"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb7-1"><a href="#cb7-1" aria-hidden="true"></a>central &lt;-<span class="st"> </span><span class="kw">c</span>(<span class="dv">0</span>, <span class="dv">22</span>, <span class="dv">-78</span>)  <span class="co"># central moments</span></span>
<span id="cb7-2"><a href="#cb7-2" aria-hidden="true"></a>raw_back &lt;-<span class="st"> </span><span class="kw">conv_moment_all</span>(central, <span class="dt">a =</span> <span class="dv">1</span>, <span class="dt">k =</span> <span class="dv">2</span>)</span>
<span id="cb7-3"><a href="#cb7-3" aria-hidden="true"></a>raw_back</span>
<span id="cb7-4"><a href="#cb7-4" aria-hidden="true"></a><span class="co">#&gt; [1] -1  7 39</span></span>
<span id="cb7-5"><a href="#cb7-5" aria-hidden="true"></a><span class="co"># Same as central2raw(central, mean_val = 1)</span></span></code></pre></div>
</div>
<div id="round-trip-exact-to-machine-precision" class="section level3">
<h3>Round-Trip (exact to machine precision)</h3>
<div class="sourceCode" id="cb8"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb8-1"><a href="#cb8-1" aria-hidden="true"></a>x &lt;-<span class="st"> </span><span class="kw">c</span>(<span class="op">-</span><span class="dv">1</span>, <span class="dv">7</span>, <span class="dv">39</span>)  <span class="co"># raw moments about a = 2</span></span>
<span id="cb8-2"><a href="#cb8-2" aria-hidden="true"></a>mean_x &lt;-<span class="st"> </span><span class="dv">-1</span> <span class="op">+</span><span class="st"> </span><span class="dv">2</span>  <span class="co"># = 1</span></span>
<span id="cb8-3"><a href="#cb8-3" aria-hidden="true"></a>central &lt;-<span class="st"> </span><span class="kw">conv_moment_all</span>(x, <span class="dt">a =</span> <span class="dv">2</span>, <span class="dt">k =</span> mean_x)</span>
<span id="cb8-4"><a href="#cb8-4" aria-hidden="true"></a>raw_back &lt;-<span class="st"> </span><span class="kw">conv_moment_all</span>(central, <span class="dt">a =</span> mean_x, <span class="dt">k =</span> <span class="dv">2</span>)</span>
<span id="cb8-5"><a href="#cb8-5" aria-hidden="true"></a><span class="kw">all.equal</span>(x, raw_back)  <span class="co"># TRUE</span></span></code></pre></div>
</div>
<div id="from-data" class="section level3">
<h3>From Data</h3>
<div class="sourceCode" id="cb9"><pre class="sourceCode r"><code class="sourceCode r"><span id="cb9-1"><a href="#cb9-1" aria-hidden="true"></a><span class="kw">set.seed</span>(<span class="dv">123</span>)</span>
<span id="cb9-2"><a href="#cb9-2" aria-hidden="true"></a>y &lt;-<span class="st"> </span><span class="kw">rnorm</span>(<span class="dv">100</span>, <span class="dv">5</span>, <span class="dv">2</span>)</span>
<span id="cb9-3"><a href="#cb9-3" aria-hidden="true"></a><span class="kw">get_moments</span>(y, <span class="dt">a =</span> <span class="dv">2</span>, <span class="dt">r =</span> <span class="dv">4</span>, <span class="dt">decimal =</span> <span class="dv">4</span>)</span>
<span id="cb9-4"><a href="#cb9-4" aria-hidden="true"></a><span class="co">#&gt;   Order Moment</span></span>
<span id="cb9-5"><a href="#cb9-5" aria-hidden="true"></a><span class="co">#&gt; 1     1 3.1808</span></span>
<span id="cb9-6"><a href="#cb9-6" aria-hidden="true"></a><span class="co">#&gt; 2     2 13.4172</span></span>
<span id="cb9-7"><a href="#cb9-7" aria-hidden="true"></a><span class="co">#&gt; 3     3 64.0309</span></span>
<span id="cb9-8"><a href="#cb9-8" aria-hidden="true"></a><span class="co">#&gt; 4     4 338.1910</span></span></code></pre></div>
<hr />
</div>
</div>
<div id="license" class="section level2">
<h2>License</h2>
<p>MIT © Abdullah Al Mahmud</p>
</div>
</div>



<!-- code folding -->


<!-- dynamically load mathjax for compatibility with self-contained -->
<script>
  (function () {
    var script = document.createElement("script");
    script.type = "text/javascript";
    script.src  = "https://mathjax.rstudio.com/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML";
    document.getElementsByTagName("head")[0].appendChild(script);
  })();
</script>

</body>
</html>
