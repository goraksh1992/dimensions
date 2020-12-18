
<style type="text/css">
    .card {
    position:relative;
    top: 50%;
    left: 50%;
    padding-right: 10px;
}
</style>
<div class="partners-content" style="padding-left: 69px;">
    <div class="container">
        <div class="row align-items-center center">
            <?php
             if(!empty($partners)):
                foreach ($partners as $partner) :
            ?>
            <div class="col-6 col-sm-4 col-md-2">
                <!-- <div class="partner-logo">
                    <a href="<?= $partner->url;?>"><img src="<?= (!empty($partner->image)?base_url($partner->image):base_url('assets_web/img/placeholder/partner.png'));?>" title="<?= $partner->name;?>" class="img-fluid"></a>

					<h3 class="title" style="font-weight: 700;font-size: 17px;"><?php $name = strtolower($partner->name); echo ucfirst($name); ?></h3>
                </div> -->
                <div class="card" style="width: 12rem; height: 14.5rem; border: none;">
                  <img class="card-img-top" src="<?= (!empty($partner->image)?base_url($partner->image):base_url('assets_web/img/placeholder/partner.png'));?>" alt="Card image cap" style="height: 130px;">
                  <div class="card-body">
                    <h5 class="card-title" style="text-transform: capitalize;"><?php $name = strtolower($partner->name); echo $name; ?></h5>
                    <!-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a> -->
                  </div>
                </div>
            </div>
            <?php 
                endforeach;
            endif;
            ?>
        </div>
    </div>
</div>