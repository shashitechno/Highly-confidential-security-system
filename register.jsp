<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>Register Now</title>
<link rel="stylesheet" href="admin/css/style.css" />
<link href='http://fonts.googleapis.com/css?family=Engagement' rel='stylesheet' type='text/css'>
<!--[if IE]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="admin/js/jquery.uniform.min.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" charset="utf-8">
      $(function(){
        $("input:checkbox, input:radio, input:file, select").uniform();
      });
    </script>
</head>
<body>
<article>
<h1>Please register yourself</h1>
<form method="post" action=DoUploads enctype="multipart/form-data">
<input type=hidden name=uid value="shahsi">
	<ul>
        <li>
		<div class="required">
        	<label for="email">Your Email:</label>
            <input type="email" required x-moz-errormessage="Enter Correct email" name="email" size="40" id="email" />
        </div>
		</li>
		<li>
		<div class="required">
        	<label for="password">Password:</label>
            <input type="password" x-moz-errormessage="Enter password(mix of digits & alphabets 8 char long)" name="pass" size="40" id="pass" />
        </div>
		</li>
		<li>
		<div class="required">
        	<label for="fname">First name:</label>
            <input type="text" required x-moz-errormessage="Enter First Name" name="fname" size="40" id="fname" />
        </div>
		</li>
		<li>
		<div class="required">
        	<label for="lname">Last name:</label>
            <input type="text" required x-moz-errormessage="Enter Last Name" name="lname" size="40" id="lname" />
        </div>
		</li>
		<li>
        	<label for="bdate">Date of Birth:</label>
            <input type="text" size="40"  name="dob" id="bday" />
        </li>
		<li>
        	<label for="mobile">Mobile no:</label>
            <input type="text" required pattern="[0-9]{10}" x-moz-errormessage="Enter mobile no (10 character long)" size="40" name="mno" id="mobile"  />
        </li>
		<li>
            <label for="sex">Sex</label>
            <select id="sex" name="sex">
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other&hellip;</option>
            </select>
        </li>
		<li>
            <label for="idtype">Identity type</label>
            <select id="idtype" name="identity_type">
                <option value="pan card">Pan card</option>
                <option value="unique id">Unique id</option>
                <option value="voter id">Voter id</option>
                <option value="ration card">Ration card</option>
                <option value="driving licanse">Driving license</option>
                <option value="passport">Passport</option>
            </select>
        </li>
		<li>
            <label>Identity image:</label>
            <input type="file" required x-moz-errormessage="Select image file" name="image" />
        </li>
        <li>
            <label for="secque">Choose security question</label>
            <select id="secque" name=security_ques>
                <option value="your mother's maiden name ?">your mother's maiden name ?</option>
                <option value="your childhood nickname ?">your childhood nickname ? </option>
                <option value="your birthday month name ?">your birthday month name ?</option>
                <option value="What was your college name ?"></option>
                <option value="secother">Other&hellip;</option>
            </select>
        </li>
		<li>
		<div class="required">
        	<label for="secans">Security answer:</label>
            <input type="text" required x-moz-errormessage="Enter your answer" name="security_ans" size="40" id="secans" />
        </div>
		</li>
		<li>
		<div class="required">
        	<label for="address">Your address:</label>
            <textarea cols="50" rows="5" required x-moz-errormessage="Enter your address" name="address" id="address"></textarea>
		</div>
		</li>
	</ul>
    <p>
    <input type=hidden name=ip value=<%= request.getRemoteAddr() %>>
        <button type="submit" class="action">Register</button>
        <button type="reset" class="right">Reset</button>
    </p>
</form>
</article>
<footer>
<p>High confidential security system <strong>&#9829;</strong> by Shashikant and Upendra </p>
</footer>