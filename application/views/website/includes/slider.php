<style type="text/css">
    .animation-slide.owl-theme .owl-dots .owl-dot{

        width: 23.333333%;
    }
    .animation-slide.owl-theme .owl-dots .owl-dot span{
        width: 88%;
    }
    .animation-slide.owl-theme .owl-dots .owl-dot span:active{
       border: none !important;
   }

    .owl-theme .owl-dots .owl-dot span{
        background: #d6d6d600 !important;
    }

    .red{
        background-color:#e83e8c;
        border: 2px solid rgba(255,255,255,0.5);
    }

</style>  
<input type="hidden" class="slid" value='<?php echo json_encode($sliders); ?>'>

<div class="header-slider header-slider-preloader" id="header-slider">
    <div class="animation-slide owl-carousel owl-theme" id="animation-slide">
    <?php 
       if(!empty($sliders)){
          foreach ($sliders as $slider) {
            if($slider->position==1){
        ?>
        <!-- Slide 1-->
        <div class="item" style="background-image: url(<?= (!empty($slider->image)?base_url($slider->image):base_url('assets_web/img/placeholder/slider.png'))?>);">
            <div class="slide-table">
                <div class="slide-tablecell">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12" style="top:-90px; position:relative">
                                <div class="slide-text text-center"  >
                                    <h2><b><?= (!empty($slider->title)?$slider->title:null)?></b> </h2>
									<h2><p><?= (!empty($slider->subtitle)?$slider->subtitle:null)?></p></h2>
									<b><a href="<?= (!empty($slider->url)?$slider->url:null)?>" style="background-color: #e83e8c;" class="btn btn-primary slide-btn">View More</a></b>
									 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     <?php }elseif($slider->position==2){?>
        <!-- Slide 2-->
        <div class="item" style="background-image: url(<?= (!empty($slider->image)?base_url($slider->image):base_url('assets_web/img/placeholder/slider.png'))?>);">
            <div class="slide-table">
                <div class="slide-tablecell">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12" style="top:-90px; position:relative">
                                <div class="slide-text">
                                    <h2><b><?= (!empty($slider->title)?$slider->title:null)?></b></h2>
                                    <h2><p><?= (!empty($slider->subtitle)?$slider->subtitle:null)?></p></h2>
									<b><a href="<?= (!empty($slider->url)?$slider->url:null)?>" style="background-color: #e83e8c;" class="btn btn-primary slide-btn">View More</a></b>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php }elseif($slider->position==3){?>
        <!-- Slide 3-->
        <div class="item" style="background-image: url(<?= (!empty($slider->image)?base_url($slider->image):base_url('assets_web/img/placeholder/slider.png'))?>);">
            <div class="slide-table">
                <div class="slide-tablecell">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12" style="top:-90px; position:relative">
                                <div class="slide-text text-right">
                                    <h2><b><?= (!empty($slider->title)?$slider->title:null)?></b></h2>
                                   <h2><p><?= (!empty($slider->subtitle)?$slider->subtitle:null)?></p></h2>
									<b><a href="<?= (!empty($slider->url)?$slider->url:null)?>" style="background-color: #e83e8c;" class="btn btn-primary slide-btn">View More</a></b>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php }elseif($slider->position==4){?>
        <!-- Slide 4-->
        <div class="item" style="background-image: url(<?= (!empty($slider->image)?base_url($slider->image):base_url('assets_web/img/placeholder/slider.png'))?>);">
            <div class="slide-table">
                <div class="slide-tablecell">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12" style="top:-90px; position:relative">
                                <div class="slide-text" >
                                    <h2><b><?= (!empty($slider->title)?$slider->title:null)?></b></h2>
                                  <h2><p><?= (!empty($slider->subtitle)?$slider->subtitle:null)?></p></h2>
									<b><a href="<?= (!empty($slider->url)?$slider->url:null)?>" style="background-color: #e83e8c;" class="btn btn-primary slide-btn">View More</a></b>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php }else{}}}?>
    </div>
    <!-- /.End of slider -->
    <!-- Preloader -->
    <div class="slider_preloader">
        <div class="slider_preloader_status">&nbsp;</div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<script type="text/javascript">
    function myFunction() {

            var slider2 = $(".slid").val();
           
            obj = JSON.parse(slider2);

            $("#header-slider .owl-dots button").remove();
            var opt = "";

            $.each(obj, function(index, value){

                cls = "";
                if(index == 0){
                    cls = "red";
                }

                opt +='<button role="button" class="btn btn-primary slide-btn change '+cls+'" style="color: #fff; margin-right: 70px; border-radius:30px;">'+value.title+'</button>';
            })

            //console.log(opt);

            $("#header-slider .owl-dots").append(opt);

        }
</script>
<script>
  $(document).ready(function(){
    //alert("hhh");
     $(document).on("click", ".change", function(){
        //alert("hhh");
        $(".change").removeClass('active');
        $(".change").removeClass('red');
        $(this).addClass("red");
    });
  })

</script>