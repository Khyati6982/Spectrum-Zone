<?php
?>
<div class="header-area">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="user-menu">
                    <ul>
                        <?php
                        if(isset($_SESSION['email']) == ''){
                            ?>
                            <li><a href="<?php echo base_url() ?>index.php/Welcome/login"><i class="fa fa-user"></i> Login Or Register</a></li>
                            <?php
                        }
                        ?>
                       
                       <?php
                            if(isset($_SESSION['email'])){
                                if(!$_SESSION['email'] == ''){
                                    ?>
                                    <li><a href="<?php echo base_url() ?>index.php/Cart/viewCart"><i class="fa fa-shopping-cart"></i> My Cart</a></li>
                                    <?php

                                }
                                
                            }
                        ?>

                    </ul>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End header area -->

<div class="site-branding-area">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="logo">
                    <h1><a href="<?php echo base_url() ?>index.php/Welcome">Spectrum<span> Zone</span></a></h1>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End site branding area -->

<div class="mainmenu-area">
    <div class="container">
        <div class="row">
            <div class="navbar-header">
                <button style="float: left;border: 1px solid transparent;" type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span  class="sr-only">Toggle navigation</span>
                    <span style="color: white;"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class=""><a href="<?php echo base_url() ?>index.php/Welcome">Home</a></li>
                    <li><a href="<?php echo base_url() ?>index.php/Welcome/shop">Shop page</a></li>
                </ul>
        
                <?php
                if(isset($_SESSION['email'])) {
                ?>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">Welcome : <?php echo $_SESSION['dis_name'] ?></a></li>
                    <li><a href="<?php echo base_url() ?>index.php/Login/logout">Log out</a></li>
                    <?php
                    }

                    if(isset($_SESSION['status'])) {
                        if($_SESSION['status'] == 'admin') {
                            ?>
                            <li><a href="<?php echo base_url() ?>index.php/Admin">Admin panel</a></li>
                            <?php
                        }
                    }
                    ?>
                </ul>
            </div>
        </div>
    </div>
</div> <!-- End mainmenu area -->
