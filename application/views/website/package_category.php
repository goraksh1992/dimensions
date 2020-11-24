<div class="page-header">
    <div class="page-header-carousel owl-carousel owl-theme">
        <?php if(!empty($banner)){ ?>
            <?php foreach($banner as $value): ?>
                <div class="carouselItem">
                    <div class="carousel-item-img" style="background-image: url(<?= (!empty($value->image)?base_url($value->image):base_url('assets_web/img/placeholder/banner_slider.png'))?>)"></div>
                </div>
            <?php endforeach; ?>
        <?php }?>
    </div>
    <div class="page-header-content">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-3 d-none d-lg-block">
                    <a href="" class="carousel-item-content">
                        <h3><?= display('you_need_help')?></h3>
                        <div>
                            <?php 
                            if(!empty($setting->phone)){
                                $phone = explode(",",$setting->phone);
                                echo isset($phone[1]) ? $phone[1] : '1234567890';;
                             }
                            ?>
                        </div>
                    </a>
                </div>
                <div class="col-md-12 col-lg-9">
                    <div class="row align-items-center">
                        <div class="col-md-8">
                            <div class="header-text">
                                <h2><?= (!empty($section->title)?$section->title:null)?></h2>
                                <p><?= (!empty($section->description)?$section->description:null)?></p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <nav class="breadcrumbs">
                                <ol class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item"><a href="<?= base_url()?>"><?= display('home')?></a></li>
                                    <li class="breadcrumb-item active"><?= display('packages')?></li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.Page header -->
<div class="package-list pb-70">
    <div class="container">
        <section class="grid">
          <?php 
            if(!empty($package_category)){
                foreach ($package_category as $category) {
            ?>
            <div class="grid__item">
                <h2 class="title title--preview"><?= $category->category_name;?></h2>
                <!-- <span class="dr-name">Special Code : <?= $category->category_name;?></span>
                <div class="loader"></div> -->
                <div class="meta meta--preview">
                    <!-- <img class="meta__avatar" src="<?= (!empty($category->category_image_path)?base_url($category->category_image_path):base_url('assets_web/img/placeholder/profile.png'))?>" alt="author01" />  -->
                    <span class="meta__avatar box-icon"><i class="fa fa-medkit" aria-hidden="true" style="font-size: 100px; color: #fa75ae;"></i></span>
                </div>
                <!-- <div class="loader"></div> -->
                <!-- <span class="dr-name">Price : <?= $package->package_price; ?></span>
                <span class="dr-name">Special Price : <?= $package->package_special_price;?></span>
                <span class="dr-name">Package Slots : <?= $package->package_slots;?></span>
                <div class="loader"></div> -->
                <a href="<?php echo base_url('packages/category/'.$category->category_id);?>" class="btn btn-block btn-primary">View Packages</a>
            </div>
            <?php   
               }
            }
            ?>
            <div class="page-meta">
                <!--<span>Load more...</span>-->
                <nav aria-label="Page navigation">
                    <?= $links;?>
                </nav>
            </div>
        </section>
    </div>
</div>