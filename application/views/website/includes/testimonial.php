
<?php 
    //$testimonial_row = array();
    //$testimonial_row = $testimonial;
    //$testimonial = array();
?>
<div class="testimonial2" style="height: 300px;">
    
   <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-10 offset-lg-1">
                <div class="testimonial2-text">
                    <span class="quotes-marks mark-left">
                        <svg xmlns="http://www.w3.org/2000/svg" width="100" height="70" viewBox="0 0 205 141">
                        <g>
                        <path d="M69.8 60.7C82.9 69.1 89.4 80.4 89.4 94.7 89.4 108.9 85.2 120.1 76.8 128.3 68.4 136.4 57.9 140.5 45.3 140.5 32.7 140.5 22.1 136.5 13.5 128.6 4.8 120.7 0.5 110.3 0.5 97.5 0.5 84.6 4.7 72.1 13.1 60L54.4 0.5 97.1 0.5 69.8 60.7ZM176.9 60.7C190 69.1 196.5 80.4 196.5 94.7 196.5 108.9 192.3 120.1 183.9 128.3 175.5 136.4 165 140.5 152.4 140.5 139.8 140.5 129.2 136.5 120.6 128.6 111.9 120.7 107.6 110.3 107.6 97.5 107.6 84.6 111.8 72.1 120.2 60L161.5 0.5 204.2 0.5 176.9 60.7Z"></path>
                        </g>
                        </svg>          
                    </span>
                    <span class="quotes-marks mark-right">
                        <svg xmlns="http://www.w3.org/2000/svg" width="100" height="70" viewBox="0 0 205 141">
                        <g>
                        <path d="M69.8 60.7C82.9 69.1 89.4 80.4 89.4 94.7 89.4 108.9 85.2 120.1 76.8 128.3 68.4 136.4 57.9 140.5 45.3 140.5 32.7 140.5 22.1 136.5 13.5 128.6 4.8 120.7 0.5 110.3 0.5 97.5 0.5 84.6 4.7 72.1 13.1 60L54.4 0.5 97.1 0.5 69.8 60.7ZM176.9 60.7C190 69.1 196.5 80.4 196.5 94.7 196.5 108.9 192.3 120.1 183.9 128.3 175.5 136.4 165 140.5 152.4 140.5 139.8 140.5 129.2 136.5 120.6 128.6 111.9 120.7 107.6 110.3 107.6 97.5 107.6 84.6 111.8 72.1 120.2 60L161.5 0.5 204.2 0.5 176.9 60.7Z"></path>
                        </g>
                        </svg>      
                    </span>
                    <!-- <h2 class="testimonial-quote mb-5">
                        <?= $testimonial[0]->quotation;?>
                    </h2> -->
                    <!-- <div class="testimonial2-author d-flex justify-content-center align-items-center">
                        <div class="testimonial2-author-name">
                           <?= $testimonial[0]->author_name;?>
                        </div>
                        <div class="testimonial2-author-link">
                            <a href="<?= $testimonial[0]->url;?>"><?= $testimonial[0]->url;?></a>
                        </div>
                    </div> -->
                </div>
            </div>
        </div>
    </div> 
    <div class="bd-example">
  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <?php $i == 1; ?>
    <div class="carousel-inner">
       
        <?php foreach( $testimonial as $item) : ?>
            <div class="carousel-item <?php if($i == 1) echo "active"; ?>">
                <!-- <img src="<?php echo base_url('assets_web/img/trn.png'); ?>" class="d-block w-100" alt="<?php echo $item->title; ?>"> -->
                <div class="carousel-caption d-block w-100" style="top: 0px;position: relative;color:#ffffff">
                <!-- <h5><?php echo $item->title; ?></h5> -->
                <h3><?php echo $item->quotation; ?></h3>
                </div>
            </div>
            <?php $i++; ?>
        <?php endforeach;?>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</div>
<style>

.carousel-caption {
    position: absolute;
    right: 15%;
    bottom: -100px;
    left: 0%;
    z-index: 997;
    padding-top: 20px;
    padding-bottom: 20px;
    color: #000;
    text-align: center;
}
..carousel-caption h5{
    color: #000;
    z-index: 999;
}
</style>