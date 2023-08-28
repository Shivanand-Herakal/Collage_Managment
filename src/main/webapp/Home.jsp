<%@page import="org.spring.jesa5.dto.Course"%>
<%@page import="java.util.List"%>
<%@page import="org.spring.jesa5.dao.CourseDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>

@charset "ISO-8859-1";
*{
    margin: 0;
    padding: 0;
    font-family: 'Poppins', sans-serif;
}

.header{
min-height: 100vh;
width: 100%;
background-image: linear-gradient(rgba(4,9,30,0.4),rgba(4,9,30,0.4)),url("../images/banner.png");
background-position: center;
background-size: cover;
position: relative;

}
nav{
    display: flex;
    padding: 2% 6%;
    justify-content: space-between;
    align-items: center;
}
nav img{
    width: 150px;
}
.nav-links{
    flex: 1;
    text-align: right;
}
.nav-links ul li{
list-style: none;
display: inline-block;
padding: 8px 12px;
position: relative;
}
.nav-links ul li a{
    color: #fff;
    text-decoration: none;
    font-size: 13px;
}
.nav-links ul li::after{
    content: '';
    width: 0%;
    height: 2px;
    background: #f44336;
    display: block;
    margin: auto;
    transition: 0.5s;
}
.nav-links ul li:hover::after{
width: 100%;

}
.text-box{
    width: 90%;
    color: #fff;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    text-align: center;
}
.text-box h1{
    font-size: 62px;
}
.text-box p{
    margin: 10px 0px 40px;
    font-size: 14px;
    color: #fff;
}
.hero-btn{
display: inline-block;
text-decoration: none;
color: #fff;
border: 1px solid #fff;
padding: 12px 3px;
font-size: 13px;
background: transparent;
position: relative;
cursor: pointer;
}
.hero-btn:hover{
    border: 1px solid #f44336;
    background: #f44336;
    transition: 1s;

}
nav .fa{
    display: none;
}
@media(max-width:700px){
    .text-box h1{
        font-size: 20px;
    }
    .nav-links ul li{
        display: block;
    }
    .nav-links {
        position: absolute;
        background: #f44336;
        height: 100vh;
        width: 200px;
        top: 0;
        right: 0;
        text-align: left;
        z-index: 2;
    }
    nav .fa{
        display: block;
        color: #fff;
        margin: 10px;
        font-size: 22px;
        cursor: pointer;

    }
}
.course{
    width: 80%;
    margin: auto;
    text-align: center;
    padding-top: 100px;
}
h1{
    font-size: 36px;
    font-weight: 600;
}
p{
    color: #050e0d;
    font-size: 14px;
    font-weight: 300;
    line-height: 22px;
    padding: 10px;
}
.row{
    margin-top: 5px;
    display: flex;
    justify-content: space-between;
}
.course-col{
    flex-basis: 31%;
    background: #fff3f3;
    border-radius: 10px;
    margin-bottom: 5%;
    padding: 20px 12px;
    box-sizing: border-box;
    transition: 0.5s;
}
h3{
    text-align: center;
    font-weight: 600;
    margin: 10px 0;
}
.course-col:hover{
    box-shadow: 0 0 20px 0px rgba(0 , 0, 0, 0.2);
}
.campus{
    width: 80%;
    margin: auto;
    text-align: center;
    padding-top: 50px;
}
.compus-col{
    flex-basis: 32%;
    border-radius: 10px;
    margin-bottom: 30px;
    position: relative;
    overflow: hidden;
}
.compus-col img{
    width: 100%;
    display: block;
}
.layer{
    background: transparent;
    height: 100%;
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
    transition: 0.5s;
}
.layer:hover{
    background: rgba(226 , 0, 0, 0.7);
}
.layer h3{
    width: 100%;
    font-weight: 500;
    color: #fff;
    font-size: 26px;
    bottom: 0;
    left: 12%;
    transform: translateX(-50px);
    position: absolute;
    opacity: 0;
    transition: 0.5s;
}
.layer:hover h3{
    bottom: 49%;
    opacity: 1;
}
.facilites{
    width: 80%;
    margin: auto;
    text-align: center;
    padding-top: 100px;
}
.facilites-col{
    flex-basis: 31%;
    border-radius: 10px;
    margin-bottom: 5%;
    text-align: center;
}
.facilites-col img{
    width: 100%;
    border-radius: 10px;
}
.facilites-col p{
padding: 0;
}
.facilites-col h3{
    margin-top: 16px;
    margin-bottom: 15px;
    text-align: center;
}
.testimonials{
    width: 80%;
    margin: auto;
    padding-top: 100px;
    text-align: center;
}
.testimonial-col{
    flex-basis: 44%;
    border-radius: 10px;
    margin-bottom: 5%;
    text-align: left;
    background: #fff3f3;
    padding: 25px;
    cursor: pointer;
    display: flex;
}
.testimonial-col img{
    height: 40px;
    margin-left: 5px;
    margin-right: 30px;
    border-radius: 50%;
}
.testimonial-col p{
    padding: 0;
}
.testimonial-col h3{
    margin-top: 15px;
    text-align: left;
}
.testimonial-col .fa{
    color: #f44336;
}
.cta{
    margin: 100px auto;
    width: 80%;
    background-image: linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)),url("../images/banner2.jpg"); 
    background-position: center;
    border-radius: 10px;
    text-align: center;
    padding: 100px 0;
}
.cta h1{
    color: #fff;
    margin-bottom: 40px;
    padding: 0;
}
.footer{
    width: 100%;
    text-align: center;
    padding: 30px 0;
}
.footer{
    margin-bottom: 25px;
    margin-top: 20px;
    font-weight: 600;
    color: #f56969;
}
.icons .fa{
    color: #f44336;
    margin: 0 13px;
    cursor: pointer;
    pad: 18px 0;

}

</style>
</head>
<body>
	   <section class="header">
            <nav>
                <img src="../images/logo.png"  alt="">
                <div class="nav-links">
                    <i class="fa fa-times"></i>
                    <ul>
                        <li><a href="">Home</a></li>
                        <li><a href="/AdminLogin.jsp">Admin</a></li>
                        <li><a href="/StudentLogin.jsp">Student</a></li>
                        <li><a href="/FacultyLogin.jsp">Faculty</a></li>
                        <li><a href="/StaffLogin.jsp">Staff</a></li>
                <i class="fa fa-bars"></i>
            </nav>
        <div class="text-box">
            <h1>Worlds Biggst University</h1>
            <p>University of Phoenix is a private for-profit university
                 headquartered in Phoenix, Arizona. <br>Founded in 1976, 
                 the university confers certificates and degrees at the certificate, 
                 associate, bachelor's, master's, and doctoral degree levels.</p>
            <a href="more.html  " class="hero-btn">Visit Us To Know More</a>
        </div>
    </section>
    <section class="course">
        <h1>Course We Offer</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde omnis autem nemo quos asperiores nam eos voluptatum veniam hic? Eum ea, nulla repudiandae labore aperiam non ut sed. Doloremque, fugit.</p>
    <div class="row">
        <div class="course-col">
            <h3>Intermediate</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia vel officia doloribus temporibus? Perferendis repudiandae soluta animi nulla molestiae,
                 dolorem harum officia quibusdam, consectetur aliquid dolores quasi rem illum fugit!</p>
        </div>
        <div class="course-col">
            <h3>Degree</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia vel officia doloribus temporibus? Perferendis repudiandae soluta animi nulla molestiae,
                 dolorem harum officia quibusdam, consectetur aliquid dolores quasi rem illum fugit!</p>
        </div>
        <div class="course-col">
            <h3>Post Graduation</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia vel officia doloribus temporibus? Perferendis repudiandae soluta animi nulla molestiae,
                 dolorem harum officia quibusdam, consectetur aliquid dolores quasi rem illum fugit!</p>
        </div>
    </div>
    </section>
    <section class="campus">
        <h1>Oue Global Campus</h1>
        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia vel officia doloribus temporibus? Perferendis repudiandae soluta animi nulla molestiae,
            dolorem harum officia quibusdam, consectetur aliquid dolores quasi rem illum fugit!</p>
            <div class="row">
                <div class="compus-col">
                    <img src="../images/london.png" alt="">
                    <div class="layer">
                        <h3>LONDON</h3>
                    </div>
                </div>
                <div class="compus-col">
                    <img src="../images/newyork.png" alt="">
                    <div class="layer">
                        <h3>NEW YORK</h3>
                    </div>
                </div>
                <div class="compus-col">
                    <img src="../images/washington.png" alt="">
                    <div class="layer">
                        <h3>WASHINGTON</h3>
                    </div>
                </div>
            </div>
    </section>
    <section class="facilites">
        <h1>Our Facilities</h1>
        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia vel officia doloribus temporibus? Perferendis repudiandae soluta animi nulla molestiae,
            dolorem harum officia quibusdam, consectetur aliquid dolores quasi rem illum fugit!</p>


         <div class="row">
            <div class="facilites-col">
                <img src="../images/library.png" alt="">
                <h3>World Class Library</h3>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Corrupti recusandae maiores ut reiciendis, praesentium obcaecati ipsum nam cumque soluta unde aspernatur deserunt velit dolorem neque quidem quisquam magnam voluptatibus? A?</p>
            </div>
            <div class="facilites-col">
                <img src="../images/basketball.png" alt="">
                <h3>Largest Play Ground</h3>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Corrupti recusandae maiores ut reiciendis, praesentium obcaecati ipsum nam cumque soluta unde aspernatur deserunt velit dolorem neque quidem quisquam magnam voluptatibus? A?</p>
            </div>
            <div class="facilites-col">
                <img src="../images/cafeteria.png" alt="">
                <h3>Tasty And Healthy Food</h3>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Corrupti recusandae maiores ut reiciendis, praesentium obcaecati ipsum nam cumque soluta unde aspernatur deserunt velit dolorem neque quidem quisquam magnam voluptatibus? A?</p>
            </div>
         </div>   
    </section>
    <section class="testimonials">
        <h1>What Our Students Says</h1>
        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia vel officia doloribus temporibus? Perferendis repudiandae soluta animi nulla molestiae,
            dolorem harum officia quibusdam, consectetur aliquid dolores quasi rem illum fugit!</p>
    <div class="row">
        <div class="testimonial-col"><img src="../images/user1.jpg" alt="">
            <div>
        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cumque repudiandae molestias alias? Nemo nesciunt corrupti maxime quo, nostrum nisi id ab quam dolore facere fugit at qui aliquid, eius saepe!</p>
        <h3>Christine Berkley</h3>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star-o"></i>
        
        </div>
    </div>
    <div class="testimonial-col"><img src="../images/user2.jpg" alt="">
                <div>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cumque repudiandae molestias alias? Nemo nesciunt corrupti maxime quo, nostrum nisi id ab quam dolore facere fugit at qui aliquid, eius saepe!</p>
            <h3>Christine Berkley</h3>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star-o"></i>
                    </div>
         </div>
     </div>
      </section>
   <section class="cta">
    <h1>Enroll For Our Various Online Courses <br>Anywhere From The World</h1>
    <a href="" class="hero-btn">Contact Us</a>
   </section>

    <section class="footer">
        <h4>About Us</h4>
        <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
             Quisquam asperiores laboriosam tempore facere qui voluptatibus <br>
              perferendis dolores quis velit, hic sapiente repudiandae cupiditate! 
              Maxime quod repellendus nesciunt dolore temporibus beatae.</p>
    <div class="icons">
        <i class="fa fa-facebook"></i>
        <i class="fa fa-twitter"></i>
        <i class="fa fa-instagram"></i>
        <i class="fa fa-linkedin"></i>
    </div>
    </section>
		  
</body>
</html>
