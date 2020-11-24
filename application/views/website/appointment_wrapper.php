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
                               $phone = explode(",",$setting->phone);
                               echo $phone[0];
                            ?>
                        </div>
                    </a>
                </div>
                <div class="col-md-12 col-lg-9">
                    <div class="row align-items-center">
                        <div class="col-md-8">
                            <div class="header-text">
                                <h2><?php echo display('appointment_information') ?></h2>
                                <p></p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <nav class="breadcrumbs">
                                <ol class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item"><a href="<?= base_url()?>"><?= display('home')?></a></li>
                                    <li class="breadcrumb-item active"><?= display('appointment')?></li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <div class="container"> 
        <div class="row">
            <!-- <div class="col-sm-1"></div> -->
            <div class="col-sm-12" id="PrintMe">
                <div  class="panel panel-info"> 
                    <div class="panel-heading"> 
                        <div class="row">
                            <div class="col-md-12">
                            <?php @$this->load->view('appointment/top_buttons');?>
                            </div>
                        </div>
                        <div class="row">
                            <?php @$this->load->view('appointment/doctor_details');?>
                        </div>
                    </div>

                    <div class="panel-body">  
                        <div class="row">
                            <?php @$this->load->view('appointment/patient_details');?>
                        </div>
                    </div> 
                    <?php if(isset($appointment->refund_id)) : ?>
                        <?php @$this->load->view('appointment/refund_details');?>
                    <?php endif; ?>
                    <div class="panel-footer">
                        <div class="text-center">
                            <strong><?= (!empty($setting->title)?$setting->title:null) ?></strong>
                            <p class="text-center no-print"><?= (!empty($setting->copyright_text)?$setting->copyright_text:null) ?></p>
                        </div>
                    </div>
                </div>
            </div>  
            <!-- <div class="col-sm-1"></div> -->
        </div>

        <center>
             <div class="btn-group">
                <button type="button" onclick="printContent('PrintMe')" class="btn btn-primary" align="center" ><?php echo display('print') ?></button> 
            </div>
        </center> 
    </div>
<br>
<script src="<?= base_url('assets/js/custom.js')?>"></script>
