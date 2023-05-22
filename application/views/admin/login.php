<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<style>
.main-head{
    height: 150px;
    background: #FFF;
   
}
.sidenav {
    height: 100%;
    background-color: #961b1f;
    overflow-x: hidden;
    padding-top: 20px;
}
.main {
    padding: 0px 10px;
}

@media screen and (max-height: 450px) {
    .sidenav {padding-top: 15px;}
}

@media screen and (max-width: 450px) {
    .login-form{
        margin-top: 10%;
    }

    .register-form{
        margin-top: 10%;
    }
}

@media screen and (min-width: 768px){
    .main{
        margin-left: 40%; 
    }

    .sidenav{
        width: 40%;
        position: fixed;
        z-index: 1;
        top: 0;
        left: 0;
    }

    .login-form{
        margin-top: 50%;
    }

    .register-form{
        margin-top: 20%;
    }
}


.login-main-text{
    margin-top: 20%;
    /*padding: 60px;*/
    color: #fff;
}

.login-main-text h2{
    font-weight: 300;
}

.btn-black{
    background-color: #000 !important;
    color: #fff;
}
.logo img{
    background: #fff;
    padding: 5px;
    border-radius: 15%;
}
</style>
</head>
<body>
<div class="sidenav">
         <div class="login-main-text text-center logo">
            <img src="<?php echo base_url();?>site_assets/images/logo.png" alt="">
            <h2>Login Here </h2>
            <p>Best Sweet Shop In The World</p>
         </div>
      </div>
      <div class="main">
          <?php 
            if($this->session->flashdata('message')){
          ?>
          <h6 style="color:red;"><?php echo $this->session->flashdata('message');?></h6>
          <?php } ?>
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
               <form method="post" action="<?php echo base_url('Admin_Controller/authentication');?>">
                  <div class="form-group">
                     <label>User Name</label>
                     <input type="text" value="<?php echo set_value('a_username');?>" name="a_username" class="form-control" placeholder="User Name">
                     <h6 style="color:red;"><?php echo form_error('a_username');?></h6>
                  </div>
                  <div class="form-group">
                     <label>Password</label>
                     <input type="password" name="a_password" class="form-control" placeholder="Password">
                     <h6 style="color:red;"><?php echo form_error('a_password');?></h6>
                  </div>
                  <button type="submit" class="btn btn-black">Login</button>
                  
               </form>
            </div>
         </div>
      </div>
</body>
</html>