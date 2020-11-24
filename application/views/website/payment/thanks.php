<section>
    <div class="container">
        <!--Grid row-->
        <div class="row">
            <div class="col-md-12" style="margin-bottom:10px; margin-top:20px;min-height:300px">
                <h4 class="mb-3"><?php echo display('thank_you'); ?></h4>
                <?php $redirect_url = (isset($redirect_url)) ? $redirect_url : ''; ?>
                <?php if (isset($message) && $message != '') { ?>
                    <p><?php echo $message; ?>.</p>
                    <!-- <div class="alert alert-success">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                        <strong><?php echo $message; ?>. </strong>
                    </div> -->
                <?php } ?>
                <?php if(isset($redirect_url)) : ?>
                    <div class="row col-md-3 text-c">                        
                        <a href="<?php echo base_url($redirect_url);?>" class="btn btn-block btn-primary">View Appointment Details</a>
                    </div>
                <?php endif; ?>
            </div>
        </div>
         <!--Grid row-->
    </div>
</section>