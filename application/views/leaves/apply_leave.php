<div class="row">
    <div class="col-sm-12">
        <div  class="panel panel-default thumbnail">
            <?php
            if($this->permission->method('leaves','read')->access()  || $this->permission->method('leaves','update')->access() || $this->permission->method('leaves','delete')->access()){
            ?>
            <div class="panel-heading no-print">
                <div class="btn-group"> 
                    <a class="btn btn-primary" href="<?php echo base_url("leaves") ?>"> <i class="fa fa-list"></i>  <?php echo display('leaves') ?> </a>  
                </div>
            </div> 
            <?php } ?>


            <?php
            if($this->permission->method('leaves','create')->access()){
            ?>
            <div class="panel-body panel-form">
                <div class="row">
                <div class="col-md-9 col-sm-12">

                    <?php echo form_open_multipart('leaves/create','class="form-inner"') ?> 
                        <?php $id = (isset($leave->leave_id) ? $leave->leave_id : ''); ?>
                        <?php $operation = (isset($leave->leave_id) ? 'update' : 'add'); ?>
                        <?php $user_id = (isset($leave->user_id) ? $leave->user_id : $this->session->userdata('user_id')); ?>
                        <?php $user_name= (isset($leave->firstname) ? $leave->firstname." ".$leave->lastname : $this->session->userdata('fullname')); ?>
                        <?php $from_date = (isset($leave->from_date) ? $leave->from_date : ''); ?>
                        <?php $to_date = (isset($leave->to_date) ? $leave->to_date : ''); ?>
                        <?php $leave_type = (isset($leave->leave_type) ? $leave->leave_type : 0); ?>
                        <?php $status = (isset($leave->status) ? $leave->status : '1'); ?>
                        <?php echo form_hidden('leave_id',$id) ?>
                        <?php echo form_hidden('user_id',$user_id); ?>
                        <?php echo form_hidden('status',$status); ?>
                        <?php echo form_hidden('operation',$operation); ?>

                        <div class="form-group row">
                            <label for="name" class="col-xs-3 col-form-label"><?php echo display('first_name') ?> </label>
                            <div class="col-xs-9">
                                <input name="name" readonly="true" type="text" class="form-control" id="name" value="<?php echo $user_name; ?>" placeholder="<?php echo display('full_name') ?>">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="leave_type" class="col-xs-3 col-form-label"><?php echo display('leave_type') ?><i class="text-danger">*</i></label>
                            <div class="col-xs-9"> 
                                <?php 
                                    $leaveTypes = get_leave_type_list();
                                    echo form_dropdown('leave_type',$leaveTypes,$leave_type,'class="form-control" id="leave_type"'); 
                                ?>

                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="from_date" class="col-xs-3 col-form-label"><?php echo display('from_date') ?> <i class="text-danger">*</i></label>
                            <div class="col-xs-9">
                                <input name="from_date" class="form-control datepicker1" type="text" placeholder="<?php echo display('from_date') ?>" id="from_date" value="<?php echo $from_date; ?>" autocomplete="off">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="to_date" class="col-xs-3 col-form-label"><?php echo display('to_date') ?> <i class="text-danger">*</i></label>
                            <div class="col-xs-9">
                                <input name="to_date" class="form-control datepicker1" type="text" placeholder="<?php echo display('to_date') ?>" id="to_date" value="<?php echo $to_date; ?>" autocomplete="off">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="leave_description" class="col-xs-3 col-form-label"><?php echo display('leave_description') ?></label>
                            <div class="col-xs-9">
                                <textarea name="leave_description" class="form-control"  placeholder="<?php echo display('leave_description') ?>" rows="7"><?php echo (isset($leave->leave_description)) ? $leave->leave_description : ''; ?></textarea>
                            </div>
                        </div>  
                        
                        <div class="form-group row">
                            <div class="col-sm-offset-3 col-sm-6">
                                <div class="ui buttons">
                                    <button type="reset" class="ui button"><?php echo display('reset') ?></button>
                                    <div class="or"></div>
                                    <button class="ui positive button" type="submit"><?php echo display('save') ?></button>
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
<script type="text/javascript">
    $(document).ready(function() {
        var nowDate = new Date();
        var today = new Date(nowDate.getFullYear(), nowDate.getMonth(), nowDate.getDate(), 0, 0, 0, 0);
        $(".datepicker1").datepicker({
            minDate: 0,
            dateFormat: "yy-mm-dd",
            changeMonth: true,
            changeYear: true,
            showButtonPanel: false,        
            todayHighlight: true,
            startDate: today, 
            //beforeShowDay: DisableDays 
        });
    });
</script>