
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Highly Confidencial Security system</title>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/style_grid.css" />
        <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />
		<script id="previewTmpl" type="text/x-jquery-tmpl">
			<div id="eg-img-preview" class="eg-preview">
                <img src="${src}" alt="" class="eg-preview-img"/>
                <span class="eg-preview-descr" style="display:none;">${description}</span>
                <div class="eg-nav" style="display:none;">
                    <span class="eg-nav-prev">Previous</span>
                    <span class="eg-nav-next">Next</span>
                </div>
                <span class="eg-close" style="display:none;">Close Preview</span>
                <div class="eg-loading-large" style="display:none;">Loading...</div>
            </div>		
		</script>
		<script id="contentTmpl" type="text/x-jquery-tmpl">	
			<div id="eg-content-preview" class="eg-content-preview">
                <div class="eg-title" style="display:none;">{{html title}}</div>
                <div class="eg-content-full" style="display:none;">{{html content}}</div>
                <span class="eg-close" style="display:none;">Close Preview</span>
            </div>
		</script>
        <script id="videoTmpl" type="text/x-jquery-tmpl">	
			<div id="eg-video-preview" class="eg-video-preview">
                <iframe class="eg-video-full" style="display:none;" src="${src}"></iframe>
                <span class="eg-close" style="display:none;">Close Preview</span>
            </div>
		</script>		
    </head>
    <body>
        <div class="container">
           
            <div id="eg-main-wrapper" class="eg-main-wrapper">
                <div class="eg-main">
                    <a href="#" class="eg-image" rel="leafbug"><img src="uploads/thumbs/1.jpg" data-largesrc="uploads/large/1.jpg" alt="image01"/><span>Scottwills Leafbug 1</span></a>
                    <a class="eg-video" href="http://www.youtube.com/embed/nW6_QyOMOvQ" data-vidheight="660" data-vidwidth="1238"><img src="uploads/video1.png" max-height="210" max-width="210" alt=""/><span>Beer bottles zelda</span></a>
					<a href="#" class="eg-image" rel="river"><img src="uploads/thumbs/2.jpg" data-largesrc="uploads/large/2.jpg" alt="image02"/><span>Scottwills River 1</span></a>
					<a href="#" class="eg-content" rel="other">
                        <div class="eg-title">
                            <h2>Credit Card No.<span>9723431234589083</span></h2>
                        </div>
                        <div class="eg-content-full">
                            
                            <p>"Decription:- Credit Card Information to User Shashikant Vaishnav"</p>
                            <p>"Its a Confidecial Information secured by Highly confidencial Security System"</p>
                        </div>
                    </a>
					<a href="#" class="eg-image" rel="woodstump"><img src="uploads/thumbs/3.jpg" data-largesrc="uploads/large/3.jpg" alt="image03"/><span>Scottwills Woodstump 1</span></a>
                     <a class="eg-link" href="http://www.google.com">
                     <div class="eg-title">
                            <h2>Google website<span>http://www.google.com</span></h2>
                    </div>
                        </a>
                    <a class="eg-video" href="http://www.dailymotion.com/embed/video/xg1x09" data-vidheight="712" data-vidwidth="1238" rel="other"><img src="uploads/video2.png" max-height="210" max-width="210" alt=""/><span>Beer bottles merry christmas</span></a>
					<a href="#" class="eg-image" rel="cyan-tree"><img src="uploads/thumbs/4.jpg" data-largesrc="uploads/large/4.jpg" alt="image04"/><span>Cyan Tree 1</span></a>
                    <a href="#" class="eg-content" rel="other">
                        <div class="eg-title">
                            <h2>Sir Winston Churchill<span> (1874 - 1965)</span></h2>
                        </div>
                        <div class="eg-content-full">
                            <p>"Every day you may make progress. Every step may be fruitful. Yet there will stretch out before you an ever-lengthening, ever-ascending, ever-improving path. You know you will never get to the end of the journey. But this, so far from discouraging, only adds to the joy and glory of the climb."</p>
                            <p>"From now on, ending a sentence with a preposition is something up with which I will not put."</p>
                            <p>"Never, never, never believe any war will be smooth and easy, or that anyone who embarks on the strange voyage can measure the tides and hurricanes he will encounter. The statesman who yields to war fever must realize that once the signal is given, he is no longer the master of policy but the slave of unforeseeable and uncontrollable events."</p>
                            <p>"One ought never to turn one's back on a threatened danger and try to run away from it. If you do that, you will double the danger. But if you meet it promptly and without flinching, you will reduce the danger by half."</p>
                        </div>
                    </a>
					<a href="#" class="eg-image" rel="leafbug"><img src="uploads/thumbs/1.jpg" data-largesrc="uploads/large/1.jpg" alt="image01"/><span>Scottwills Leafbug 2</span></a>
					<a href="#" class="eg-image" rel="river"><img src="uploads/thumbs/2.jpg" data-largesrc="uploads/large/2.jpg" alt="image02"/><span>Scottwills River 2</span></a>
					<a href="#" class="eg-image" rel="woodstump"><img src="uploads/thumbs/3.jpg" data-largesrc="uploads/large/3.jpg" alt="image03"/><span>Scottwills Woodstump 2</span></a>
					<a href="#" class="eg-image" rel="cyan-tree"><img src="uploads/thumbs/4.jpg" data-largesrc="uploads/large/4.jpg" alt="image04"/><span>Cyan Tree 2</span></a>
					<a href="#" class="eg-image" rel="woodstump"><img src="uploads/thumbs/3.jpg" data-largesrc="uploads/large/3.jpg" alt="image03"/><span>Scottwills Woodstump 3</span></a>
					<a href="#" class="eg-image" rel="cyan-tree"><img src="uploads/thumbs/4.jpg" data-largesrc="uploads/large/4.jpg" alt="image04"/><span>Cyan Tree 3</span></a>
					<a href="#" class="eg-image" rel="leafbug"><img src="uploads/thumbs/1.jpg" data-largesrc="uploads/large/1.jpg" alt="image01"/><span>Scottwills Leafbug 3</span></a>
					<a href="#" class="eg-image" rel="river"><img src="uploads/thumbs/2.jpg" data-largesrc="uploads/large/2.jpg" alt="image02"/><span>Scottwills River 3</span></a>
                    <a href="#" class="eg-content" rel="other">
                        <div class="eg-title">
                            <h2>Oscar Wilde <span>(1854 - 1900) </span></h2>
                        </div>
                        <div class="eg-content-full">
                            <p>"At twilight, nature is not without loveliness, though perhaps its chief use is to illustrate quotations from the poets."</p>
                            <p>"I was working on the proof of one of my poems all the morning, and took out a comma. In the afternoon I put it back again."</p>
                            <p>"Most modern calendars mar the sweet simplicity of our lives by reminding us that each day that passes is the anniversary of some perfectly uninteresting event."</p>
                            <p>"One can survive everything, nowadays, except death, and live down everything except a good reputation."</p>
                            <p>"If you want to tell people the truth, make them laugh, otherwise they'll kill you."</p>
                        </div>
                    </a>

        <div class="clr"></div>
				</div><!-- eg-main -->
            </div><!-- eg-main-wrapper -->
        </div>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.tmpl.min.js"></script>
		<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
        <script type="text/javascript" src="js/little-boxes-responsive-grid.min.js"></script>
    </body>
</html>	