<?php

@include 'config.php';

session_start();{
  $user_name = $_SESSION['user_name'];
  
  $sqll = "SELECT * FROM selec_pdt WHERE name='$user_name'";
  $nelly=mysqli_query($conn, $sqll);
  $rowdata=mysqli_fetch_assoc($nelly);
  if (isset($_GET['id'])){
    // Sanitize the provided item id to prevent SQL injection attacks
    $Id = mysqli_real_escape_string($conn, $_GET['id']);
    $sql = "DELETE FROM selec_pdt WHERE id= $Id";
    if (mysqli_query($conn, $sql)) {
      // $error[] = 'Record deleted successfully';
 } else {
    //  $error[] = 'There was a problem deleting the record';
 }
  }
};
?>
<!DOCTYPE html>
<html>

    <head>
        <!-- Basic -->
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <!-- Mobile Metas -->
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <!-- Site Metas -->

        <title>Fragrance Haven</title>

        <!-- slider stylesheet -->
        
 <link
            rel="stylesheet"
            type="text/css"
            href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css"/>
        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
   

        <!-- fonts style -->

        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet"/>
        <link href="product/product.css" rel="stylesheet"/>
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet"/>
        <link rel="stylesheet" href="./cart/cart.css">
        <link href="cart.css" rel="stylesheet" type="text/css"></head>

</head>

<body class="">

    <!-- nav section -->

<section class="header">
    <a href="home.html" class="logo">Fragrance Haven</a>
    <nav class="navbar">
        <a href="index.html">Home</a>
        <a href="about.html">About</a>
        <a href="product.php">Products</a>
        <a href="mycart.php">My Cart</a>
        <a href="#"><?php echo $_SESSION['user_name']?></a>
        <a href="logout.php">Logout</a>
    </nav>
</section>
    <!-- end nav section -->

    <!-- fruit section -->

    <section class="fruit_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <hr>
                <h2>
                    My Cart
                </h2>
            </div>
        </div>
        <div class="container-fluid">
            <div class="basket">

                <div class="basket-labels">
                    <ul>
                        <li class="item item-heading">Item</li>
                        <li class="price">Price</li>
                        <li class="quantity">Quantity</li>
                        <li class="subtotal">Subtotal</li>
                    </ul>
                </div>
                <?php
        // while ($row = mysqli_fetch_array($thiss)) 
        while($row = $nelly->fetch_assoc()) 
        {    
        ?>
                <div class="basket-product">
                    <div class="item">
                        <div class="product-image">
                            <img
                                src="<?php echo $row['image']?>"
                                alt="Placholder Image 2"
                                class="product-frame">
                        </div>
                        <div class="product-details">
                            <h1>
                                <strong>
                                    <span class="item-quantity">1 x
                                        <p>
                                            <strong><?php echo $row['product_name']?></strong>
                                        </p>
                                        <p>Product Code - <?php echo $row['id'] ?></p>
                                    </div>
                                </div>
                                <div class="price"><?php echo $row['product_price'] ?></div>
                                <div class="quantity">
                                    <input type="number" value="1" min="1" class="quantity-field">
                                </div>
                                <div class="subtotal"><?php echo $row['product_price'] ?></div>
                                <div class="btn" style="margin-left: -103px;margin-top: 107px;" >
                                    <button><a style="color:black;" href='mycart.php?id=<?php echo $row['id'] ?>'>
                                Remove
                                </a></button>
                                </div>
                            </div>
                            <?php
                        }
                        ?>
                        </div>

                     
                        <aside>
                            <div class="summary">
                                <div class="summary-total-items">
                                    <span class="total-items"></span>
                                    Items in your Bag</div>
                                <!-- <div class="summary-subtotal">
                                    <div class="subtotal-title">Subtotal</div>
                                    <div class="subtotal-value final-value" id="basket-subtotal">130.00</div>
                                    <div class="summary-promo hide">
                                        <div class="promo-title">Promotion</div>
                                        <div class="promo-value final-value" id="basket-promo"></div>
                                    </div>
                                </div> -->
              
                                <div class="summary-total">
                                    <div class="total-title">Total</div>
                                    <div class="total-value final-value" id="baasket-total">
                                      <?php
                                      $sql = "SELECT SUM(product_price) AS total_price FROM selec_pdt WHERE name='$user_name'";
                                      $result = $conn->query($sql);
                                      
                                      if ($result->num_rows > 0) {
                                          // output data of each row
                                          while($roww = $result->fetch_assoc()) {
                                              echo $roww["total_price"];
                                          
                                      ?>
                                    </div>
                                    <?php
                                    }
                                    }
                                    ?>
                                  </div>
                                <div class="summary-checkout">
                                    <button class="checkout-cta">Go to Secure Checkout</button>
                                </div>
                            </div>
                        </aside>

                    </div>
                </section>

                <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
                <script type="text/javascript" src="js/bootstrap.js"></script>
                <script type="text/javascript" src="js/custom.js"></script>
                <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
                <script src="./cart/cart.js"></script>

            </body>

        </html>