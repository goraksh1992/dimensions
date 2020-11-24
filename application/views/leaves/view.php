<div class="row">
   <?php
     if($this->permission->method('leaves','read')->access()){
    ?>
    <div class="col-sm-12" id="PrintMe">
        <div  class="panel panel-info"> 
            <div class="panel-heading">
                <div class="row">
                    <div class="col-md-12 pT10">
                        <?php //echo date('Y-m-d h:i:s');
                            $back_url = '';
                            if(isset($_SERVER['HTTP_REFERER']))
                            {
                                $back_url = $_SERVER['HTTP_REFERER'];
                            }
                        ?>
                        <?php if(isset($back_url) && $back_url != '') : ?>
                            <div class="col-md-2 floatR">
                                <a href="<?php echo $back_url; ?>" class="btn btn-block btn-primary">Back</a>
                            </div>
                        <?php endif; ?>
                        <?php if(isset($edit) && $edit === true && isset($leave->status) && $leave->status == 1) : ?>
                            <div class="col-md-2 floatR">
                                <a href="<?php echo base_url('leaves/create/').$leave->leave_id; ?>" class="btn btn-block btn-primary">Edit</a>
                            </div>
                        <?php endif; ?>
                        <?php if(isset($edit) && $edit === true && isset($leave->status) && $leave->status == 1) : ?>
                            <div class="col-md-2 floatR">
                                <a href="<?php echo base_url('leaves/cancell/').$leave->leave_id; ?>" class="btn btn-block btn-primary btn-danger">Cancell</a>
                            </div>
                        <?php endif; ?>
                        <?php if(isset($approver) && $approver === true && isset($leave->status) && $leave->status == 1) : ?>
                            <div class="col-md-2 floatR">
                                <a href="<?php echo base_url('leaves/approve/').$leave->leave_id; ?>" class="btn btn-block btn-primary">Approve</a>
                            </div>
                        <?php endif; ?>
                        <?php if(isset($approver) && $approver === true && isset($leave->status) && $leave->status == 1) : ?>
                            <div class="col-md-2 floatR">
                                <a data-toggle="modal" data-target="#rejectLeave" class="btn btn-block btn-primary btn-danger">Reject</a>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
            <div class="panel-body">  
                <div class="row">
                    <div class="col-sm-12" align="center">  
                        <h1><?php echo display('leave_information') ?></h1>
                    <br>
                    </div>
                    <div class="col-sm-9"> 
                        <dl class="dl-horizontal">
                            <dt><?php echo display('full_name') ?></dt>
                            <dd><?php echo "$leave->firstname $leave->lastname " ?></dd>
                            <dt><?php echo display('leave_type') ?></dt>
                            <dd><?php echo get_leave_type($leave->leave_type); ?></dd> 
                            <dt><?php echo display('from_date') ?></dt>
                            <dd><?php echo print_date($leave, 'from_date'); ?></dd> 
                            <dt><?php echo display('to_date') ?></dt>
                            <dd><?php echo print_date($leave, 'to_date'); ?></dd> 
                            <dt><?php echo "Total Days" ?></dt>
                            <dd><?php echo (int) (date_diff(date_create($leave->from_date), date_create($leave->to_date))->d+1); ?> Days</dd> 
                            <dt><?php echo display('applied_date') ?></dt>
                            <dd><?php echo print_date($leave, 'created_date'); ?></dd> 
                            <dt><?php echo display('leave_description') ?></dt>
                            <dd><?php echo print_value($leave, 'leave_description'); ?></dd> 
                            <dt><?php echo display('leave_status') ?></dt>
                            <dd><?php echo get_leave_status($leave->status); ?></dd> 
                        </dl> 
                    </div>
                </div>  
            </div> 
            <?php if(isset($leave->manager_description) && $leave->manager_description != '') : ?>
                <div class="panel-body">
                    <div class="text-center">
                        <div class="col-sm-12" align="center">  
                            <h1><?php echo "Manager Comments"; ?></h1>
                            <br>
                        </div>
                        <div class="col-sm-6"> 
                            <dl class="dl-horizontal">
                                <dt><?php echo "Manager Comments:" ?></dt>
                                <dd><?php echo print_value($leave, 'manager_description'); ?></dd>
                            </dl> 
                        </div>
                    </div>
                </div>
            <?php endif; ?>
            <div class="panel-footer">
                <div class="text-center">
                    <strong><?php echo $this->session->userdata('title') ?></strong>
                    <p class="text-center"><?php echo $this->session->userdata('address') ?></p>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-12">
         <div class="btn-group">
            <button type="button" onclick="printContent('PrintMe')" class="btn btn-danger" ><i class="fa fa-print"></i></button> 
        </div>
    </div>

<?php 
}
 else{
 ?>
    <div class="col-sm-12">
       <div class="panel panel-bd lobidrag">
        <div class="panel-heading">
          <div class="panel-title">
            <h4><?php echo display('you_do_not_have_permission_to_access_please_contact_with_administrator');?>.</h4>
           </div>
           </div>
         </div>
        </div>
 <?php
 }
 ?>
</div>
<!-- edit leave modal -->
<div class="modal fade" id="rejectLeave" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Reject Leave</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <?php echo form_open('leaves/reject','class="form-inner" id="appointmentForm"') ?> 
      <div class="modal-body">
            <input type="hidden" name="leave_id" id="leave_id" value="<?php echo print_value($leave, 'leave_id', true);?>"/>
            <input type="hidden" name="status" id="status" class="status" value="3" />
            <div class="form-group row">
                <label for="problem" class="col-xs-3 col-form-label"><?php echo "Comment" ?></label>
                <div class="col-xs-9">
                    <textarea name="manager_description" class="form-control" placeholder="<?php echo display('manager_description') ?>" maxlength="140" rows="7"></textarea>
                </div>
            </div>
      </div>
      <div class="modal-footer">
        <div class="form-group row">
            <div class="col-sm-offset-3 col-sm-6">
                <div class="ui buttons">
                    <button type="reset" class="ui button"><?php echo "Cancell" ?></button>
                    <div class="or"></div>
                    <button class="ui positive button book-appointment" type="submit"><?php echo "Reject" ?></button>
                </div>
            </div>
        </div>
      </div>
      <?php echo form_close() ?>
    </div>
  </div>
</div>
<!-- edit leave modal -->
