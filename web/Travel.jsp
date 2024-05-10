<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   
    <title>Travel World</title>
    
    <style> 
        @import url("https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;1,500&display=swap");
        @import url(https://fonts.googleapis.com/css?family=Open+Sans:400,500,300,700);
:root {
  --primary-color: #669ccb;
  --primary-color-dark: #5681a7;
  --secondary-color: #e8f1fa;
  --text-dark: #282d31;
  --text-light: #767268;
  --extra-light: #f3f4f6;
  --max-width: 1200px;
}

* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
  scroll-behavior: smooth;
   font-family : Open Sans;
}

.section__container {
  padding: 5rem 1rem;
  max-width: var(--max-width);
  margin: auto;
}

.section__title {
  font-size: 2rem;
  font-weight: 500;
  color: black;
  margin-bottom: 1rem;
  text-align: center;
}

.section__subtitle {
  font-size: 1rem;
  font-style: italic;
  color: var(--primary-color);
  margin-bottom: 5rem;
  text-align: center;
}

img {
  width: 100%;
}

body {
  font-family: "Roboto", sans-serif;
}

nav {
  position: absolute;
  
  top: 0;
  left: 50%;
  transform: translateX(-50%);
  padding: 2rem 1rem;
  width: 100%;
  max-width: var(--max-width);
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.nav__logo h3 {
  color:  #ffffff;
	font: normal 36px 'Open Sans', cursive;
        margin-left: -100px;
}
.nav__logo span{
    
    color:  lightseagreen;
} 

.nav__links {
  display: none;
  list-style: none;
  align-items: center;
  gap: 2rem;
}

.link {
  color: white;
  text-decoration: none;
  text-transform: uppercase;
 /* cursor: pointer;
  transition: 0.3s;*/
}
.link a{
    color: white;
  text-decoration: none;
    
}


header {
  height: 100vh;
  /*background-image: url("assets/bg-1.jpg");*/
  
  background-image: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url("assets/bg-1.jpg");
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
}

header .section__container {
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
}

.header__content {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 2rem;
  color: var(--extra-light);
}

.header__content h1 {
  font-size: 5rem;
  font-weight: 400;
  line-height: 5rem;
}

.header__content p {
  text-align: center;
  font-size: 1.5rem;
  color : #F5F5DC;  
}

.header__content button {
  padding: 1rem 2rem;
  outline: none;
  border: none;
  border-radius: 5px;
  background-color: var(--primary-color);
  color: var(--extra-light);
  font-size: 1rem;
  cursor: pointer;
  transition: 0.3s;
}

.header__content button:hover {
  background-color: var(--primary-color-dark);
}


.mar img{
    margin:20px 50px 20px 0px ;
    width: 250px;
    height: 200px;
    border-radius:10px;
}

.journey__container {
  background-color: var(--secondary-color);
  width: 100%;
}

.journey__grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 1rem;
}

.country__card {
  background-color: var(--extra-light);
}

.country__name {
  padding: 1rem;
  text-align: left;
  display: flex;
  align-items: center;
  gap: 0.5rem;
  color: var(--text-light);
  cursor: pointer;
}

.country__name i {
  font-size: 1.2rem;
}

.country__name span {
  font-style: italic;
}

.package{
     
    display: flex;
    
    
}
.example img{
    
             
             height: 400px;
}


      .example {
        margin: 20px 20px 20px 20px;
        position: relative;
       width:100%;
       display: grid;
        cursor: pointer;
        overflow: hidden;
        transition: filter 0.3s ease;
      }
      
      .example:hover{
          
          filter: drop-shadow(10px 10px 20px rgba(36,36,36,0.5));
      }
      
      .content {
        opacity: 0;
        font-size: 40px;
        position: absolute;
        top: 0;
        left: 0;
        color: #1c87c9;
        background-color: rgba(0, 0, 0, 0.3);
        width: 100%;
        height: 400px;
        -webkit-transition: all 400ms ease-out;
        -moz-transition: all 400ms ease-out;
        -o-transition: all 400ms ease-out;
        -ms-transition: all 400ms ease-out;
        transition: all 400ms ease-out;
        text-align: center;
      }
      .example .content:hover {
        opacity: 1;
      }
      .example .content .text {
        color: white;
        height: 0;
        opacity: 1;
        transition-delay: 0s;
        transition-duration: 0.4s;
      }
      .example .content:hover .text {
        opacity: 1;
        transform: translateY(250px);
        -webkit-transform: translateY(100px);
      }


.banner__container {
  background-color: var(--secondary-color);
/*    url("assets/bg-2.jpg")*/;
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
}

.banner_container .section_container {
  padding: 10rem 1rem;
  display: flex;
  justify-content: center;
}

.banner__content {
  display: flex;
  align-items: center;
  flex-direction: column;
  gap: 1.5rem;
  text-align: center;
  color: var(--extra-light);
}

.banner__content h2 {
  font-size: 2rem;
  font-weight: 400;
}

.banner__content button {
  padding: 0.5rem 2rem;
  outline: none;
  border: 2px solid var(--secondary-color);
  background-color: transparent;
  color: var(--secondary-color);
  font-size: 1rem;
  cursor: pointer;
}

.display__container {
    display: flex;
  background-color: var(--secondary-color);
}

.display_container :is(.sectiontitle, .section_subtitle) {
  color: var(--text-dark);
}

.display__grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 1rem;
}

.display__card {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  gap: 0.5rem;
  background-color: var(--extra-light);
  text-align: center;
}

.display__card i {
  font-size: 2rem;
  color: var(--primary-color);
}

.display__card h4 {
  font-size: 1rem;
  font-weight: 500;
  padding: 0 1rem;
  color: var(--text-dark);
}

.display__card p {
  font-size: 0.8rem;
  padding: 0 1rem;
  color: var(--text-dark);
}

.display__grid .grid-1 {
  grid-area: 1/1/3/3;
}


.footer-distributed{
	 background-color: var(--text-dark);
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
	box-sizing: border-box;
	width: 100%;
	text-align: left;
	font: bold 16px sans-serif;
	padding: 55px 50px;
}

.footer-distributed .footer-left,
.footer-distributed .footer-center,
.footer-distributed .footer-right{
	display: inline-block;
	vertical-align: top;
}

/* Footer left */

.footer-distributed .footer-left{
	width: 40%;
}

/* The company logo */

.footer-distributed h3{
	color:  #ffffff;
	font: normal 36px 'Open Sans', cursive;
	margin: 0;
}

.footer-distributed h3 span{
	color:  lightseagreen;
}

/* Footer links */

.footer-distributed .footer-links{
	color:  #ffffff;
	margin: 20px 0 12px;
	padding: 0;
}

.footer-distributed .footer-links a{
	display:inline-block;
	line-height: 1.8;
  font-weight:400;
	text-decoration: none;
	color:  inherit;
}

.footer-distributed .footer-company-name{
	color:  #000;
	font-size: 16px;
	font-weight: normal;
	margin: 0;
}

/* Footer Center */

.footer-distributed .footer-center{
	width: 35%;
}

.footer-distributed .footer-center i{
	background-color:  #33383b;
	color: #ffffff;
	font-size: 25px;
	width: 38px;
	height: 38px;
	border-radius: 50%;
	text-align: center;
	line-height: 42px;
	margin: 10px 15px;
	vertical-align: middle;
}

.footer-distributed .footer-center i.fa-envelope{
	font-size: 17px;
	line-height: 38px;
}

.footer-distributed .footer-center p{
	display: inline-block;
	color: #ffffff;
  font-weight:400;
	vertical-align: middle;
	margin:0;
}

.footer-distributed .footer-center p span{
	display:block;
	font-weight: normal;
	font-size:14px;
	line-height:2;
}

.footer-distributed .footer-center p a{
	color:  lightseagreen;
	text-decoration: none;;
}

.footer-distributed .footer-links a:before {
  content: "|";
  font-weight:300;
  font-size: 20px;
  left: 0;
  color: #fff;
  display: inline-block;
  padding-right: 5px;
}

.footer-distributed .footer-links .link-1:before {
  content: none;
}

/* Footer Right */

.footer-distributed .footer-right{
	width: 20%;
}

.footer-distributed .footer-company-about{
	line-height: 20px;
	color:  #ffffff;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
}

.footer-distributed .footer-company-about span{
	display: block;
	color:  #ffffff;
	font-size: 14px;
	font-weight: bold;
	margin-bottom: 20px;
}




/* If you don't want the footer to be responsive, remove these media queries */

@media (max-width: 880px) {

	.footer-distributed{
		font: bold 14px sans-serif;
	}

	.footer-distributed .footer-left,
	.footer-distributed .footer-center,
	.footer-distributed .footer-right{
		display: block;
		width: 100%;
		margin-bottom: 40px;
		text-align: center;
	}

	.footer-distributed .footer-center i{
		margin-left: 0;
	}

}




@media (min-width: 640px) {
  .nav__links {
    display: flex;
  }

  header .section__container {
    justify-content: flex-start;
  }

  .header__content {
    max-width: 400px;
    align-items: flex-start;
  }

  .header__content p {
    text-align: left;
  }

  .journey__grid {
    grid-template-columns: repeat(3, 1fr);
    gap: 1rem;
  }

      
  }
  
  .display__grid {
    grid-template-columns: repeat(4, 1fr);
  }

  .display__card {
    gap: 0;
  }

  .display__card i {
    font-size: 1.75rem;
  }

  .display__card h4 {
    font-size: 1rem;
  }

  .display__card p {
    font-size: 0.7rem;
  }


@media (min-width: 786px) {
  .banner_container .section_container {
    justify-content: flex-end;
  }

  .banner__content {
    align-items: flex-end;
    text-align: right;
    max-width: 800px;
  }

  .display__card {
    gap: 0.5rem;
  }

  .display__card i {
    font-size: 2.5rem;
  }

  .display__card p {
    font-size: 0.8rem;
  }
}

@media (min-width: 1024px) {
  .display__card {
    gap: 1rem;
  }

  .display__card i {
    font-size: 3rem;
  }

  .display__card h4 {
    font-size: 1.5rem;
  }

  .display__card p {
    font-size: 1rem;
  }
}
  </style>
  </head>
  <body>
    <nav>
      <div class="nav__logo"><h3>TravelWorld<span>.com</span></h3></div>
      <ul class="nav__links">
        <li class="link"><a href="#">Home</a></li>
        <li class="link"><a href="#Gallery">Gallery</a></li>
        <li class="link"><a href="#Packages">Packages</a></li>
        <li class="link"><a href="#About">About us</a></li>
        <li class="link"><a href="#Contact">Contact</a></li>
      </ul>
    </nav>
    <header id="Home">
      <div class="section__container">
        <div class="header__content">
<!--          <h1>Travel</h1>-->
          <p>
            Embark on a journey of a lifetime and explore the world's most
            breathtaking destinations with our expert travel advice. From exotic
            beaches to cultural wonders, we've got you covered with our
            comprehensive travel guides and insider tips.
          </p>
         
        </div>
      </div>
    </header>

    <section id="Gallery" class="journey__container">
      <div  class="section__container">
        <h2 class="section__title">Gallery</h2>
        <p class="section__subtitle"></p>
        
        <marquee   scrollamount="13" class="mar" >
            
        <img src="projectimg/Chittorgarh2.jpg" alt="" />
        <img src="projectimg/Gir-National-Park-2.jpg" alt="" />
        <img src="projectimg/ellora3.jpg" alt="" />
        <img src="projectimg/bhuj 2.jpg" alt="" />
        </marquee>
        <br>
        <marquee  scrollamount="13" direction="right" class="mar">
            
        <img src="projectimg/khajurao2.jpg" alt="" />
        <img src="projectimg/maheshwar1.jpg" alt="" />
        <img src="projectimg/manali2.jpg" alt="" />
        <img src="projectimg/masuri1.jpg" alt="" />
        </marquee>
        <br>
        <marquee  scrollamount="13" class="mar">
            
        <img src="projectimg/puskar2.jpg" alt="" />
        <img src="projectimg/rishikesh3.jpg" alt="" />
        <img src="projectimg/shimla1.jpg" alt="" />
        <img src="projectimg/shirdi1.jpg" alt="" />
        </marquee>
      </div>
    </section>

     
     
    <section id="Packages" class="banner__container">
        <h2 style="color:black" class="section__title">Packages</h2>
       
        
        <div class="package">

     <div class="example">          
      <img class="img" src="assets/GJ1.jpg" alt="tree" />
       <div class="content">
        <div class="text">
            
            <h2><a href="gujrat.jsp" style="text-decoration:none; color:white" >GUJRAT<br><span style="font-size:40px">₹ 22,999</span></a></h2>
              
        </div>
          </div>
     </div>
            

           <div class="example">  
               <img class="img" src="assets/Map.jpg"  alt="tree" />
       <div class="content">
        <div class="text">
            
            <h2><a href="madhyapradesh.jsp" style="text-decoration:none; color:white" >MADHYA PRADESH<br><span style="font-size:40px">₹ 21,999</span></a></h2>
            <p></p>     
        </div>
       </div>
       </div>  
      
         <div class="example"> 
         
      <img class="img" src="assets/MH3.jpg" alt="tree" />
       <div class="content">
        <div class="text">
            
            <h2><a href="maharastra.jsp" style="text-decoration:none; color:white" >MAHARASHTRA<br><span style="font-size:40px">₹ 24,999</span></a></h2>
            <p></p>  
        </div>
          </div>
     </div>
            <br>

     
        </div>
                <div class="package">
           
     <div class="example">          
      <img class="img" src="assets/RJ.jpg" alt="tree" />
       <div class="content">
        <div class="text">
            
            <h2><a href="rajasthan.jsp" style="text-decoration:none; color:white" >RAJASTHAN<br><span style="font-size:40px">₹ 27,999</span></a></h2>
            <p></p>  
        </div>
          </div>
     </div>
            

           <div class="example">  
            <img class="img" src="assets/uk.jpg"  alt="tree" />
       <div class="content">
        <div class="text">
            
            <h2><a href="uttarakhand.jsp" style="text-decoration:none; color:white" >UTTARAKHAND<br><span style="font-size:40px">₹ 27,999</span></a></h2>
            <p></p>     
        </div>
       </div>
       </div>  
      
         <div class="example"> 
         
      <img class="img" src="assets/HM.jpg" alt="tree" />
       <div class="content">
        <div class="text">
            
            <h2><a href="himachalpradesh.jsp" style="text-decoration:none; color:white" >HIMACHAL PRADESH<br><span style="font-size:40px">₹ 29,999</span></a></h2>
            <p></p>  
        </div>
          </div>
     </div>
            <br>

     
        </div>
    
         

  
     
        
<!--        </div>
      </div>-->
    </section>

    <section id="About" class="display__container">
      <div class="section__container">
        <h2 class="section__title">Why Choose Us</h2>
        <p class="section__subtitle">
          your vacations our responsibility
        </p>
        <div class="display__grid">
          <div class="display__card grid-1">
              <img style="height:100%" src="assets/about-2.jpg" alt="grid" />
          </div>
          <div class="display__card">
            <i class="ri-earth-line"></i>
            <h4>Passionate Travel</h4>
            <p>Fuel your passion for adventure and discover new horizons</p>
          </div>
          <div class="display__card">
            <img src="assets/about-1.jpg" alt="grid" />
          </div>
          <div class="display__card">
            <img src="assets/grid-3.jpg" alt="grid" />
          </div>
          <div class="display__card">
            <i class="ri-road-map-line"></i>
            <h4>Beautiful Places</h4>
            <p>Uncover the India's most breathtakingly beautiful places</p>
          </div>
        </div>
      </div>
    </section>
      
      
      
<footer id="Contact" class="footer-distributed">

			<div class="footer-left">

				<h3>TravelWorld<span>.com</span></h3>

				<p class="footer-links">
					<a href="#Home" class="link-1">Home</a>
					
					<a href="#Gallery">Gallery</a>
				
					<a href="#Packages">Package</a>
				
					<a href="#About">About</a>
					
				</p>

				<p class="footer-company-name">Copyrights © 2024. All Right Reserved</p>
			</div>

			<div class="footer-center">

				<div>
					<i class="fa fa-map-marker"></i>
					<p><span>444 S. Vijay Nagar</span> Indore, India</p>
				</div>
                            <br>
				<div>
					<i class="fa fa-phone"></i>
					<p>+91 9575406441</p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="#">support@company.com</a></p>
				</div>

			</div>

			<div class="footer-right">

				<p class="footer-company-about">
					<span>About the company</span>
					Lorem ipsum dolor sit amet, consectateur adispicing elit. Fusce euismod convallis velit, eu auctor lacus vehicula sit amet.
				</p>
			</div>

		</footer>
  </body>
</html>