  		<div class="section-full insta-post-carousel owl-carousel owl-none wow fadeIn lightgallery" data-wow-duration="2s" data-wow-delay="0.6s">
				<?php
					include 'admin/connection.php';
               			$query=mysqli_query($con,"SELECT * FROM post order by 1 DESC LIMIT 0,10");
                        			while($row=mysqli_fetch_array($query))
                        				{ $id = $row['id'];
                        				 ?>
			<div class="item">
				<span class=" dlab-img-effect" title="Title Come Here">		
					<img src="admin/<?php echo $row['image'] ?>" style="height: 230px" alt="">
				</span>
			</div>
		<?php } ?>
			
		</div>
		<!-- Blog Card Carousel End -->

    </div>
   <footer class="site-footer wow fadeIn" data-wow-duration="2s" data-wow-delay="0.8s">
        <div class="footer-top">
            <div class="container">
				<div class="row">
					<div class="col-md-4 align-self-center">
						<ul class="footer-link m-b0 p-l0">
							<li><a href="index.html">Home</a></li>
							<li><a href="about-me.html">About</a></li>
							<li><a href="shop-product.html">Shop</a></li>
						</ul>						
					</div>
					<div class="col-md-4">
						<div class="footer-logo">
							<a href="index.html"><img src="images/logo.png" alt=""/></a>
						</div>
					</div>
					<div class="col-md-4 align-self-center">
						<ul class="social-icon m-b0 p-l0">
							<li><a href="javascript:void(0);" class="btn radius-xl"><i class="fa fa-instagram"></i></a></li>
							<li><a href="javascript:void(0);" class="btn radius-xl"><i class="fa fa-twitter"></i></a></li>
							<li><a href="javascript:void(0);" class="btn radius-xl"><i class="fa fa-facebook"></i></a></li>
							<li><a href="javascript:void(0);" class="btn radius-xl"><i class="fa fa-youtube-play"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
        </div>
		<div class="footer-bottom">
			<div class="container">
				<p>© 2020. Copyright MyDiary Template.</p>
			</div>
		</div>
    </footer>
    <!-- Footer END-->
    <button class="scroltop fa fa-chevron-up" ></button>
</div>
<!-- JAVASCRIPT FILES ========================================= -->
<script src="js/jquery.min.js"></script><!-- JQUERY.MIN JS -->
<script src="plugins/wow/wow.js"></script><!-- WOW JS -->
<script src="plugins/bootstrap/js/popper.min.js"></script><!-- BOOTSTRAP.MIN JS -->
<script src="plugins/bootstrap/js/bootstrap.min.js"></script><!-- BOOTSTRAP.MIN JS -->
<script src="plugins/bootstrap-select/bootstrap-select.min.js"></script><!-- FORM JS -->
<script src="plugins/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script><!-- FORM JS -->
<script src="plugins/magnific-popup/magnific-popup.js"></script><!-- MAGNIFIC POPUP JS -->
<script src="plugins/counter/waypoints-min.js"></script><!-- WAYPOINTS JS -->
<script src="plugins/counter/counterup.min.js"></script><!-- COUNTERUP JS -->
<script src="plugins/imagesloaded/imagesloaded.js"></script><!-- IMAGESLOADED -->
<script src="plugins/masonry/masonry-3.1.4.js"></script><!-- MASONRY -->
<script src="plugins/masonry/masonry.filter.js"></script><!-- MASONRY -->
<script src="plugins/owl-carousel/owl.carousel.js"></script><!-- OWL SLIDER -->
<script src="plugins/scroll/scrollbar.min.js"></script><!-- Scroll Bar -->
<script src="plugins/lightgallery/js/lightgallery-all.min.js"></script><!-- Lightgallery -->
<script src="js/custom.js"></script><!-- CUSTOM FUCTIONS  -->
<script src="js/dz.carousel.js"></script><!-- SORTCODE FUCTIONS -->
<script src="js/dz.ajax.js"></script><!-- CONTACT JS  -->
 <script src="js/script.js" type="text/javascript"></script>
</body>

<!-- Mirrored from news360.dexignzone.com/xhtml/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 19 Oct 2020 12:24:00 GMT -->
</html>
