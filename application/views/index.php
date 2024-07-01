<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Spectrum Zone</title>

    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/owl.carousel.css">
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/style.css">
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/responsive.css">

</head>
<body>

<?php
include "include/head.php";
?>

<div class="slider-area">
    <div class="zigzag-bottom"></div>
    <div id="slide-list" class="carousel carousel-fade slide" data-ride="carousel">

        <div class="slide-bulletz">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ol class="carousel-indicators slide-indicators">
                            <li data-target="#slide-list" data-slide-to="0" class="active"></li>
                            <li data-target="#slide-list" data-slide-to="1"></li>
                            <li data-target="#slide-list" data-slide-to="2"></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <div class="single-slide">
                    <div class="slide-bg slide-one"></div>
                    <div class="slide-text-wrapper">
                        <div class="slide-text">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-6">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="single-slide">
                    <div class="slide-bg slide-two"></div>
                    <div class="slide-text-wrapper">
                        <div class="slide-text">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-6">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="single-slide">
                    <div class="slide-bg slide-three"></div>
                    <div class="slide-text-wrapper">
                        <div class="slide-text">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-6">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div> <!-- End slider area -->

<div class="promo-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="single-promo">
                    <i class="fa fa-refresh"></i>
                    <p>7 Days return</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-promo">
                    <i class="fa fa-truck"></i>
                    <p>Free Shipping</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-promo">
                    <i class="fa fa-lock"></i>
                    <p>Secure Payments</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="single-promo">
                    <i class="fa fa-gift"></i>
                    <p>New products Weekly</p>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End promo area -->

<div class="maincontent-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="latest-product">
                    <h2 class="section-title"><b>Products</b></h2>
                    <div class="product-carousel">

                        <?php
                        if(isset($prod)){
                            foreach ($prod as $row){
                                ?>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img style='height:250px; width:300px' src="<?php echo base_url()?>uploads/<?php echo $row->file_name ?>" alt="">
                                        <div class="product-hover">
                                            <a href="<?php echo base_url()?>index.php/Cart?id=<?php echo $row->p_id ?>" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="<?php echo base_url() ?>index.php/Welcome/single?id=<?php echo $row->p_id ?>" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="#"><?php echo $row->product_name ?></a></h2>

                                    <div class="product-carousel-price">
                                        <ins>Rs. <?php echo $row->product_price ?></ins>
                                    </div>
                                </div>
                                <?php
                            }
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End main content area -->

<div class="brands-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="brand-wrapper">
                    <h2 class="section-title"><b>Brands</b></h2>
                    <div class="brand-list">
                        <img src="<?php echo base_url() ?>assets/images/creative.png" alt="Creative Logo">
                        <img src="<?php echo base_url() ?>assets/images/sam.png" alt="Samsung Logo">
                        <img src="<?php echo base_url() ?>assets/images/lg.png" alt="LG Logo">
                        <img src="<?php echo base_url() ?>assets/images/acer.png" alt="Acer Logo">
                        <img src="<?php echo base_url() ?>assets/images/logitech.png" alt="Logitech Logo">
                        <img src="<?php echo base_url() ?>assets/images/lenovo.png" alt="Lenovo Logo">
                        <img src="<?php echo base_url() ?>assets/images/gigabyte.png" alt="Gigabyte Logo">
                        <img src="<?php echo base_url() ?>assets/images/corsair.png" alt="Corsair Logo">
                        <img src="<?php echo base_url() ?>assets/images/kingston.png" alt="Kingston Logo">
                        <img src="<?php echo base_url() ?>assets/images/seagate.png" alt="Seagate Logo">
                        <img src="<?php echo base_url() ?>assets/images/wd.png" alt="Western Digital Logo">
                        <img src="<?php echo base_url() ?>assets/images/noctua.png" alt="Noctua Logo">
                        <img src="<?php echo base_url() ?>assets/images/arctic.png" alt="Arctic Logo">
                        <img src="<?php echo base_url() ?>assets/images/msi.png" alt="MSI Logo">
                        <img src="<?php echo base_url() ?>assets/images/thermaltake.png" alt="Thermaltake Logo">
                        <img src="<?php echo base_url() ?>assets/images/asus.png" alt="Asus Logo">
                        <img src="<?php echo base_url() ?>assets/images/amd.png" alt="AMD Logo">
                        <img src="<?php echo base_url() ?>assets/images/intel.png" alt="Intel Logo">
                        <img src="<?php echo base_url() ?>assets/images/zebronics.png" alt="Zebronics Logo">
                        <img src="<?php echo base_url() ?>assets/images/dell.png" alt="Dell Logo">
                        <img src="<?php echo base_url() ?>assets/images/hp.png" alt="HP Logo">
                        <img src="<?php echo base_url() ?>assets/images/chiptronex.png" alt="Chiptronex Logo">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
include "include/footer.php";
?>

<!-- Latest jQuery form server -->
<script src="https://code.jquery.com/jquery.min.js"></script>

<!-- Bootstrap JS form CDN -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<!-- jQuery sticky menu -->
<script src="<?php echo base_url() ?>assets/js/owl.carousel.min.js"></script>
<script src="<?php echo base_url() ?>assets/js/jquery.sticky.js"></script>

<!-- jQuery easing -->
<script src="<?php echo base_url() ?>assets/js/jquery.easing.1.3.min.js"></script>

<!-- Main Script -->
<script src="<?php echo base_url() ?>assets/js/main.js"></script>
</body>
</html>