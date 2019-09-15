<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="icon" type="image/x-icon" href="favicon.ico">
<style type="text/css">
  .container .container-width {
        width: 100%;
    }
    
    .contenerdor-general {
        border: black solid 2px;
        position: absolute;
        width: 100%;
        padding: 10px;
        overflow: hidden;
    }
    
    .profesor {
        width: 50%;
        height: 100%;
        margin: 20px;
        border: red solid 2px;
    }
    
    .alumno {
        widows: 50%;
        height: 100%;
        margin: 20px;
        border: red 2px solid;
    }
    
    .pie {
        position: relative;
        border: red 2px solid;
        width: 100%;
    }
    
    div div div:hover .foto-profe {
        transform: scale(0.5);
    }
    
    .foto-profe {
        transition: all 0.4s ease;
    }
    
    div div div:hover .foto-alumno {
        transform: scale(0.5);
    }
    
    .foto-alumno {
        transition: all 0.4s ease;
    }
    
    .panel-profe {
        width: 100%;
        height: auto;
        background-color: grey;
        justify-content: center;
        border: black solid 5px;
    }
    
    .panel-alumno {
        width: 100%;
        height: auto;
        background-color: grey;
        border: black solid 5px;
        justify-content: center;
    }
 
.login-popup-heading>h4 {
    color: dark;
    font-size: 18px;
    line-height: 30px;
}

.new_reg_popup,
.new_login_popup {
    border-radius: 2px;
    min-height: 332px;
    width: 500px;
    margin: 0px auto;
}

.login-popup-btn {
    background: none;
    border: none;
    border-radius: 25px;
    color: #fff;
    display: block;
    font-size: 18px;
    height: 38px;
    line-height: 28px;
    margin: 20px auto 5px;
    width: 150px;
    -webkit-transition: all 700ms ease;
    -moz-transition: all 700ms ease;
    -ms-transition: all 700ms ease;
    -o-transition: all 700ms ease;
}

a {
    color: dark;
    font-size: 18px;
}





</style>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>


<div class="container container-width">
    <div class="row">
        <div class="col">
            <button type="button" class="btn btn-primary bg-transparent border-0" data-toggle="modal" data-target="#loginModal">
              <img class="foto-alumno" src="http://www.stgeorges.co.uk/sites/default/files/English%20Teacher%20Training%20St%20George%20International%20school%20of%20English.png">
            </button>
        </div>
        <div class="col">
            <button type="button" class="btn btn-primary bg-transparent border-0" data-toggle="modal" data-target="#loginModal">
                <img class="foto-alumno" src="https://static.wixstatic.com/media/998968_b393ce9b862d44c6972c8cb343b3fb5a.png/v1/fill/w_402,h_495,al_c,q_80/998968_b393ce9b862d44c6972c8cb343b3fb5a.webp">
              </button>
        </div>
    </div>
</div>


<div class="modal fade bd-example-modal-lg" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">LOGIN</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="login-popup-wrap new_login_popup">
                <div class="login-popup-heading text-center">
                    <h4><i class="fa fa-lock" aria-hidden="true"></i> Login </h4>
                </div>
                <!--<form accept-charset="utf-8" method="post" action="">-->
                <form id="loginMember" role="form" action="" method="post">
                    <div class="form-group">
                        <input (change)="test($event)" type="text" class="form-control" id="user_id" placeholder="usuario" name="user_id" required>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
                    </div>
                    <button (click)="test($event)" class="btn btn-default login-popup-btn bg-dark" name="submit" value="1">Login
                 
                  /*linkear para que vaya a la vista del formulario*/
                    
                    </button>
                </form>
                <div class="form-group text-center">
                    <a class="pwd-forget" href="javascript:void(0)" id="open_forgotPassword">¿Olvidaste tu contraseña?</a>
                </div>
                <div class="text-center">¿No estas registrado?<a href="registroAlumno.jsp">Registrate aquí</a></div>
            </div>
        </div>
    </div>
</div>
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
     integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" 
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>



</body>
</html>