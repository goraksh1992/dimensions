<div class="row">
    <!--  form area -->
    <div class="col-sm-12">
        <div  class="panel panel-default thumbnail">
 
            <div class="panel-heading no-print">
                <div class="btn-group"> 
                    <a class="btn btn-primary" href="<?php echo base_url("clinical/category") ?>"> <i class="fa fa-list"></i>  <?php echo display('category') ?> </a> 
                     <a class="btn btn-success" href="<?php echo base_url("clinical/sub_category/create") ?>"> <i class="fa fa-plus"></i>  <?php echo display('sub_category') ?> </a>  
                </div>
            </div> 

            <div class="panel-body">
                <div class="row">
                    <div class="col-md-12 col-sm-12 table-responsive">
                        <?php echo form_open('clinical/category/edit/'.$category->id) ?> 
                            <?= form_hidden('id', $category->id)?>
                        <div class="form-group row">
                            <label for="name" class="col-xs-3 col-form-label"><?php echo display('category_name')?> <i class="text-danger">*</i></label>
                            <div class="col-xs-6">
                                <input name="name" value="<?= $category->cat_name;?>"  type="text" class="form-control" id="name" placeholder="<?php echo display('category_name')?>" autocomplete="off">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="name" class="col-xs-3 col-form-label"><?php echo display('position')?> <i class="text-danger">*</i></label>
                            <div class="col-xs-6">
                                <input name="position" value="<?= $category->position;?>"  type="number" class="form-control" id="position" placeholder="<?php echo display('position')?>" autocomplete="off">
                            </div>
                        </div>

                        <!--Radio-->
                        <div class="form-group row">
                            <label class="col-sm-3"><?php echo display('status') ?></label>
                            <div class="col-xs-9"> 
                                <div class="form-check">
                                    <label class="radio-inline">
                            <input type="radio" name="status" value="1" <?php if($category->status==1){echo 'checked';}?>><?php echo display('active') ?>
                                    </label>
                                    <label class="radio-inline">
                             <input type="radio" name="status" value="0" <?php if($category->status==0){echo 'checked';}?> ><?php echo display('inactive') ?>
                                    </label>
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
        </div>
    </div>
</div>