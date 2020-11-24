<div class="row">
    <!--  form area -->
    <div class="col-sm-12">
        <div  class="panel panel-default thumbnail">
 
            <div class="panel-heading no-print">
                <div class="btn-group"> 
                    <a class="btn btn-primary" href="<?php echo base_url("clinical/sub_category") ?>"> <i class="fa fa-list"></i>  <?php echo display('sub_category') ?> </a>  
                    <a class="btn btn-success" href="<?php echo base_url("clinical/category/create") ?>"> <i class="fa fa-plus"></i>  <?php echo display('add_category') ?> </a>
                </div>
            </div> 

            <div class="panel-body">
                <div class="row">
                    <div class="col-md-12 col-sm-12 table-responsive">
                        <?php echo form_open('clinical/sub_category/create') ?> 

                         <div class="form-group row">
                            <label for="name" class="col-xs-2 col-form-label"><?php echo display('category_name')?> <i class="text-danger">*</i></label>
                            <div class="col-xs-9">
                                <?= form_dropdown('cat_id', $categories, $subcat->cat_id, 'class="form-control"')?>
                            </div>
                        </div>

                        <!-- sub category -->
                        <table class="table table-striped"> 
                            <thead>
                                <tr class="bg-primary">
                                    <th><?php echo display('sub_category_name') ?></th>
                                    <th><?php echo display('is_dropdown') ?></th>
                                    <th><?php echo display('sub_category_value') ?></th>
                                    <th width="16%"><?php echo display('add_or_remove') ?></th>  
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="text" name="sub_cat_name" autocomplete="off" class="medicine form-control" placeholder="<?php echo display('sub_category_name') ?>" value="<?= $subcat->sub_cat_name;?>" ></td> 
                                    <td>
                                       <div class="checkbox checkbox-success text-success">
                                           <input type="checkbox" class="form-control" name="is_dropdown" value="1" id="create">
                                           <label for="create"></label>
                                       </div>
                                    </td>  
                                    <td colspan="2">
                                        <table width="100%" style="margin-top: -5px;">
                                            <tbody id="medicine">
                                                <tr>
                                                    <td><input type="text" name="sub_cat_value[]" autocomplete="off" class="medicine form-control" placeholder="<?php echo display('sub_category_value') ?>" ></td> 
                                                    <td width="30%">
                                                      <div class="btn btn-group">
                                                        <button type="button" class="btn btn-sm btn-primary MedAddBtn"><?php echo display('add') ?></button>
                                                        <button type="button" class="btn btn-sm btn-danger MedRemoveBtn"><?php echo display('remove') ?></button>
                                                        </div>
                                                    </td>   
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>   
                                </tr>  
                            </tbody> 
                        </table> 

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

<script type="text/javascript">
$(document).ready(function() {   

    //#------------------------------------
    //   STARTS OF MEDICINE 
    //#------------------------------------    
    //add row
    $('body').on('click','.MedAddBtn' ,function() {
        var itemData = $(this).parent().parent().parent(); 
        $('#medicine').append("<tr>"+itemData.html()+"</tr>");
        $('#medicine tr:last-child').find(':input').val('');
    });
    //remove row
    $('body').on('click','.MedRemoveBtn' ,function() {
        $(this).parent().parent().parent().remove();
    });

    //#------------------------------------
    //   STARTS OF DIAGNOSIS 
    //#------------------------------------    
    //add row
    $('body').on('click','.DiaAddBtn' ,function() {
        var itemData = $(this).parent().parent().parent(); 
        $('#diagnosis').append("<tr>"+itemData.html()+"</tr>"); 
        $('#diagnosis tr:last-child').find(':input').val('');
    });
    //remove row
    $('body').on('click','.DiaRemoveBtn' ,function() {
        $(this).parent().parent().parent().remove();
    });
});
</script>