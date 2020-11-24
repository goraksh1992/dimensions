<section>
    <div class="container">
        <!--Grid row-->
        <div class="row">
            <div class="col-md-12" style="margin-bottom:10px; margin-top:20px; min-height:300px;">
                <h4 class="mb-3"><?php echo display('thank_you'); ?></h4>
                <?php if (isset($message) && $message != '') { ?>
                    <p><?php echo $message; ?>.</p>
                    <a href="<?php echo base_url('dashboard_patient/packages/orders/index'); ?>" >Go to My Orders.</a>
                <?php } ?>
                <?php if ($this->session->flashdata('message')) { ?>

                <div class="alert alert-success">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                    <strong><?php echo $this->session->flashdata('message'); ?></strong>
                </div>
                <?php } ?>
                <?php if ($this->session->flashdata('exception')) { ?>

                <div class="alert alert-danger">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                    <strong><?php echo $this->session->flashdata('exception'); ?></strong>
                </div>

                <?php } ?>
                <?php if (isset($exception) && $exception != '') { ?>

                <div class="alert alert-danger">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                    <strong><?php echo $exception; ?></strong>
                </div>

                <?php } ?>
            </div>
        </div>
         <!--Grid row-->
    </div>
</section>