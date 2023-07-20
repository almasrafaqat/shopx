<div class="small-header container mt-2">
    <div class="row">
        <div class="col-12 col-md-6">
            <?php wp_nav_menu( array(
                'theme_location' => 'small-header-nav',
                'menu_id'       => 'small-header-nav',
                'menu_class'    => 'small-nav',
                'container'     => 'ul'
            ) ) ?>
        </div>
       
        <div class="col-12 col-md-6">
            <ul class="social-icons">
                <li><a href="#"> <i class="fa-brands fa-facebook"></i></a></li>
                <li><a href="#"> <i class="fa-brands fa-twitter"></i></a></li>
                <li><a href="#"> <i class="fa-brands fa-instagram"></i></a></li>
                <li><a href="#"> <i class="fa-brands fa-youtube"></i></a></li>
            </ul>
        </div>
    </div>
</div>
 
<!-- main header -->

<div class="main-header container">
    <div class="row align-items-center">
        <div class="site-branding col-md-3">
            <span href="javascript:" id="desktop-mega-toggle" class="mega-menu-toggle"><i class="fas fa-bars"></i></span>
            <?php
                if(has_custom_logo()){
                    the_custom_logo();
                }else{
                    bloginfo('name');
                }
            ?>
        </div>
        <div class="search-col col-md-6">
            <div class="wrapper d-flex">
                <div class="search-container">
                    <input type="text" id="keyword" name="keyword" placeholder="Search..." />
                </div>
                <div class="category-container">
                <select id="category" name="category">
                <option value="1">All Categories</option>
                    <option value="1">Clothes</option>
                    <option value="2">Women Dress</option>
                    <option value="3">Men Dress</option>
                    <option value="4">Kids Fashion</option>
                </select>
                </div>
               <div class="button-container">
                <button id="submit" name="submit"><i class="fa-solid fa-magnifying-glass fa-lg"></i></button>
               </div>

            </div>
        </div>
        <div class="buttons-col col-md-3">
            <ul class="action-buttons">
                <li><a href="#"><i class="fa-solid fa-store"></i></a</li>
                <li><a href="#"><i class="fa-regular fa-heart"></i></a></li>
                <li><a href="#"><i class="fa-regular fa-user"></i></a></li>
                <li><a href="#"><i class="fa-solid fa-bag-shopping"></i></a></li>
            
            </ul>
        </div>
    </div>
</div>