<!doctype html>
<%def name="head()">\
  <meta charset="utf-8">
  <title>${self.title()}</title>  
  <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

  <link href="${url('/css/bootstrap.css')}" rel="stylesheet">
  <style>
    body {
      padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
    }
  </style>
  <link href="${url('/css/bootstrap-responsive.css')}" rel="stylesheet"/>
  <link href="${url('/css/main.css')}" rel="stylesheet"/>

  <link rel="shortcut icon" href="${url('/img/favicon.ico/')}">
  <link rel="apple-touch-icon" href="${url('/img/apple-touch-icon.png')}">
  <link rel="apple-touch-icon" sizes="72x72" href="${url('/img/apple-touch-icon-72x72.png')}">
  <link rel="apple-touch-icon" sizes="114x114" href="${url('/img/apple-touch-icon-114x114.png')}">
</%def>\
<%def name="title()">Please Define your title()</%def>\
<html lang="en">
<head>
${self.head()}
</head>
<body>
${next.body()}\
<script src="${url('http://code.jquery.com/jquery-1.7.1.min.js')}"></script>
<script src="${url('/js/bootstrap.min.js')}"></script>
</body>
</html>
