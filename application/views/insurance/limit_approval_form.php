<div class="row">
    <!--  form area -->
    <div class="col-sm-12">
        <div  class="panel panel-default thumbnail">
 
        <?php
        if($this->permission->method('limit_approval_list','read')->access() || $this->permission->method('limit_approval_list','update')->access() || $this->permission->method('limit_approval_list','delete')->access()){
        ?>
            <div class="panel-heading no-print row">
                <div class="btn-group col-xs-4"> 
                    <a class="btn btn-primary" href="<?php echo base_url("insurance/limit_approval/index") ?>"> <i class="fa fa-list"></i>  <?php echo display('limit_approval_list') ?> </a>  
                </div>
                <h2 class="col-xs-8 text-success"><?php echo display('insurance_limit_approval') ?></h2>
            </div> 
        <?php } ?>


        <?php
        if($this->permission->method('add_limit_approval','create')->access()){
        ?>
            <div class="panel-body panel-form">
                <div class="row">
                    <div class="col-md-9 col-sm-12">
                        <?php echo form_open_multipart('insurance/limit_approval/form') ?>
                            <div class="form-group row">
                                <label for="patient_id" class="col-xs-3 col-form-label"><?php echo display('patient_id') ?> <i class="text-danger"> *</i></label>
                                <div class="col-xs-9">
                                    <input name="patient_id" type="text" class="form-control" id="patient_id" placeholder="<?php echo display('patient_id') ?>" value="<?php echo $approval->patient_id ?>" autocomplete="off">
                                <span></span>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="room_no" class="col-xs-3 col-form-label"><?php echo display('room_no') ?> <i class="text-danger"> </i></label>
                                <div class="col-xs-9">
                                    <input name="room_no" type="text" class="form-control" id="room_no" placeholder="<?php echo display('room_no') ?>" value="<?php echo $approval->room_no ?>" >
                                </div>
                            </div>

 
                            <div class="form-group row">
                                <label for="disease_details" class="col-xs-3 col-form-label"><?php echo display('disease_details') ?></label>
                                <div class="col-xs-9" id="disease_details">
                                    <div class="row" style="margin-bottom:10px">
                                        <div class="col-xs-4">
                                            <input name="disease_name[]" type="text" class="form-control"  placeholder="<?php echo display('disease_name') ?>" value="" >
                                        </div>
                                        <div class="col-xs-4">
                                            <textarea rows="1" name="disease_details[]" class="form-control"  placeholder="<?php echo display('disease_details') ?>"></textarea>
                                        </div>
                                        <div class="col-xs-4">
                                            <div class="btn-group">
                                                <button type="button" class="btn  btn-info add-disease">+</button>
                                                <button type="button" class="btn  btn-danger remove-disease">-</button>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="consultant_id" class="col-xs-3 col-form-label"><?php echo display('consultant_name') ?> <i class="text-danger"> *</i></label>
                                <div class="col-xs-9">
                                    <?php echo form_dropdown('consultant_id', $consultant_list, $approval->consultant_id, array('id'=>'consultant_id', 'class'=>'form-control')) ?>
                                </div>
                            </div>
 
                            <div class="form-group row">
                                <label for="policy_name" class="col-xs-3 col-form-label"><?php echo display('policy_name') ?></label>
                                <div class="col-xs-9">
                                    <input name="policy_name" type="text" class="form-control" id="policy_name" placeholder="<?php echo display('policy_name') ?>" value="<?php echo $approval->policy_name ?>" >
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="policy_no" class="col-xs-3 col-form-label"><?php echo display('policy_no') ?></label>
                                <div class="col-xs-9">
                                    <input name="policy_no" type="text" class="form-control" id="policy_no" placeholder="<?php echo display('policy_no') ?>" value="<?php echo $approval->policy_no ?>" >
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="policy_holder_name" class="col-xs-3 col-form-label"><?php echo display('policy_holder_name') ?></label>
                                <div class="col-xs-9">
                                    <input name="policy_holder_name" type="text" class="form-control" id="policy_holder_name" placeholder="<?php echo display('policy_holder_name') ?>" value="<?php echo $approval->policy_holder_name ?>" >
                                </div>
                            </div>
 
                            <div class="form-group row">
                                <label for="insurance_id" class="col-xs-3 col-form-label"><?php echo display('insurance_name') ?> <i class="text-danger"> *</i></label>
                                <div class="col-xs-9">
                                    <?php echo form_dropdown('insurance_id', $insurance_list, $approval->insurance_id, array('id'=>'insurance_id', 'class'=>'form-control')) ?>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="approval_breakup" class="col-xs-3 col-form-label"><?php echo display('approval_breakup') ?></label>
                                <div class="col-xs-9" id="approval_breakup">
                                    <div class="row" style="margin-bottom:10px">
                                        <div class="col-xs-4">
                                            <input name="breakup_name[]" type="text" class="form-control"  placeholder="<?php echo display('disease_name') ?>" value="" >
                                        </div>
                                        <div class="col-xs-4">
                                            <input name="breakup_charge[]" type="text" class="form-control"  placeholder="<?php echo display('disease_charge') ?>" value="" >
                                        </div>
                                        <div class="col-xs-4">
                                            <div class="btn-group">
                                                <button type="button" class="btn  btn-info add-breakup">+</button>
                                                <button type="button" class="btn  btn-danger remove-breakup">-</button>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                            </div> 
  
                            <div class="form-group row">
                                <label for="total" class="col-xs-3 col-form-label"><?php echo display('total') ?></label>
                                <div class="col-xs-9">
                                    <input name="total" type="text" class="form-control" id="total" placeholder="<?php echo display('total') ?>" value="<?php echo $approval->total ?>" >
                                </div>
                            </div> 
 
                            <div class="form-group row">
                                <label class="col-sm-3"><?php echo display('status') ?> <i class="text-danger">*</i></label>
                                <div class="col-xs-9">
                                    <div class="form-check">
                                        <label class="radio-inline">
                                        <input type="radio" name="status" value="1" <?php echo  set_radio('status', '1', TRUE); ?> ><?php echo display('active') ?>
                                        </label>
                                        <label class="radio-inline">
                                        <input type="radio" name="status" value="0" <?php echo  set_radio('status', '0'); ?> ><?php echo display('inactive') ?>
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
$(document).ready(function() 
{

    var disease_details = $("#disease_details").html(); 
    $('body').on('click', '.add-disease', function() {
        $("#disease_details").append(disease_details);
    });
    $('body').on('click', '.remove-disease', function() {
       $(this).parent().parent().parent().remove();
    });


    //breakup
    var approval_breakup = $("#approval_breakup").html(); 
    $('body').on('click', '.add-breakup', function() {
        $("#approval_breakup").append(approval_breakup);
    });
    $('body').on('click', '.remove-breakup', function() {
       $(this).parent().parent().parent().remove();
    });

    //check patient id
    $('#patient_id').keyup(function(){
        var pid = $(this);

        $.ajax({
            url  : '<?php echo base_url("appointment/check_patient") ?>',
            type : 'post',
            dataType : 'JSON',
            data : {
                '<?php echo $this->security->get_csrf_token_name() ?>' : '<?php echo $this->security->get_csrf_hash() ?>',
                patient_id : pid.val()
            },
            success : function(data) 
            {
                if (data.status == true) {
                    pid.next().text(data.message).addClass('text-success').removeClass('text-danger');
                } else if (data.status == false) {
                    pid.next().text(data.message).addClass('text-danger').removeClass('text-success');
                } else {
                    pid.next().text(data.message).addClass('text-danger').removeClass('text-success');
                }
            }, 
            error : function()
            {
                alert('failed');
            }
        });
    }); 
});
</script>