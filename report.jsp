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
<h1>Please select report type</h1>
<form method="post" action="#">
	<ul>
		<li>
            <label for="idtype">Select the report type</label>
            <select id="idtype">
                <option value="binaryreport">Binary data report</option>
                <option value="textualreport">Textual report</option>
            </select>
        </li>
		<li>
        	<label for="reportpass">Select the report password:</label>
            <input type="password" required pattern="[0-9][a-z]{8}" x-moz-errormessage="Enter password(mix of digits & alphabets 8 char long)" name="password" size="40" id="reportpass" />
        </li>
		<li>
			<label>Send at my email address </label>
			<input type="checkbox" />
        </li>
	</ul>
    <p>
        <button type="submit" class="action">Generate report</button>
        <button type="reset" class="right">Reset</button>
    </p>
</form>
</article>
<footer>
<p>High confidentail security system <strong>&#9829;</strong> by Shashikant and Upendra </p>
</footer>