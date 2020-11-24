<?php
if($this->permission->method('clinical','read')->access() ){
?>
<div class="row">
    <div class="col-sm-12">
        <div  class="panel panel-default thumbnail">
             <div class="panel-heading no-print">
                <div class="btn-group"> 
                    <?php
                        if($this->permission->method('clinical','read')->access()){
                        ?>
                        <a class="btn btn-primary" href="<?php echo base_url("clinical/sub_category") ?>"> <i class="fa fa-list"></i>  <?php echo display('sub_category') ?> </a> 
                        <a class="btn btn-success" href="<?php echo base_url("clinical/category/create") ?>"> <i class="fa fa-plus"></i>  <?php echo display('add_category') ?> </a>  
                    <?php }?>
                </div>
            </div> 
            <div class="panel-body">
                <table width="100%" class="datatable table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th><?php echo display('serial') ?></th>
                            <th><?php echo display('category_name') ?></th>
                            <th><?php echo display('position') ?></th>
                            <th><?php echo display('status') ?></th>
                            <?php
                            if($this->permission->method('clinical','read')->access() ){
                            ?>
                            <th width="80"><?php echo display('action') ?></th>
                            <?php } ?>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                        if (!empty($categories)) {
                            $sl = 1;
                            foreach ($categories as $value) {
                        ?>
                            <tr>
                                <td><?php echo $sl; ?></td>
                                <td><?php echo $value->cat_name; ?></td>
                                 <td><?php echo $value->position; ?></td>
                                <td><?php if($value->status==1){echo display('active');}else{echo display('inactive');}; ?></td>
                                 <?php
                                 if($this->permission->method('clinical','read')->access() ){
                                 ?>
                                <td class="center">
                                    <a href="<?php echo base_url("clinical/category/edit/$value->id") ?>" class="btn btn-xs btn-primary"><i class="fa fa-edit"></i></a> 
                                    
                                    <a href="<?php echo base_url("clinical/category/delete/$value->id") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-xs btn-danger"><i class="fa fa-trash"></i></a> 
                                </td>
                                <?php } ?>
                            </tr>
                        <?php 
                            $sl++;

                            }
                        } 
                        ?> 
                    </tbody>
                </table>  <!-- /.table-responsive -->
            </div>
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
