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

.nav__logo a {
  text-decoration: none;
  color: var(--extra-light);
  font-size: 1.5rem;
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
  background-image: url("assets/bg-1.webp");
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
        background-color: rgba(200, 200, 200, 0.5);
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

.banner__container .section__container {
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

.display__container :is(.section__title, .section__subtitle) {
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

footer {
  background-color: var(--text-dark);
  color: var(--secondary-color);
}

footer .section__container {
  display: flex;
  gap: 1.5rem;
  text-align: left;
  
}

footer h4 {
  font-size: 1.5rem;
  font-weight: 500;
}

/*.social__icons {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 1rem;
}*/


footer p {
  padding-bottom: 40px;
  padding-left: 700px;
  font-weight: 500;
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
  .banner__container .section__container {
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
      <div class="nav__logo"><a href="#">Travel World</a></div>
      <ul class="nav__links">
        <li class="link"><a href="#">Home</a></li>
        <li class="link"><a href="#Gallery">Gallery</a></li>
        <li class="link"><a href="#Packages">Packages</a></li>
        <li class="link"><a href="#About">About us</a></li>
        <li class="link"><a href="#Contact">Contact</a></li>
      </ul>
    </nav>
    <header>
      <div class="section__container">
        <div class="header__content">
          <h1>Travel</h1>
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
        
        <marquee   scrollamount="20" class="mar" >
            
        <img src="https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba" alt="cat1" />
        <img src="https://images.unsplash.com/photo-1518791841217-8f162f1e1131" alt="cat2" />
        <img src="https://images.unsplash.com/photo-1519052537078-e6302a4968d4" alt="cat3" />
        <img src="https://images.unsplash.com/photo-1517451330947-7809dead78d5" alt="cat4" />
        </marquee>
        <br>
        <marquee  scrollamount="20" direction="right" class="mar">
            
        <img src="https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba" alt="cat1" />
        <img src="https://images.unsplash.com/photo-1518791841217-8f162f1e1131" alt="cat2" />
        <img src="https://images.unsplash.com/photo-1519052537078-e6302a4968d4" alt="cat3" />
        <img src="https://images.unsplash.com/photo-1517451330947-7809dead78d5" alt="cat4" />
        </marquee>
        <br>
        <marquee  scrollamount="20" class="mar">
            
        <img src="https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba" alt="cat1" />
        <img src="https://images.unsplash.com/photo-1518791841217-8f162f1e1131" alt="cat2" />
        <img src="https://images.unsplash.com/photo-1519052537078-e6302a4968d4" alt="cat3" />
        <img src="https://images.unsplash.com/photo-1517451330947-7809dead78d5" alt="cat4" />
        </marquee>
        
        
     
            
            
<!--        
        <div class="journey__grid">
          <div class="country__card">
            <img src="assets/country-1.jpg" alt="country" />
            <div class="country__name">
              <i class="ri-map-pin-2-fill"></i>
              <span>Santorini, Greece</span>
            </div>
          </div>
          <div class="country__card">
            <img src="assets/country-2.jpg" alt="country" />
            <div class="country__name">
              <i class="ri-map-pin-2-fill"></i>
              <span>Vernazza, Italy</span>
            </div>
          </div>
          <div class="country__card">
            <img src="assets/country-3.jpg" alt="country" />
            <div class="country__name">
              <i class="ri-map-pin-2-fill"></i>
              <span>San Francisco</span>
            </div>
          </div>
          <div class="country__card">
            <img src="assets/country-4.jpg" alt="country" />
            <div class="country__name">
              <i class="ri-map-pin-2-fill"></i>
              <span>navagio, Greece</span>
            </div>
          </div>
          <div class="country__card">
            <img src="assets/country-5.jpg" alt="country" />
            <div class="country__name">
              <i class="ri-map-pin-2-fill"></i>
              <span>Ao Nang, Thailand</span>
            </div>
          </div>
          <div class="country__card">
            <img src="assets/country-6.jpg" alt="country" />
            <div class="country__name">
              <i class="ri-map-pin-2-fill"></i>
              <span>Phi Phi Island, Thailand</span>
            </div>
          </div>
        </div>-->
      
      </div>
    </section>

     
      
      
      
    <section id="Packages" class="banner__container">
        <h2 style="color:black" class="section__title">Packages</h2>
       
        
        <div class="package">
          
     <div class="example">          
      <img class="img" src="assets/MP.jpg" alt="tree" />
       <div class="content">
        <div class="text">
            
            <h2><a href="io.jpg" style="text-decoration:none; color:white; font-size:70px;" >GUJRAT</a></h2>
            <p></p>  
        </div>
          </div>
     </div>
            

           <div class="example">  
               <img class="img" src="assets/MP.jpg"  alt="tree" />
       <div class="content">
        <div class="text">
            
            <h2><a href="io.jpg" style="text-decoration:none; color:white" > MADHYA PRADESH</a></h2>
            <p></p>     
        </div>
       </div>
       </div>  
      
         <div class="example"> 
         
      <img class="img" src="assets/MP.jpg" alt="tree" />
       <div class="content">
        <div class="text">
            
            <h2><a href="io.jpg" style="text-decoration:none; color:white" >MAHARASHTRA</a></h2>
            <p></p>  
        </div>
          </div>
     </div>
            <br>

     
        </div>
                <div class="package">
           
     <div class="example">          
         <img class="img" src="assets/MP.jpg" alt="tree" >
       <div class="content">
        <div class="text">
            
            <h2><a href="io.jsp" style="text-decoration:none; color:white" >RAJASTHAN</a></h2>
            <p></p>  
        </div>
          </div>
     </div>
            

           <div class="example">  
              <img class="img" src="assets/MP.jpg"  alt="tree" />
       <div class="content">
        <div class="text">
            
            <h2><a href="io.jpg" style="text-decoration:none; color:white" >UTTARAKHAND</a></h2>
            <p></p>     
        </div>
       </div>
       </div>  
      
         <div class="example"> 
         
      <img class="img" src="assets/MP.jpg" alt="tree" />
       <div class="content">
        <div class="text">
            
            <h2><a href="io.jpg" style="text-decoration:none; color:white" >HIMACHAL PRADESH</a></h2>
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

    <footer id="Contact">
      <div class="section__container">
        <h4>TravelWorld.com</h4>
        
        <p><b>Contact:</b>&nbsp;&nbsp;&nbsp; +91 9575406441,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91 9575406441<br><br>
            &nbsp;<b>Email:</b>&nbsp;&nbsp;&nbsp;&nbsp;   travelworld@gmail.com<br><br><br>
             &copy; Copyright 2024 HTML.am</p>
            
        </div>
    </footer>
  </body>
</html>