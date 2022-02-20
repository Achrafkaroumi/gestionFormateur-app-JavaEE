<%-- 
    Document   : Pconnection
    Created on : 22 mars 2020, 11:58:54
    Author     : pc expert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
</head>
<style>
	*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	}
	.main{
		position: relative;
		height: 100vh;
	}
	.main svg{
		position: absolute;
		width: 100%;	
	}
	.navigation{
		height: 50px;
		padding:20px 70px;
		position: relative;
		display: flex;
		justify-content: space-between;
		z-index: 99;
	}
	.brand h1{
		color: #fff;
		font-size:30px;
		font-family: cursive;
		border: 2px solid #fff;
		border-radius: 10px;
		padding: 5px;
                box-shadow: 5px 5px 15px black;
	}
	.toggle, .close{
		display: none;

	}
	.container{
		height: 90vh;
		width: 80vw;
		color: #fff;
		position: absolute;
		top: 60%;
		left: 50%;
		transform: translate(-50%,  -50%);
		display: flex;
		justify-content: space-between;
		padding: 70px 0 30px 0;
	}
	.photo{
		position: relative;
		width: 40%;
		height: 100%;
		padding: 0 40px
	}
	.photo img{
		position: relative;
		width: 100%;
		height: 100%;
	}
	.form-cont{
		background-color:#26619c;
		width: 50%;
		height:80%;
		border-radius: 20px;
		margin-top: 50px
	}
	.inner-form{
		width: 60%;
		position: relative;
		display: block;
		margin: 20px auto;	
	}
	.inner-form img{
		width: 100px;
		height: 100px;
		position: relative;
		display: block;
		margin: 0 95px;	
	}
        .inner-form img:hover{
            transition: 0.5s;
            transform: scale(1.2);
        }
        .photo img:hover{
            transition: 1s;
            transform: scale(1.2);
        }
	.social-login{
		position: relative;
		margin: 10px 0;
		text-align: center;
	}
	.social-login ul li{
		display: inline;
		color: #fff;
		font-size:30px;
		padding: 5px;
		margin:5px 0;
		text-transform: uppercase;
	}
	.social-login ul>li>a{
		color: #fff;
		text-decoration: none;
	}
	.inner-form .input-area{
		margin: 10px 0;
	}
	.input-area i{
		position: absolute;
		margin: 10px 0;
		color: #fff;
	}
	.input-area input[type="text"],input[type="password"]{
		position: relative;
		background-color:transparent;
		width: 100%;
		border:none;
		border-bottom: 2px solid #fff;
		margin: 5px 0; 
		padding: 5px 18px;
		color:#fff;
		font-weight: 700;
		font-size: 15px;
		box-shadow: none;
	}
	::placeholder{
		color: #fff;
		opacity: 0.7;
	}
	.btn{
		position: relative;
		display: block;
		margin: 10px auto;
		font-size: 20px;
		background-color:transparent;
		box-shadow: none;
		border: 2px solid #fff;
		color: #fff;
		padding: 5px 15px;
		border-radius:10px;
	}
	.btn:hover{
		border: 2px solid #26619c;
		background-color: #fff;
		cursor: pointer;
		color: #26619c;
	}
        .erre{
            color: #ccccff;
            font-size: 20px;
           margin-left: 60px;
           border-bottom: 2px solid #ccccff; 
        }
	@media (max-width: 990px){
		*{
			transition: 0.5s;
		}
                .erre{
                    margin-left: 20px;
                }
		.inner-form img{
			margin-left: 60px;
		}
		.navigation{
			padding:10px 100px; 
		}
		.toggle{
			display: flex;
			color: #fff;
			cursor: pointer;
		}
		.brand h1{
			color:#26619c;
			font-size: 30px;
			position: absolute;
			top: 120px;
                        margin-left: -10px;

		}
		.close{
			display: block;
			position: absolute;
			color: #fff;
			right: 0;
			font-size: 30px;
			cursor: pointer;
			margin: 50px;
		}
		
		.container{
			height: 85vh;
			top: 50%;
			margin:40px 0;
		}
		.photo{
			display:none;
		}
		.form-cont{
			width: 100%;
			max-height: 100%;

		}
	}
</style>
<body>
	<section class="main">
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#26619c" fill-opacity="1" d="M0,320L16,282.7C32,245,64,171,96,154.7C128,139,160,181,192,192C224,203,256,181,288,192C320,203,352,245,384,240C416,235,448,181,480,133.3C512,85,544,43,576,48C608,53,640,107,672,117.3C704,128,736,96,768,101.3C800,107,832,149,864,181.3C896,213,928,235,960,208C992,181,1024,107,1056,101.3C1088,96,1120,160,1152,186.7C1184,213,1216,203,1248,186.7C1280,171,1312,149,1344,122.7C1376,96,1408,64,1424,48L1440,32L1440,0L1424,0C1408,0,1376,0,1344,0C1312,0,1280,0,1248,0C1216,0,1184,0,1152,0C1120,0,1088,0,1056,0C1024,0,992,0,960,0C928,0,896,0,864,0C832,0,800,0,768,0C736,0,704,0,672,0C640,0,608,0,576,0C544,0,512,0,480,0C448,0,416,0,384,0C352,0,320,0,288,0C256,0,224,0,192,0C160,0,128,0,96,0C64,0,32,0,16,0L0,0Z"></path></svg>
	<div class="navigation">
		<div class="brand">
			<h1><i>Espace Formateur<i></h1>
		</div>
		<div class="toggle">
			<i class="fas fa.bars">
		</div>
		<div class="nav-menu">
			<div class="close">
			</div>
			
		</div>
	</div>
	<div class="container">
		<div class="photo">
			<img src="undraw_dashboard_nklg.svg">
		</div>
		<div class="form-cont">
			<div class="inner-form">
			<img src="undraw_male_avatar_323b.svg" alt="avatar">
			<div class="social-login">
				<ul>
					<li><a href="#"><i class="fab fa-facebook-square"></i></a></li>

					<li><a href="#"><i class="fab fa-instagram-square"></i></a></li>
					<li><a href="#"><i class="fab fa-twitter-square"></i></a></li>
				</ul>	
			</div>
			<div class="input-area">
                            <form action="auhentification.jsp" method="post">
					<div>
						<i class="fas fa-envelope"></i>
                                                <input type="text" name="user" placeholder="User" required="">
					</div>

					<div>
						<i class="fas fa-lock"></i>
                                                <input type="password" name="pass" placeholder="Password" required="">
					</div>
                                <input class="btn" type="submit" value="Login" >
                                
                                        <label class="erre">
                                            <% 
                                                if(request.getAttribute("erreur")!=null){%>
                                                 <%=request.getAttribute("erreur")%>
                                                <%}%></label>
				</form>
			    </div>
			</div>
		</div>
	</div>
	</section>
</body>
</html>
