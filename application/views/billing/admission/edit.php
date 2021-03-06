<div class="row">
    <!--  form area -->
    <div class="col-sm-12">
        <div  class="panel panel-default thumbnail">
 
            <div class="panel-heading no-print">
                <div class="btn-group"> 
                    <a class="btn btn-primary" href="<?php echo base_url("billing/admission/index") ?>"> <i class="fa fa-list"></i>  <?php echo display('admission_list') ?> </a>  
                </div>
            </div> 

            <div class="panel-body panel-form">
                <div class="row">
                    <div class="col-sm-12">

                        <?php echo form_open('billing/admission/edit/'.$admission->admission_id, 'class="form-inner"') ?>
                        <?php echo form_hidden('admission_id', $admission->admission_id) ?>

                            <div class="form-group row">
                                <label for="patient_id" class="col-sm-3 col-form-label"><?php echo display('patient_id') ?> <i class="text-danger">*</i></label>
                                <div class="col-sm-9">
                                    <input name="patient_id"  type="text" class="form-control" id="patient_id" placeholder="<?php echo display('patient_id') ?>" value="<?php echo $admission->patient_id ?>">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="doctor_id" class="col-sm-3 col-form-label"><?php echo display('doctor_name') ?> <i class="text-danger">*</i></label>
                                <div class="col-sm-9">
                                    <?php echo form_dropdown('doctor_id', $doctor_list, $admission->doctor_id, array('class'=>'form-control', 'id'=>'doctor_id')) ?> 
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="room_id" class="col-sm-3 col-form-label"><?php echo display('room_name') ?> <i class="text-danger">*</i></label>
                                <div class="col-sm-9">
                                    <?php echo form_dropdown('room_id', $room_list, '', array('class'=>'form-control', 'id'=>'room_id')) ?> 
                                    <span class="room_error"></span>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="bed_id" class="col-xs-3 col-form-label"><?php echo display('bed_number') ?> <i class="text-danger">*</i></label>
                                <div class="col-xs-9">
                                     <?php echo form_dropdown('bed_id','','','class="form-control dateChange" id="bed_id"') ?>
                                     <div id="bed_available"></div>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="admission_date" class="col-sm-3 col-form-label"><?php echo display('admission_date') ?> <i class="text-danger">*</i></label>
                                <div class="col-sm-9">
                                    <input name="admission_date"  type="text" class="form-control datepicker" id="admission_date" placeholder="<?php echo display('admission_date') ?>" value="<?php echo $admission->admission_date ?>">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="discharge_date" class="col-sm-3 col-form-label"><?php echo display('discharge_date') ?></label>
                                <div class="col-sm-9">
                                    <input name="discharge_date"  type="text" class="form-control datepicker" id="discharge_date" placeholder="<?php echo display('discharge_date') ?>" value="<?php echo $admission->discharge_date ?>">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="package_id" class="col-sm-3 col-form-label"><?php echo display('package_name') ?> </label>
                                <div class="col-sm-9">
                                    <?php echo form_dropdown('package_id', $package_list, $admission->package_id, array('class'=>'form-control', 'id'=>'doctor_id')) ?> 
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="insurance_id" class="col-sm-3 col-form-label"><?php echo display('insurance_name') ?></label>
                                <div class="col-sm-9">
                                    <?php echo form_dropdown('insurance_id', $insurance_list, $admission->insurance_id, array('class'=>'form-control', 'id'=>'doctor_id')) ?> 
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="policy_no" class="col-sm-3 col-form-label"><?php echo display('policy_no') ?> </label>
                                <div class="col-sm-9">
                                    <input name="policy_no"  type="text" class="form-control" id="policy_no" placeholder="<?php echo display('policy_no') ?>" value="<?php echo $admission->policy_no ?>">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="agent_name" class="col-sm-3 col-form-label"><?php echo display('agent_name') ?></label>
                                <div class="col-sm-9">
                                    <input name="agent_name"  type="text" class="form-control" id="agent_name" placeholder="<?php echo display('agent_name') ?>" value="<?php echo $admission->agent_name ?>">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="guardian_name" class="col-sm-3 col-form-label"><?php echo display('guardian_name') ?> </label>
                                <div class="col-sm-9">
                                    <input name="guardian_name"  type="text" class="form-control" id="guardian_name" placeholder="<?php echo display('guardian_name') ?>" value="<?php echo $admission->guardian_name ?>">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="guardian_relation" class="col-sm-3 col-form-label"><?php echo display('guardian_relation') ?> </label>
                                <div class="col-sm-9">
                                    <input name="guardian_relation"  type="text" class="form-control" id="guardian_relation" placeholder="<?php echo display('guardian_relation') ?>" value="<?php echo $admission->guardian_relation ?>">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="guardian_contact" class="col-sm-3 col-form-label"><?php echo display('guardian_contact') ?> </label>
                                <div class="col-sm-9">
                                    <input name="guardian_contact"  type="text" class="form-control" id="guardian_contact" placeholder="<?php echo display('guardian_contact') ?>" value="<?php echo $admission->guardian_contact ?>">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="guardian_address" class="col-sm-3 col-form-label"><?php echo display('guardian_address') ?></label>
                                <div class="col-sm-9">
                                    <textarea name="guardian_address" guardian_address="guardian_address"  type="text" class="form-control" id="guardian_address" placeholder="<?php echo display('guardian_address') ?>"><?php echo $admission->guardian_address ?></textarea>
                                </div>
                            </div>

                            <!--Radio-->
                            <div class="form-group row">
                                <label class="col-sm-4"><?php echo display('status') ?></label>
                                <div class="col-sm-4"> 
                                    <div class="form-check">
                                        <label class="radio-inline"><input type="radio" name="status" value="1" checked><?php echo display('active') ?></label>
                                        <label class="radio-inline"><input type="radio" name="status" value="0"><?php echo display('inactive') ?></label>
                                    </div>
                                </div> 
                                <div class="col-sm-4">
                                    <div class="ui buttons">
                                        <button type="reset" class="ui button"><?php echo display('reset') ?></button>
                                        <div class="or"></div>
                                        <button class="ui positive button"><?php echo display('update') ?></button>
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

    //check assign_date
    var assign_date    = $('#admission_date');
    var discharge_date = $('#discharge_date');
    var dateChange     = $('.dateChange');
    var bed_id         = $("#bed_id"); 
    var room_id         = $("#room_id"); 
   
    dateChange.change(function(){ 
        $.ajax({
            url  : '<?= base_url('bed_manager/bed_assign/check_bed/') ?>',
            type : 'POST',
            dataType : 'JSON',
            data : {
                '<?= $this->security->get_csrf_token_name(); ?>' : '<?= $this->security->get_csrf_hash(); ?>',
                assign_date : assign_date.val(), 
                discharge_date : discharge_date.val(),
                bed_id : bed_id.val(), 
                room_id : room_id.val()  
            },
            success : function(data) 
            {
                discharge_date.next().html(data.message);
            }, 
            error : function()
            {
                alert('failed');
            }
        });
    });

    // show free bed 
    $("#room_id").change(function(){
        var output = $('.room_error'); 
        var bed_list = $('#bed_id');
        var bed_available = $('#bed_available');

        $.ajax({
            url  : '<?= base_url('bed_manager/bed/bed_by_room/') ?>',
            type : 'post',
            dataType : 'JSON',
            data : {
                '<?= $this->security->get_csrf_token_name(); ?>' : '<?= $this->security->get_csrf_hash(); ?>',
                room_id : $(this).val()
            },
            success : function(data) 
            {
                if (data.status == true) {
                    bed_list.html(data.message);
                    bed_available.html(data.bed_available);
                    output.html('');
                } else if (data.status == false) {
                    bed_list.html('');
                    output.html(data.message).addClass('text-danger').removeClass('text-success');
                } else {
                    bed_list.html('');
                    output.html(data.message).addClass('text-danger').removeClass('text-success');
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
