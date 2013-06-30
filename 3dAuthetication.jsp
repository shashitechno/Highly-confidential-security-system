<!DOCTYPE html>
<html>
<head>
     <style>
            #speech-input-field {
              width: 340px;
              height: 50px;
              padding: 10px 15px;
              font-size: 155%;
              border-radius: 10px;
              border: 1px solid #ccc;
              outline: 0;
            }
          </style>
    <!-- Article: http://www.paulrhayes.com/2009-07/animated-css3-cube-interface-using-3d-transforms/ -->
    <!-- Demo: http://www.paulrhayes.com/experiments/cube-3d/ -->
    <!-- Originally posted: 17th July 2009 -->
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Please Validate YourSelf</title>
    <meta name="author" content="Paul Hayes" />
    <link rel="stylesheet" href="../experiment-styles.css" />

        
    <!--[if lt IE 9]><script src="../js/html5.js"></script><![endif]-->
</head>
<div class=rules>
<font size="+2"><ol>
Please perform follwing authetication by rotatating the cube using your key-board keys.
you must pass through atleast 3 authetication. you can modify the security level. Once you logged In.
Thank you :)</ol>
<ol>Validation pending : 3</ol>
<ol>Validation completed: 0</ol>

</font>
</div>
<body class="experiment">
    <div class="wrapper">
        
<style>
  .rules
  {

  height:auto;
  border:dashed;
  color:#FF0000;
  
 }

    #experiment {
      -webkit-perspective: 800;
      -webkit-perspective-origin: 50% 200px;

      -moz-perspective: 800;
      -moz-perspective-origin: 50% 200px;
    }

    #cube {
      position: relative;
      margin: 100px auto 0;
      height: 400px;
      width: 400px;
      -webkit-transition: -webkit-transform 2s linear;
      -webkit-transform-style: preserve-3d;

      -moz-transition: -moz-transform 2s linear;
      -moz-transform-style: preserve-3d;
    }

    .face {
      position: absolute;
      height: 360px;
      width: 360px;
      padding: 20px;
      background-color: rgba(50, 50, 50, 0.7);
      font-size: 27px;
      line-height: 1em;
      color: #fff;
      border: 1px solid #555;
      border-radius: 3px;
    }

    #cube .one  {
      -webkit-transform: rotateX(90deg) translateZ(200px);
      -moz-transform: rotateX(90deg) translateZ(200px);
    }

    #cube .two {
      -webkit-transform: translateZ(200px);
      -moz-transform: translateZ(200px);
    }

    #cube .three {
      -webkit-transform: rotateY(90deg) translateZ(200px);
      -moz-transform: rotateY(90deg) translateZ(200px);
    }

    #cube .four {
      -webkit-transform: rotateY(180deg) translateZ(200px);
      -moz-transform: rotateY(180deg) translateZ(200px);
    }

    #cube .five {
      -webkit-transform: rotateY(-90deg) translateZ(200px);
      -moz-transform: rotateY(-90deg) translateZ(200px);
    }

    #cube .six {
      -webkit-transform: rotateX(-90deg) rotate(180deg) translateZ(200px);
      -moz-transform: rotateX(-90deg) rotate(180deg) translateZ(200px);
    }
</style>


<div id="experiment" align="right">
    <div id="cube">
        <div class="face one">
        <form action="3dinterface.jsp" method=POST>
        <h2><font color=red>Please Pronounce your token!</font></h2>
          <input type="text" x-webkit-speech id=speech-input-field />
          
       <center>  <input type=submit value=validate></center> 
     </form>
        </div>
        <div class="face two">
            Up, down, left, right
        </div>
        <div class="face three">
           3d PassWord Auth Scheme
        </div>
        <div class="face four">
           Finger Based Authentication
        </div>
        <div class="face five">
            Facial recognization
        </div>
        <div class="face six">
            <img src="images/sonic.gif" />
            Textual Password
        </div>
    </div>
</div>
    </div>
      
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
            <script>
        

var props = 'transform WebkitTransform MozTransform OTransform msTransform'.split(' '),
    prop,
    el = document.createElement('div');

for(var i = 0, l = props.length; i < l; i++) {
    if(typeof el.style[props[i]] !== "undefined") {
        prop = props[i];
        break;
    }
}

var xAngle = 0, yAngle = 0;
$('body').keydown(function(evt) {
    switch(evt.keyCode) {
        case 37: // left
            yAngle -= 90;
            break;

        case 38: // up
            xAngle += 90;
            break;

        case 39: // right
            yAngle += 90;
            break;

        case 40: // down
            xAngle -= 90;
            break;
    };
    document.getElementById('cube').style[prop] = "rotateX("+xAngle+"deg) rotateY("+yAngle+"deg)";
});    </script>
    </body>
</html>