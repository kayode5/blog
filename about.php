<?php include 'include/header.php' ?>
<body id="bg">
<div class="page-wraper">
<div id="loading-area"></div>
	
<?php include 'include/top.php'?>
	<!-- header -->
    <header class="site-header mo-left header-full header">
		<!-- main header -->
		<div class="sticky-header main-bar-wraper navbar-expand-lg">
			<div class="main-bar clearfix ">
				<div class="container-fluid">
					<!-- website logo -->
					<div class="logo-header mostion">
						<a href="index.php"><img src="images/logo-black.png" alt=""></a>
					</div>
					
					<!-- nav toggle button -->
					<button class="navbar-toggler collapsed navicon justify-content-end" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
						<span></span>
						<span></span>
						<span></span>
					</button>
					
					<!-- extra nav -->
					<div class="extra-nav">
						<div class="extra-cell">
							<ul>
								<li class="search-btn">
									<a id="quik-search-btn" href="javascript:;"><i class="ti-search m-r10"></i><span>Search</span></a>
								</li>
								
							</ul>
						</div>
					</div>
					
					<!-- Quik search -->
					<div class="dlab-quik-search">
						<form action="#">
							<input name="search" value="" type="text" class="form-control" placeholder="Search...">
							<span id="quik-search"><i class="ti-search"></i></span>
						</form>
						<span class="search-remove" id="quik-search-remove"><i class="ti-close"></i></span>
					</div>
					
					<!-- main nav -->
					<?php include 'include/menu.php'?>
				</div>
			</div>
		</div>
    </header>
    <!-- header END -->
	<!-- Content -->
	<div class="page-content bg-white">
		<!-- Blog Post -->
		<div class="section-full bg-white content-inner">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 wow fadeIn" data-wow-duration="2s" data-wow-delay="0.2s">
						<div class="dlab-post-media m-b50">
							<a href="post-standart.html"><img src="images/about/pic4.jpg" alt=""></a>
						</div>
					</div>
					<div class="col-lg-8 col-md-8 col-sm-12 col-12">
						<div class="blog-post blog-single">
							<div class="dlab-post-info">
								<div class="dlab-post-text text mt-0">
									<h2><span>About Me</span></h2>
									<p class="first-content"> My name is Olly, i am a level 9 student in National College of Ireland. i am also a fashion blogger and occassional a model. I believe life can be seen and understood through fashion and i will love to show the world this view. </p>
								</div>
								<ul class="social-icon">
									<li><a href="javascript:void(0);" class="btn radius-xl"><i class="fa fa-instagram"></i></a></li>
									<li><a href="javascript:void(0);" class="btn radius-xl"><i class="fa fa-twitter"></i></a></li>
									<li><a href="javascript:void(0);" class="btn radius-xl"><i class="fa fa-facebook"></i></a></li>
									<li><a href="javascript:void(0);" class="btn radius-xl"><i class="fa fa-pinterest-p"></i></a></li>
									<li><a href="javascript:void(0);" class="btn radius-xl"><i class="fa fa-youtube-play"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
						<div class="col-lg-4 col-md-4 col-sm-12 col-12">
						<div class="side-bar sticky-top">
							<div class="widget widget-author wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.2s">
								<h6 class="widget-title">About Me</h6>
								<div class="author-profile-info">
									<div class="author-profile-pic">	
										<a href="javascript:void(0);">
											<img src="images/ola.jpg" alt="Profile Pic" width="130" height="130">
										</a>
									</div>
									<div class="author-profile-content">
										<h6 class="title">Hi. I'm Olaitan</h6>
										<p>I am a fashionist based in Ireland.</p>
										<ul class="social-icon m-b0">
											<li><a href="javascript:void(0);" class="btn radius-xl"><i class="fa fa-instagram"></i></a></li>
											<li><a href="javascript:void(0);" class="btn radius-xl"><i class="fa fa-twitter"></i></a></li>
											<li><a href="javascript:void(0);" class="btn radius-xl"><i class="fa fa-facebook"></i></a></li>
											<li><a href="javascript:void(0);" class="btn radius-xl"><i class="fa fa-pinterest-p"></i></a></li>
											<li><a href="javascript:void(0);" class="btn radius-xl"><i class="fa fa-youtube-play"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="widget recent-posts-entry wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.8s">
								<h6 class="widget-title"><span>Popular Posts</span></h6>
								<div class="widget-post-bx">
								<?php
					include 'admin/connection.php';
               			$query=mysqli_query($con,"SELECT * FROM post order by 1 DESC LIMIT 0,3");
                        			while($row=mysqli_fetch_array($query))
                        				{ $id = $row['id'];
                        				$title = $row ['title'];
                        				$date = $row['date'];
                        				$newDate = date("d M Y", strtotime($date));
    									$new_date = date('dS F, Y', strtotime($newDate)); ?>
								
									<div class="widget-post clearfix">
										<div class="dlab-post-media">
											<img src="admin/<?php echo $row['image'] ?>" alt="">
										</div>
										<div class="dlab-post-info">
											<div class="dlab-post-meta">
												<ul>
													<li class="post-category"><a href="javascript:void(0);">Lifestyle</a></li>
													<li class="post-date">at <span><?php echo $new_date ?></span></li>
												</ul>
											</div>
											<h6 class="post-title"><a href="single_post.php?id=<?php echo $id ?>"><?php echo $title ?></a></h6>
										</div>
									</div>
									<?php } ?>
									
								</div>
							
							</div>
							<div class="widget widget_categories wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.2s">
								<h6 class="widget-title"><span>Categories</span></h6>
								<ul>
										<?php
										include 'admin/connection.php';
									
               							$query=mysqli_query($con,"SELECT * FROM category");
                        					while($row=mysqli_fetch_array($query))
                        					{ $id = $row['id'];
                        					$category = $row['category']; ?>
									<li><a><?php echo $category ?></a> <span class="badge"> </span> </li>
								<?php } ?>
								</ul>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Blog Post End -->
		<!-- Instagram Post Carousel -->
<?php include 'include/footer.php' ?>