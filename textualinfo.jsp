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
<h1>Textual data storage form</h1>
<form method="post" action="#">
	<ul>
		<li>
            <label for="idtype">Identity type</label>
            <select id="idtype">
                <option value="pan card">Pan card</option>
                <option value="unique id">Unique id</option>
                <option value="voter id">Credit card</option>
                <option value="ration card">Atm card</option>
                <option value="driving licanse">Account no</option>
                <option value="passport">Passport no</option>
            </select>
        </li>
		<li>
        	<label for="desc">Description:</label>
            <textarea required x-moz-errormessage="Enter description" name="desc" cols="50" rows="5" id="desc"></textarea>
		</li>
		<li>
        	<label for="datavalue">Data value:</label>
            <input type="text" required x-moz-errormessage="Enter data value" name="datavalue" size="40" id="datavalue" />
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