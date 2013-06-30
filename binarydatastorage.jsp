<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Sexy Forms</title>
<link rel="stylesheet" href="css/style.css" />
<link href='http://fonts.googleapis.com/css?family=Engagement' rel='stylesheet' type='text/css'>
<!--[if IE]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/jquery.uniform.min.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" charset="utf-8">
      $(function(){
        $("input:checkbox, input:radio, input:file, select").uniform();
      });
    </script>
</head>
<body>
<article>
<h1>Binary data storage form</h1>
<form method="post" action="#">
	<ul>
		<li>
            <label for="idtype">Data type</label>
            <select id="idtype">
                <option value="pan card">Pan card</option>
                <option value="unique id">Unique id</option>
                <option value="voter id">Credit card</option>
                <option value="ration card">Atm card</option>
                <option value="driving licanse">Bank passbook</option>
                <option value="passport">Passport</option>
                <option value="video">Video</option>
                <option value="music">Music</option>
            </select>
        </li>
		<li>
        	<label for="desc">Description:</label>
            <textarea cols="50" required x-moz-errormessage="Enter description" name="desc" rows="5" id="desc"></textarea>
		</li>
		<li>
            <label>Data image:</label>
            <input type="file" />
        </li>
	</ul>
    <p>
        <button type="submit" class="action">Submit</button>
        <button type="reset" class="right">Reset</button>
    </p>
</form>
</article>
<footer>
<p>High confidentail security system <strong>&#9829;</strong> by Shashikant and Upendra </p>
</footer>