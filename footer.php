    <!-- Footer -->
    <footer>
        <div class="csftc1 container">
            <div class="csrow1 row">
                <div class="col-md-2">
                    <img src="./Content/img/Logo/fender_white_logo.png" alt="">
                </div>
                <div class="col-md-4">
                    <h1>Don't miss out</h1>
                    <p class="text-secondary">Be the first to know about new products. ffeatured content, exclusive
                        offers and giveaways.</p>
                </div>
                <div class="col-md-6">
                    <form class="csft1">
                        <div class="form-group">
                            <div class=" csft2 d-flex" style="display: flex;">
                                <input id="email" placeholder="ENTER EMAIL ADDRESS">
                                <button type="submit" class="btn btn-danger">SIGN UP</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="row csft2 container">
                <!-- empty -->
                <!-- info -->
                <div class="col-md-2">
                    <p class="csp">Products</p>
                    <p><a href="#">Electric Guitars</a></p>
                    <p><a href="#">Stratocaster</a></p>
                    <p><a href="#">Guitar Amplifiers</a></p>
                    <p><a href="#">Acoustic Guitars</a></p>
                    <p><a href="#">Fender Custom Shop</a></p>
                    <p><a href="#"> Basses</a></p>
                    <p><a href="#">Mod Shop</a></p>
                </div>
                <div class="col-md-2">
                    <p class="csp">Company</p>
                    <p><a href="#">About</a></p>
                    <p><a href="#">Contact Us</a></p>
                    <p><a href="#">Careers</a></p>
                    <p><a href="#">Newsroom</a></p>
                    <p><a href="#">Fender Play Foundation</a></p>
                    <p><a href="#">Affiliate Program</a></p>
                </div>
                <div class="col-md-2">
                    <p class="csp">Products</p>
                    <p><a href="#">Electric Guitars</a></p>
                    <p><a href="#">Stratocaster</a></p>
                    <p><a href="#">Guitar Amplifiers</a></p>
                    <p><a href="#">Acoustic Guitars</a></p>
                    <p><a href="#">Fender Custom Shop</a></p>
                    <p><a href="#"> Basses</a></p>
                    <p><a href="#">Mod Shop</a></p>
                </div>
                <div class="col-md-2">
                    <p class="csp">More from Fender</p>
                    <p><a href="#">Online Guitar Tuner</a></p>
                    <p><a href="#">Tuner App</a></p>
                    <p><a href="#">Fender.com Gift Cards</a></p>
                    <p><a href="#">Fender Play Prepaid Cards</a></p>
                    <p><a href="#">Discount</a></p>
                    <p><a href="#">Fender Play ID.me Heroes</a></p>
                    <p><a href="#">Fender Play Essential</a></p>
                    <p><a href="#">Worker Discount</a></p>
                </div>
                <div class="col-md-2">
                    <p class="csp">Products</p>
                    <p><a href="#">Electric Guitars</a></p>
                    <p><a href="#">Stratocaster</a></p>
                    <p><a href="#">Guitar Amplifiers</a></p>
                    <p><a href="#">Acoustic Guitars</a></p>
                    <p><a href="#">Fender Custom Shop</a></p>
                    <p><a href="#">Basses</a></p>
                    <p><a href="#">Mod Shop</a></p>
                </div>
            </div>
            <div class="container csft3">
                <div class="d-flex">
                    <div>
                        <button class="btn"><img src="./Content/img/Logo/united-states.png" alt=""> UNITED STATES</button>
                    </div>
                    <div class="d-flex csicft1 ms-auto">
                        <a href="a"><i class="bi bi-facebook"></i></a>
                        <a href=""><i class="bi bi-twitter"></i></a>
                        <a href=""><i class="bi bi-instagram"></i></a>
                        <a href=""><i class="bi bi-youtube"></i></a>
                    </div>
                </div>
            </div>
            <div class="container csft4">
                <p class="text-center mt-3">Copyright ©2024. Wyshop Musical Instruments Corporation. All Rights Reserved.</p>
                
            </div>
        </div>
        <!-- copyright part -->
    </footer>
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>
		<script src="js/actions.js"></script>
		<script src="js/sweetalert.min"></script>
		<script src="js/jquery.payform.min.js" charset="utf-8"></script>
    <script src="js/script.js"></script>
		<script>var c = 0;
        function menu(){
          if(c % 2 == 0) {
            document.querySelector('.cont_drobpdown_menu').className = "cont_drobpdown_menu active";    
            document.querySelector('.cont_icon_trg').className = "cont_icon_trg active";    
            c++; 
              }else{
            document.querySelector('.cont_drobpdown_menu').className = "cont_drobpdown_menu disable";        
            document.querySelector('.cont_icon_trg').className = "cont_icon_trg disable";        
            c++;
              }
        }
           
		
</script>
    <script type="text/javascript">
		$('.block2-btn-addcart').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});

		$('.block2-btn-addwishlist').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");
			});
		});
	</script>
	
