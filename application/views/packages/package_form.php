<div class="row">
    <div class="col-sm-12">
        <div  class="panel panel-default thumbnail">
            <?php
            if($this->permission->method('packages','read')->access()  || $this->permission->method('main_package','update')->access() || $this->permission->method('main_package','delete')->access()){
            ?>
            <div class="panel-heading no-print">
                <div class="btn-group"> 
                    <a class="btn btn-primary" href="<?php echo base_url("packages") ?>"> <i class="fa fa-list"></i>  <?php echo display('packages') ?> </a>  
                </div>
            </div> 
            <?php } ?>


            <?php
            if($this->permission->method('add_package','create')->access()){
            ?>
            <div class="panel-body panel-form">
                <div class="row">
                    <div class="col-md-9 col-sm-12">

                        <?php echo form_open_multipart('packages/create','class="form-inner"') ?> 

                            <?php echo form_hidden('package_id',$package->package_id) ?>
                            <div class="form-group row">
                                <label class="col-xs-3 col-form-label"> <?php echo "Category"?><i class="text-danger">*</i></label>
                                <div class="col-xs-9">
                                    <?php echo form_dropdown('package_category_id',$package_category,$package->package_category_id,'class="form-control basic-single" required id="id"') ?>
                                    <span class="category_id_error"></span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="package_title" class="col-xs-3 col-form-label"><?php echo display('package_title') ?> <i class="text-danger">*</i></label>
                                <div class="col-xs-9">
                                    <input name="package_title"  type="text" class="form-control" id="package_title" placeholder="<?php echo display('package_title') ?>" value="<?php echo $package->package_title ?>">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="package_code" class="col-xs-3 col-form-label"><?php echo display('package_code') ?> <i class="text-danger">*</i></label>
                                <div class="col-xs-9">
                                    <input name="package_code"  type="text" class="form-control" id="package_code" placeholder="<?php echo display('package_code') ?>" value="<?php echo $package->package_code ?>">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-xs-3 col-form-label"> <?php echo "Package Duration"; ?><i class="text-danger">*</i></label>
                                <div class="col-xs-9">
                                    <?php echo form_dropdown('package_duration',$package_durations,$package->package_duration,'class="form-control basic-single" required id="id"') ?>
                                    <span class="package_duration_error"></span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="package_price" class="col-xs-3 col-form-label"><?php echo display('package_price') ?> <i class="text-danger">*</i></label>
                                <div class="col-xs-9">
                                    <input name="package_price"  type="text" class="form-control" id="package_price" placeholder="<?php echo display('package_price') ?>" value="<?php echo $package->package_price ?>">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="package_special_price" class="col-xs-3 col-form-label"><?php echo display('package_special_price') ?> <i class="text-danger">*</i></label>
                                <div class="col-xs-9">
                                    <input name="package_special_price"  type="text" class="form-control" id="package_special_price" placeholder="<?php echo display('package_special_price') ?>" value="<?php echo $package->package_special_price ?>">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="package_slots" class="col-xs-3 col-form-label"><?php echo display('package_slots') ?> <i class="text-danger">*</i></label>
                                <div class="col-xs-9">
                                    <input name="package_slots"  type="text" class="form-control" id="package_slots" placeholder="<?php echo display('package_slots') ?>" value="<?php echo $package->package_slots ?>">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="package_short_description" class="col-xs-3 col-form-label"><?php echo display('package_short_description') ?></label>
                                <div class="col-xs-9">
                                    <textarea name="package_short_description" class="form-control"  placeholder="<?php echo display('package_short_description') ?>" rows="7"><?php echo $package->package_short_description ?></textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="package_description" class="col-xs-3 col-form-label"><?php echo display('package_description') ?></label>
                                <div class="col-xs-9">
                                    <textarea name="package_description" class="form-control"  placeholder="<?php echo display('package_description') ?>" rows="7"><?php echo $package->package_description ?></textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="package_sort_order" class="col-xs-3 col-form-label"><?php echo display('package_sort_order') ?> <i class="text-danger">*</i></label>
                                <div class="col-xs-9">
                                    <input name="package_sort_order"  type="text" class="form-control" id="package_sort_order" placeholder="<?php echo display('package_sort_order') ?>" value="<?php echo $package->package_sort_order ?>">
                                </div>
                            </div>
                            <!-- <div class="form-group row">
                                <label for="payment_code" class="col-xs-3 col-form-label"><?php echo display('payment_code') ?> <i class="text-danger">*</i></label>
                                <div class="col-xs-9">
                                    <input name="payment_code"  type="text" class="form-control" id="payment_code" placeholder="<?php echo display('payment_code') ?>" value="<?php echo $package->payment_code ?>">
                                </div>
                            </div> -->
                            <!--Radio-->
                            <div class="form-group row">
                                <label class="col-sm-3"><?php echo display('package_status') ?></label>
                                <div class="col-xs-9"> 
                                    <div class="form-check">
                                        <label class="radio-inline"><input type="radio" name="package_status" value="1" checked><?php echo display('active') ?></label>
                                        <label class="radio-inline"><input type="radio" name="package_status" value="2"><?php echo display('inactive') ?></label>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <div class="col-sm-offset-3 col-sm-6">
                                    <div class="ui buttons">
                                        <button type="reset" class="ui button"><?php echo display('reset') ?></button>
                                        <div class="or"></div>
                                        <button class="ui positive button"><?php echo display('save') ?></button>
                                    </div>
                                </div>
                            </div>

                        <?php echo form_close() ?>

                    </div>
                </div>
            </div>
            <?php 
            }
            else{
                ?>
                <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-bd lobidrag">
                                <div class="panel-heading">
                                    <div class="panel-title">
                                      <h4><?php echo display('you_do_not_have_permission_to_access_please_contact_with_administrator');?>.</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php
            }
             ?>
            
        </div>
    </div>

</div>